package main

import (
   "fmt"
   "io/ioutil"
)

func main() {
      fileinfo, err := ioutil.ReadDir("/home/yylonly/WS/wsdl.wsdl")
      if err != nil {
          fmt.Printf("error: %v\n", err)
      }
      for i,v := range fileinfo {
          fmt.Printf("id: %d, fileinfo: %v\n", i, v)
      }
}
