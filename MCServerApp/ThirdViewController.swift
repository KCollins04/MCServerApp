//
//  ThirdViewController.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/8/22.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var ipAdress: UILabel!
    @IBOutlet weak var serverName: UILabel!
    @IBOutlet weak var motDay: UILabel!
    @IBOutlet weak var bedRock: UILabel!
    @IBOutlet weak var playerTableView: UITableView!
    @IBOutlet weak var versionThird: UILabel!
    
    var selectedServer: ServerResponse!
    var selectedServerInfo: Server!
    
    @IBOutlet weak var version: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageData = Data(base64Encoded: String((selectedServer.icon ?? defaultIcon).dropFirst(22)))
        if let imageData = imageData {
            playerImage.image = UIImage(data: imageData)
            
            versionThird.text = String((selectedServer.version ?? "REQUIRES MC UNKNOWN").dropFirst(8))
            
            ipAdress.text = selectedServerInfo.ip
            
            serverName.text = selectedServerInfo.name
           
            let string1 = NSAttributedString(string: "", attributes: [:])
            var newMutableString = NSMutableAttributedString()
            selectedServer.motd?.html.forEach{
                let string2 = $0.htmlToAttributedString!
                newMutableString = string1.mutableCopy() as! NSMutableAttributedString
                newMutableString.append(string2)
                print(newMutableString)
            }
            
            motDay.attributedText = newMutableString.copy() as? NSAttributedString
            
            //motDay.attributedText = NSAttributedString(string: "html", attributes: [:])
            
            
            bedRock.text = String(selectedServerInfo.bedrock)
            

            
        }
        
                
    }
    


    
}
