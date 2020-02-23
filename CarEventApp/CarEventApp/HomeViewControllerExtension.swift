
import Foundation
import UIKit

extension HomeViewController: UITableViewDataSource,UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewHomeList.dequeueReusableCell(withIdentifier: "homeCell") as! HomeListTableViewCell
        cell.labelEventName.text = "Car Event 1"
        cell.labelEventDate.text = "02/03/2018"
        cell.labelEventDistance.text = "5km"
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 73
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailController = storyBoard.instantiateViewController(withIdentifier: "EventDetailViewController") as! EventDetailViewController
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}
