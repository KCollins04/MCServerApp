//
//  ViewController.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numPlayers: UILabel!
    @IBOutlet weak var lebelBedRock: UILabel!
    @IBOutlet weak var lebelVersion: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet var imagePlayer: UIView!
    
    enum ServerReponseError: Error {
        case invalidIp
        case cannotReach
        case fatal
    }
    
    struct ServerResponse: Codable {
        struct CacheResponse: Codable{
            let status: String
            let ttl: Int
            let insertion_time: String
        }
        struct VersionResponse: Codable{
            let name: String
        }
        struct PlayersReponse: Codable{
            let max: Int
            let online: Int
            let sample: [String]
        }
        let online: Bool
        let status: Bool
        let favicon_base64: String
        let source: String
        let took: Double
        let cache: CacheResponse
        let version: VersionResponse
        let players: PlayersReponse
        let description: String
        let fetch: String
    }
    
    func pingServer(_ ipAddress:String) throws -> ServerResponse {
        let requestUrl =
        // .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        "https://eu.mc-api.net/v3/server/ping/" + ipAddress
        let url = URL(string: requestUrl)
        let data = (try? Data(contentsOf: url!))!
        do {
            let res = try JSONDecoder().decode(ServerResponse.self, from: data)
            
            // Sets the variables to be gotten by the prepare for segue function
            return res
            
        } catch let error {
            print(error)
            throw ServerReponseError.cannotReach
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pingServer("mc.hypixel.net").description
    }


}

