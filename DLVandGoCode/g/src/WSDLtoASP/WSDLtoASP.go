package main

import (
	"fmt"
	"os"
	"encoding/xml"
	"io/ioutil"
	"strings"
	"strconv"
)

type atomService struct {
   RDec		[]element
   SDec		string
   Spec		spec
   Sign		sign
   FuncR	funcR
   NonFuncR	nonFuncR
}


type element struct {
    Name string
    Type string
}

type rdec struct {
    Elements []element
}


type spec struct {
   Guard 	 string
   Precondition	 string
   Postcondition string	
}


type sign struct {
   Type	string
   URL	string	
}

type funcR struct {
   Des		string
   Class	string
   Domain	string
   In		[]element
   Out		[]element
}

// ======================================================
type services struct {
   XMLName	xml.Name	`xml:"definitions"`
   Message	[]message	`xml:"message"`
   PortType	portType	`xml:"portType"`
   Service	[]service	`xml:"service"`
   NonFuncR     nonFuncR 	`xml:"QOS"`
}
// =====================================================

// --------------------service--------------------------
type service struct {
    XMLName	xml.Name	`xml:"service"`
    Name	string		`xml:"name,attr"`
    Port	port		`xml:"port"`
}

type port struct {
    Name	string		`xml:"name,attr"`
    Address	address		`xml:"address"`
}

type address struct {
    Location	string		`xml:"location,attr"`
}
// ------------------------------------------------------

// -----------------portType--------------------
type portType struct {
   XMLName	xml.Name	`xml:"portType"`
   Operation	[]operation	`xml:"operation"`
}

type operation struct {
   Name		string	`xml:"name,attr"`
   Input	input	`xml:"input"`
   Output	output	`xml:"output"`
}

type input struct {
   Message	string	`xml:"message,attr"`
}

type output struct {
   Message	string	`xml:"message,attr"`
}

// ----------------------------------------------


// ------------------message---------------------
type message struct {
   XMLName	xml.Name	`xml:"message"`
   Name		string		`xml:"name,attr"`
   Part		[]part		`xml:"part"`
}

type part struct {
   Name		string		`xml:"name,attr"`
   Type		string		`xml:"type,attr"`
}
// ----------------------------------------------

type nonFuncR struct {
   XMLName		xml.Name	`xml:"QOS"`
   ResponseTime		float64		`xml:"RT"`
   Availability		float64		`xml:"AV"`
   Throughtput		float64		`xml:"TH"`
   Reliability		float64		`xml:"RR"`
   Cost			float64		
   Rank			int
}

func WSDLtoASP(data []byte, filename string) string {
     
	//unmarshal data to v
        xmlform := services{}
	err := xml.Unmarshal(data, &xmlform)
        if err != nil {
  		fmt.Printf("error: %v\n", err)
		return ""
	}
	//fmt.Println("%v\n",v)
    
	//put messages into MAP struture
        
	newservices := make(map[string][]part)

        for _,v := range xmlform.Message {
             newservices[v.Name] = v.Part
	}

        var asp string
        oplen := len(xmlform.PortType.Operation) - 1

        url := xmlform.Service[0].Port.Address.Location
        qos := xmlform.NonFuncR
        //put operation to ASP form
	for i,v := range xmlform.PortType.Operation {
	     
	     //preprocess
	     in := v.Input.Message
             if strings.Contains(in, ":") {
                  in = strings.Split(in, ":")[1]
             }

             out := v.Output.Message
             if strings.Contains(out, ":") {
                  out = strings.Split(out, ":")[1]
             }

	     resultIn := ""
             spartIn := newservices[in]
 	     lensIn := len(spartIn) - 1
	     for i,v := range spartIn {
                  t := v.Type
             	  if strings.Contains(t, ":") {
                     t = strings.Split(t, ":")[1]
                  }
				  if strings.Contains(v.Name, ":") {
                     v.Name = strings.Split(v.Name, ":")[1]
                  }
                  resultIn = resultIn + "var(" + ProcessName(v.Name) + "," + ProcessName(t) + ")"
		  if i != lensIn {
                     resultIn = resultIn + ", "
		  }   
	     }

	     resultOut := ""
             spartOut := newservices[out]
 	     lensOut := len(spartOut) - 1
	     for i,v := range spartOut {
                  t := v.Type
             	  if strings.Contains(t, ":") {
                     t = strings.Split(t, ":")[1]
                  }
				  if strings.Contains(v.Name, ":") {
                     v.Name = strings.Split(v.Name, ":")[1]
                  }
                  resultOut = resultOut + "var(" + ProcessName(v.Name) + ","+ ProcessName(t) + ")"
		  if i != lensOut {
                     resultOut = resultOut + ", "
		  }   
	     }
             
             
	     resultInOut := ""
             if strings.EqualFold(resultIn, "") {
                 resultInOut = resultOut
             } else {
                  if strings.EqualFold(resultOut, "") {
                     resultInOut = resultIn
                  } else {
                     resultInOut = resultIn + "," + resultOut
                  }
             }
             asp = asp + `atomService(rdec({` + resultInOut + `}),sdec(` + ProcessName(v.Name) + `), sign(openservice, "` + 
                    url + `"), funcR({` + ProcessName(v.Name) +`},{` + ProcessName(filename) +`}, {mycloud},in({` + 
                    resultIn+ `}), out({` + resultOut + `})), nonFuncR("` + 
                    strconv.FormatFloat(qos.ResponseTime, 'f', 2, 64) + `","` + 
                    strconv.FormatFloat(qos.Availability, 'f', 2, 64) + `","` + 
                    strconv.FormatFloat(qos.Throughtput, 'f', 2, 64) + `","` + 
                    strconv.FormatFloat(qos.Reliability, 'f', 2, 64) + `",` +        
                    `"0", "0")).` 

              if i != oplen {
                    asp = asp + "\n"
              } 
	}
	return asp
} 

func ProcessName (name string) string {
   name = strings.ToLower(name)
   name = strings.Replace(name, "-", "", -1)
   name = strings.Replace(name, ".", "", -1)
   return name
}


func main() {
 
        result := ""
           fileinfo, err := ioutil.ReadDir(os.Args[1])
	   if err != nil {
		fmt.Printf("error: %v\n", err)
	   } else {
              for _,v := range fileinfo {
                   data,err := ioutil.ReadFile(os.Args[1] + v.Name())
	  	   if err != nil {
	 	      fmt.Printf("error: %v\n", err)
                   } else {
                       result = result + WSDLtoASP(data, strings.Split(v.Name(), ".")[0]) + "\n"
                   }
       
              }
           }
        /*    
	//read from file
 	//open file
	file, err := os.Open(os.Args[1])
	defer file.Close() 
	data, err := ioutil.ReadAll(file)
	if err != nil {
	 	fmt.Printf("error: %v\n", err)
        }else {
                result = result + WSDLtoASP(data) + "\n"
        }*/
	fmt.Printf(result)
}
