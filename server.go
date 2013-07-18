package main

import (
	"io"
	"net/http"
	"runtime"
)

func handler(resp http.ResponseWriter, req *http.Request) {
	io.WriteString(resp, "Hello World! (go)")
}

func main() {
	runtime.GOMAXPROCS(4)
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
