package main

import "fmt"

func bubbleSort(arr []int) {
    n := len(arr)
    for i := 0; i < n-1; i++ {
        for j := 0; j < n-1-i; j++ {
            if arr[j] > arr[j+1] {
                arr[j], arr[j+1] = arr[j+1], arr[j]
            }
        }
    }
}

func main() {
    arr := []int{64, 25, 12, 22, 11}
    bubbleSort(arr)
    fmt.Println("Bubble Sort:", arr)
}

// Output: Bubble Sort: [11 12 22 25 64]
