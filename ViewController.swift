//
//  ViewController.swift
//  camelot2
//
//  Created by René Léveillé on 2017-09-13.
//  Copyright © 2017 René Léveillé. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let people = [("csdfds", "cdscdscd"),("cdscdscd","cdscdscd"),("cdscdscd","cdscdscd")]
    
    let videos = [
                ("csdfds","csdfds"),
                ("csdfds","csdfds"),
                ("csdfds","csdfds"),
                ("csdfds","csdfds"),
                ("csdfds","csdfds"),
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return people.count
        }else {
            return videos.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0{
            var (personName,personLocation) = people[2]
            cell.textLabel?.text = personName
        }else{
            var(videoTitle,videoDesc) = videos[indexPath.row]
            cell.textLabel?.text = videoTitle
        }
        return(cell)
    }

    

    
    
    
    
    
    

    
    
    

    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: self)
    }
    
    

    
    
    
    
    
    
    
    
    //    @IBAction func no(_ sender: UIButton) {
    //                performSegue(withIdentifier: "no", sender: self)
    //    }
    //
    
    //    let animals = ["panda", ]
    //
    
    
    
//    override func viewDidAppear(_ _animated: Bool){
//
//        createAlert(title: "Are you sure you want to log out?", message: "Log out")
//    }
    
    
    
    
    
//    @IBAction func logoutAlert(_ sender: Any) {
//        let alert = UIAlertController(title: title, message: "Are you sure you want to log out?", preferredStyle: UIAlertControllerStyle.alert)
//        alert.addAction(UIAlertAction(title: "Log Out", style: UIAlertActionStyle.default, handler: {  (action) in
//            alert.dismiss(animated: true, completion: nil)
//        }))
//        
//        
//        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {  (action) in
//            alert.dismiss(animated: true, completion: nil)
//        }))
//        
//        self.present(alert, animated: true, completion: nil)
//        
//    }
    
    
    
    
//    func createAlert(title:String, message:String)
//    {
//
//
//    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func consentTapped(sender: AnyObject) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    
    //@IBAction func SurveyTapped(_ sender: UIButton) {
    
    @IBAction func SurveyTapped(_ sender: UIButton) {
        
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func microphoneTapped(sender: AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask, taskRun: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] , isDirectory: true) as URL
        present(taskViewController, animated: true, completion: nil)
    }
    

    
    @IBAction func yes(_ sender: UIButton) {
        performSegue(withIdentifier: "yes", sender: self)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
  
}







extension ViewController : ORKTaskViewControllerDelegate {
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        // Handle results with taskViewController.result
        taskViewController.dismiss(animated: true, completion: nil)
    }
}

