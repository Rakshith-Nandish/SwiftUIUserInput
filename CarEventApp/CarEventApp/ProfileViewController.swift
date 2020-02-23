
import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var imageViewProfilePicture: UIImageView!
    
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelUserEmail: UILabel!
    @IBOutlet weak var labelUserNameDisplayer: UILabel!
    @IBOutlet weak var labelUserEmailDisplayer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
       labelUserNameDisplayer.text = CommonHelpers.instance.getValue(keyName:Constants.UserDefaults.userName , returnType: String.init())
       labelUserEmailDisplayer.text = CommonHelpers.instance.getValue(keyName: Constants.UserDefaults.userEmail, returnType: String.init())
    }
}
