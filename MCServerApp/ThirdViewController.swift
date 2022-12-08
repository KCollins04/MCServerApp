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
        
        let imageData = Data(base64Encoded: String((selectedServer.favicon_base64 ?? defaultIcon).dropFirst(22)))
        if let imageData = imageData {
            playerImage.image = UIImage(data: imageData)
            
            versionThird.text = selectedServer.version?.name
            
            ipAdress.text = selectedServerInfo.ip
            
            serverName.text = selectedServerInfo.name
           
            motDay.text = selectedServer.online ? "Online" : "Offline"
            bedRock.text = "\(selectedServerInfo.bedrock)"
            

            
        }
        
                
    }
    


    
}
