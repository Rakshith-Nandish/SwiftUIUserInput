
import Foundation
import UIKit


class HomeViewController: UIViewController,HamburgerSelectedOptionDelegate {
    
    @IBOutlet weak var tableViewHomeList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideMenuController()?.openLeft()
        let hamburgerViewController = slideMenuController()?.leftViewController as? HamburgerMenuController
        hamburgerViewController?.delegateHamburgerSelectedOption = self
        
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true

    }
    
    private func configureTableView() {
        let cellNib  = UINib(nibName: "HomeListTableViewCell", bundle: nil)
        tableViewHomeList.register(cellNib, forCellReuseIdentifier: "homeCell")
        
        tableViewHomeList.dataSource = self
        tableViewHomeList.delegate = self
    }
    
    func selectedOption(index:Int) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        switch index {
        case 0:
            break
        case 1:
            let profileViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(profileViewController, animated: true)
        default:
            break
        }
    }
}
