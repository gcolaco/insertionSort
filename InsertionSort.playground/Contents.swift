import Foundation


var bestCaseArray:[Int] =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
var worstCaseArray:[Int] = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
var randomArray:[Int] =    [6,1,2,5,4,3,23,24,56,78,6,0,11,34,9]

func insertionSort(array:[Int]) -> [Int]{
    print("Before being ordered: \(array)")
    
    var ar = array
    
    for i in 1..<ar.count{
        var position = i //position is the element of the unsorted part of the array
        let pivot = ar[i]

        while position > 0 && ar[position - 1] > pivot {
            ar[position] = ar[position - 1] //shift the elements we find to the right
            position -= 1
        }
        ar[position] = pivot //insert the element we found at the sorted part of the array

    }
    return ar
}

//test case
var insertionBestCase = insertionSort(array: bestCaseArray)
print("After being ordered: \(insertionBestCase)")

var insertionWorstCase = insertionSort(array: worstCaseArray)
print("After being ordered: \(insertionWorstCase)")

var insertRandomCase = insertionSort(array: randomArray)
print("After being ordered: \(insertRandomCase)")

