import Foundation
func printArr(_ arr:[String]){
    for word in arr{
        print(word)
    }
}
func readInput() -> [String]{
    var unsorted = [String]()
    while let line = readLine() {
        unsorted.append(line)
    }
    return unsorted
}
func mergeSort(arr: [String]) -> [String]{
    var tempArr = [String]()
    if (arr.count > 1){
        let mid = Int(ceil(Double(arr.count)/2.0))
        let first = mergeSort(arr:[String](arr[0 ..< mid]))
        let second = mergeSort(arr:[String](arr[mid ..< arr.count]))
        var i = 0
        var j = 0
        while ((i < first.count) && (j < second.count)){
            if (first[i] <= second[j]){
                tempArr.append(first[i])
                i += 1;
            }
            else if (first[i] > second[j]){
                tempArr.append(second[j])
                j += 1;
            }
        }
        while (i < first.count){
            tempArr.append(first[i])
            i += 1;
        }
        while (j < second.count){
            tempArr.append(second[j])
            j += 1;
        }
        return tempArr
    }
    else{
        return arr
    }
}
var unsorted = readInput()
unsorted = mergeSort(arr: unsorted) 
printArr(unsorted)
