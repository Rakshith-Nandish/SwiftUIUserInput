
import UIKit

class HomeListTableViewCell: UITableViewCell {

    @IBOutlet weak var labelEventName: UILabel!
    
    @IBOutlet weak var labelEventDate: UILabel!
    
    @IBOutlet weak var labelEventDistance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
