package main

import "fmt"

func insertionSort(arr []int) {
    for i := 1; i < len(arr); i++ {
        key := arr[i]
        j := i - 1
        for j >= 0 && arr[j] > key {
            arr[j+1] = arr[j]
            j--
        }
        arr[j+1] = key
    }
}

func main() {
    arr := []int{64, 25, 12, 22, 11}
    insertionSort(arr)
    fmt.Println("Insertion Sort:", arr)
}

// Output: Insertion Sort: [11 12 22 25 64]
