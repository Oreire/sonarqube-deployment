package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, %s!", r.URL.Path[1:])
}

func main() {
	// Local variable declarations
	name := "John Doe"
	age := 30
	isStudent := false
	height := 5.9
	grades := []int{90, 85, 88}
	weight := 160.5

	// Use variables or pass them to other functions as needed
	fmt.Printf("Name: %s, Age: %d, Student: %t\n", name, age, isStudent)
	fmt.Printf("Height: %.1f, Weight: %.1f\n", height, weight)
	fmt.Printf("Grades: %v\n", grades)

	// Register handler and start server
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}

