package main

import (
        "os"
	"log"
        "fmt"
)

func main() {

     file, err := os.Open("/home/yylonly/WS/wsdl.wsdl")
     if err != nil {
          log.Fatal(err)
     }
  
     data := make([]byte, 10000)
     count, err := file.Read(data)
     if err != nil {
       	log.Fatal(err)
     }
     fmt.Printf("read %d bytes: %q\n", count, data[:count])
}
