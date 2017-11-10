
import UIKit
import ResearchKit

class MyInfo: UIViewController, UITableViewDataSource {
    
    let people = [("Name", "Birthday"),
                  ("Birthdate","xxx"),
                  ("Gender","xxx")]
    
    let consultations = [("Last consultation", "Birthday"),
                  ("Next Consultation","xxx")]
    
    
    let medication = [
        ("Adderall","aaa"),
        ("Tylenol","fffff"),
        ("Advil","hhhhh")
        ]
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return people.count
        }else {
            return consultations.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.section == 0{
            let (personName,personLocation) = people[indexPath.row]
            cell.textLabel?.text = personName
        }else if indexPath.section == 1{
            let (videoTitle,videoDesc) = consultations[indexPath.row]
            cell.textLabel?.text = videoTitle
        }else{
            let (meds,meds1) = medication[indexPath.row]
            cell.textLabel?.text = meds
        }
        
        
        
        return(cell)
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "GENERAL INFORMATION"
        }else if section == 1{
            return "CONSULTATION DATES"
        }else{
            return "MEDICATION INFORMATION"
            
            
        }
    }
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    

}
}





