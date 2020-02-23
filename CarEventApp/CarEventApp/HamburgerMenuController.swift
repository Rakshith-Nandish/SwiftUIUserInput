
import Foundation
import UIKit

protocol HamburgerSelectedOptionDelegate {
    func selectedOption(index:Int)
}

class HamburgerMenuController: UIViewController{
    
    @IBOutlet weak var tableviewHamburgerOptions: UITableView!
    
    let arrayHambuergerOptions = ["MyListing","Profile"]
    
    var delegateHamburgerSelectedOption: HamburgerSelectedOptionDelegate?
    
    enum Options:Int {
       case MyListing = 0
       case Profile = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewHamburgerOptions.dataSource = self
        tableviewHamburgerOptions.delegate = self
    }
}
