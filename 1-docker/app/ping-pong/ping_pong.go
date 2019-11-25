package main

import (
	"fmt"
	"net/http"
)

func HealthCheck(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "ok!")
}

func Pong(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "pong")
}

func Ping(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "ping")
}

func main() {
	http.HandleFunc("/_health_check", HealthCheck)
	http.HandleFunc("/ping", Pong)
	http.HandleFunc("/pong", Ping)
	http.ListenAndServe(":8080", nil)
}
