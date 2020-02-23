
import Foundation

class CommonHelpers {
    
public static let instance = CommonHelpers()
    
func setValue<T>(value: T,keyName:String) {
    if let valueToSave = value as? AnyObject {
        UserDefaults.standard.set(valueToSave, forKey: keyName)
    }
}

func getValue<T>(keyName: String,returnType: T) -> T {
    let value = returnType
    if UserDefaults.standard.value(forKey: keyName) != nil {
        return UserDefaults.standard.value(forKey: keyName) as! T
    }
    return value
}

}
