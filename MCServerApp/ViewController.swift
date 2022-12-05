//
//  ViewController.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import UIKit


class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    // TODO: Connect outlets to View
    @IBOutlet weak var numPlayers: UILabel!
    @IBOutlet weak var labelBedRock: UILabel!
    @IBOutlet weak var labelVersion: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet var imagePlayer: UIView!
    
    enum ServerReponseError: Error {
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
        let favicon_base64: String?
        let source: String?
        let took: Double?
        let cache: CacheResponse?
        let version: VersionResponse?
        let players: PlayersReponse?
        let description: String?
        let fetch: String?
        let error: String?
    }
    func pingServer(_ ipAddress:String) throws -> ServerResponse {
        let requestUrl =
        // .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        "https://mc-api.net/v3/server/ping/" + ipAddress
        let url = URL(string: requestUrl)
        let data = (try? Data(contentsOf: url!))!
        do {
            let res = try JSONDecoder().decode(ServerResponse.self, from: data)
            return res
        } catch let error {
            print(error)
            throw ServerReponseError.fatal
        }
    }
    
    func editServer(_ located: Int, _ server:Server){
        serverList[located] = server
        defaults.set(serverList, forKey: "Servers")
    }
    
    func deleteServer(_ located: Int){
        serverList.remove(at: located)
        defaults.set(serverList, forKey: "Servers")
    }
    
    func addServer(_ server: Server){
        serverList.append(server)
        defaults.set(serverList, forKey: "Servers")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            try print(pingServer("mc.hypixel.net").description ?? "Not found")
            try print(pingServer("mc.doesnotexist.net").description ?? "Not found")
        } catch{
            print("ERROR")
        }

    }


}

