package main

import "io"
import "net/http"
import "runtime"

func handler(resp http.ResponseWriter, req *http.Request) {
  io.WriteString(resp, "Hello World!")
}

func main() {
	runtime.GOMAXPROCS(4)
  http.HandleFunc("/", handler)
  http.ListenAndServe(":8080", nil)
}