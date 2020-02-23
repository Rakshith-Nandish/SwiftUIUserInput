

import Foundation
import UIKit

extension HamburgerMenuController: UITableViewDataSource,UITableViewDelegate {
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayHambuergerOptions.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hamburgerCell")
        cell?.textLabel?.text = arrayHambuergerOptions[indexPath.row]
        return cell!
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.closeLeft()
        delegateHamburgerSelectedOption?.selectedOption(index: indexPath.row)
    }
}
