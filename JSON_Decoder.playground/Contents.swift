
import Foundation

struct Swifter: Decodable {
  let fullName: String
  let id: Int
  let twitter: URL
}

let json = """
[{
 "fullName": "Federico Zanetello",
 "id": 123456,
 "twitter": "http://twitter.com/zntfdr"
},{
 "fullName": "Federico Zanetello",
 "id": 123456,
 "twitter": "http://twitter.com/zntfdr"
},{
 "fullName": "Federico Zanetello",
 "id": 123456,
 "twitter": "http://twitter.com/zntfdr"
}]
""".data(using: .utf8)! // our data in native format
let myStructArray = try JSONDecoder().decode([Swifter].self, from: json)

myStructArray.forEach { print($0) } // decoded!!!!!
