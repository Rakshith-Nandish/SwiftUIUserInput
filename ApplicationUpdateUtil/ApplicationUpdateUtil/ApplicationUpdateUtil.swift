
import Foundation
import UIKit

class ApplicationUpdateUtil {
    
    private var applicationversion: String?
    private var applicationVersionAgainstMinVersion: ApplicationVersionStatus = .higher
    private var applicationVersionAgainstMaxVersion: ApplicationVersionStatus = .higher
    
    private enum ApplicationVersionStatus {
        case higher
        case lower
        case equal
    }
    
    public enum ApplicationUpdateStatus {
        case forceUpdate
        case optionalUpdate
        case noUpdate
    }
    
    public enum checkUpdateOn {
        case version
        case buildNumber
    }
    
    /// Obtains the application update status
    ///
    /// - Parameters:
    ///   - minVersion: minimum application version
    ///   - maxVersion: maximum application version
    ///   - applicationVersion: application version
    /// - Returns: The application update status
    public func getApplicationUpdateStatus(minVersion: String,
                                    maxVersion: String,
                                    applicationVersion:String = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? "") -> ApplicationUpdateStatus {
        
        self.applicationversion = applicationVersion
        return fetchApplicationUpdateStatus(minVersion: minVersion, maxVersion: maxVersion)
    }
    
    /// Fetches the application update version
    ///
    /// - Parameters:
    ///   - minVersion: minimum application version
    ///   - maxVersion: maximum application version
    /// - Returns: The application update status
    private func fetchApplicationUpdateStatus(minVersion: String,
                                            maxVersion: String) -> ApplicationUpdateStatus {
        
        applicationVersionAgainstMinVersion = checkIfApplicationVersionIsHigherThan(versionToCheckAgainst: minVersion)
        applicationVersionAgainstMaxVersion = checkIfApplicationVersionIsHigherThan(versionToCheckAgainst: maxVersion)
        
        if applicationVersionAgainstMinVersion == .lower {
            //force update
            return .forceUpdate
        }else if (applicationVersionAgainstMinVersion == .higher || applicationVersionAgainstMinVersion == .equal) && applicationVersionAgainstMaxVersion == .lower {
            //optional update
            return .optionalUpdate
        }else {
            return .noUpdate
        }
    }
    
    /// Checks if the application version
    ///
    /// - Parameter versionToCheckAgainst: Version against which application version is to be checked
    /// - Returns: application version status enum value
    private func checkIfApplicationVersionIsHigherThan(versionToCheckAgainst: String)  -> ApplicationVersionStatus {
        
        guard applicationversion != versionToCheckAgainst else {
            return .equal
        }
        
        let arrayAppVersion = applicationversion!.components(separatedBy: ".")
        let arrayGivenVersion = versionToCheckAgainst.components(separatedBy: ".")
        
        for i in 0 ..< (arrayAppVersion.count) {
            if arrayAppVersion[i] > arrayGivenVersion[i] {
                return  .higher
            }else if arrayAppVersion[i] < arrayGivenVersion[i] {
                return  .lower
            }else {
                continue
            }
        }
        return .equal
    }

}
