
import UIKit
import ResearchKit

class Settings: UIViewController, UITableViewDataSource {
    
    let settingss = [("About this study", "Birthday"),
                  ("Notification settings","xxx")]
    

    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return settingss.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
            let (personName,personLocation) = settingss[indexPath.row]
            cell.textLabel?.text = personName

        
        
        
        
        return(cell)
    }
    
    @IBAction func logoutAlert(_ sender: Any) {
        let alert = UIAlertController(title: title, message: "Are you sure you want to log out?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Log Out", style: UIAlertActionStyle.default, handler: {  (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {  (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
}






