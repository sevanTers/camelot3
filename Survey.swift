
import UIKit
import ResearchKit

class Survey: UIViewController, UITableViewDataSource {
    
    let aspectCog = [("Acceptation", "Birthday"),
                  ("Connaissances","xxx"),
                  ("Croyances","xxx"),
                  ("Émotions","xxx"),
                  ("Motivation","xxx")]
    
    let modeVie = [("Utilisation de Substances", "Birthday"),
                         ("Exigences de la vie et problèmes d'organisation","xxx")]
    
    
    let expSante = [
        ("Comorbidités","aaa"),
        ("Écouter son corps","fffff"),
        ("Manifestations de l'infection au VIH et santé générale","hhhhh")
    ]
    
    let ARV = [
        ("Instructions","aaa"),
        ("Effets Secondaires","fffff"),
        ("Caractéristiques matérielles","hhhhh")
    ]
    
    let SysSante = [
        ("Relations avec les soignants","aaa"),
        ("Assurance-santé/médicaments","fffff"),
        ("Clinique VIH et système de santé","hhhhh"),
        ("Problèmes avec la pharmacie","hhhhh")
    ]
    
    let SocialMat = [
        ("Stigmatisation en lien avec le VIH et dissimulation","aaa"),
        ("Interactions sociales, soutien et relations","fffff"),
        ("Défis matériaux et structuraux","hhhhh")
    ]
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return aspectCog.count
        }else if section == 1 {
            return modeVie.count
        }else if section == 2 {
            return expSante.count
        }else if section == 3 {
            return ARV.count
        }else if section == 4 {
            return SysSante.count
        }else  {
            return SocialMat.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.section == 0{
            let (personName,personLocation) = aspectCog[indexPath.row]
            cell.textLabel?.text = personName
        }else if indexPath.section == 1{
            let (videoTitle,videoDesc) = modeVie[indexPath.row]
            cell.textLabel?.text = videoTitle
        }else if indexPath.section == 2{
            let (videoTitle,videoDesc) = expSante[indexPath.row]
            cell.textLabel?.text = videoTitle
        }else if indexPath.section == 3{
            let (videoTitle,videoDesc) = ARV[indexPath.row]
            cell.textLabel?.text = videoTitle
        }else if indexPath.section == 4{
            let (videoTitle,videoDesc) = SysSante[indexPath.row]
            cell.textLabel?.text = videoTitle
        }else{
            let (meds,meds1) = SocialMat[indexPath.row]
            cell.textLabel?.text = meds
        }
        
        
        
        return(cell)
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Aspects Cognitifs et Émotionnels"
        }else if section == 1{
            return "Facteurs liés au mode de vie"
        }else if section == 2{
            return "Expérience et État de Santé"
        }else if section == 3{
            return "Caractéristiques des ARV"
        }else if section == 4{
            return "Services et Système de Santé"
        }else{
            return "Contexte Social et Matériel"
            
            
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






