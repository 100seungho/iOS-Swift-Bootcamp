var dict = ["Amy":1, "James":2, "Kyle":3]
dict["Amy"]

var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String : Int]) {
    var max: Int = 0
  //Write your code here.
    for i in scores.values{
        if i > max { max = i }
    }
  
    print(max)
}

//Don't change this
highestScore(scores: studentsAndScores)
