///Use a hash table (Dictionary) to store nums in the array as key and count as value. If at any time the count is > 1, return true
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let uniqueNums = Set(nums)
        return uniqueNums.count < nums.count
    }
}

let numbers = [1,1]

Solution().containsDuplicate(numbers)


//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var intDict = [Int:Int]()
//        intDict.reserveCapacity(nums.count)
//
//    for num in nums {
//        if intDict[num] == nil {
//            intDict[num] = 0
//        }
//
//        intDict[num]! += 1
//
//        if intDict[num]! > 1 {
//            return true
//        }
//    }
//    return false
//}

