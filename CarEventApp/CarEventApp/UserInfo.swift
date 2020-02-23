
import Foundation

class UserInfo {
    var userName: String! = ""
    var userEmailid: String! = ""
    var userId : String! = ""
    var userImageUrl : String! = ""
    
    init(name: String,email: String,id: String,url: String) {
        userName = name
        userEmailid = email
        userId = id
        userImageUrl = url
    }
}
