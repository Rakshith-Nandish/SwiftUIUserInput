func getQuestionsArray(inputString: String) -> [String] {
    var questionArray = [String]()
    
    var indexI = 0
    var indexJ = 0
    
    while indexI < inputString.count {
        indexJ = indexI + 2
        let startIndex = inputString.index(inputString.startIndex, offsetBy: indexI)
        let endIndex = inputString.index(inputString.startIndex, offsetBy: indexJ)
        
        let range = startIndex...endIndex
        let subString = inputString[range]
        
        questionArray.append(String(subString))
        indexI = indexJ + 1
    }
    
    return questionArray
}


print(getQuestionsArray(inputString: "545546561569572574581583584585590595599600601603607610611612616618619620626630"))
print(getQuestionsArray(inputString: "545546561569572574581583584585590595599600601603607610611612616618619620626630").count)
