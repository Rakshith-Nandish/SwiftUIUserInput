
import Foundation

class UserDefaultCommonUtil {
    
    var name: String {
        
        get {
            if NSUserDefaults.standardUserDefaults().valueForKey("name1") != nil {
                return NSUserDefaults.standardUserDefaults().valueForKey("name1") as! String
            }
            return ""
        }
        
        set(value) {
            NSUserDefaults.standardUserDefaults().setObject(value, forKey: "name")
        }
    }
    
    func setValue<T>(value: T,keyName:String) {
        if let valueToSave = value as? AnyObject {
         NSUserDefaults.standardUserDefaults().setObject(valueToSave, forKey: "name1")
        }
    }
    
    func getValue<T>(keyName: String,returnType: T) -> T {
        let value = returnType
        if NSUserDefaults.standardUserDefaults().valueForKey("name1") != nil {
            return NSUserDefaults.standardUserDefaults().valueForKey("name1") as! T
        }
        return value
    }
}
