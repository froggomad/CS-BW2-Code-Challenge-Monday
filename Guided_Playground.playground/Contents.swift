import Foundation

//O(n)
extension String {

    func splitByNonLetter() -> [SubSequence]{
        //This will make an array split by punctuation
        return self.split{ !$0.isLetter }
    }

    mutating func sanitize() {

        self = self.splitByNonLetter()
            .joined()
            .lowercased()

    }

    func sanitized() -> String {

        return self.splitByNonLetter()
            .joined()
            .lowercased()

    }

}

//O(n) over the length of the string
func isPalindrome(str: String) -> Bool {
    //O(n)
    let inputString = str.sanitized()
    
    //O(1)
    //reverse sanitized input
    let comparisonString = String(inputString.reversed())

    //O(1)
    //compare sanitized input to sanitized reversed string
    if comparisonString == inputString {
        return true
    }
    return false
}

print(isPalindrome(str: "I'm a lasagna sang a salami"))

func isPalindromeRecursive(str: String) -> Bool {
    //O(n)
    var str = str
    str.sanitize()

    //O(n-2)
    while str.count >= 2 {
        //remove and store first and last chars
        let first = str.remove(at: str.startIndex)
        let last = str.popLast()

        //if they match, this is a palindrome, continue recursively
        if first == last {
            return isPalindrome(str: str)
        } else {
            return false
        }
    }
    return true
}

print(isPalindromeRecursive(str: "I'm a lasagna sang a salami"))
