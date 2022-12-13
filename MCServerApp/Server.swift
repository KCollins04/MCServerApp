//
//  ServerClass.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import Foundation
let defaults = UserDefaults.standard

struct Server: Codable {
    var name: String
    var ip: String
    var bedrock: Bool
}

func editServerGlobal(_ located: Int, _ server:Server){
    serverList[located] = server
    do{
                 let encoder = JSONEncoder()
                 let serversEncoded = try encoder.encode(serverList)
                 defaults.setValue(serversEncoded, forKey: "Servers")
              }catch let err{
                 print(err)
              }}

func deleteServerGlobal(_ located: Int){
    serverList.remove(at: located)
    do{
                 let encoder = JSONEncoder()
                 let serversEncoded = try encoder.encode(serverList)
                 defaults.setValue(serversEncoded, forKey: "Servers")
              }catch let err{
                 print(err)
              }}

func addServerGlobal(_ server: Server){
    serverList.append(server)
    do{
                 let encoder = JSONEncoder()
                 let serversEncoded = try encoder.encode(serverList)
                 defaults.setValue(serversEncoded, forKey: "Servers")
              }catch let err{
                 print(err)
              }


}

func getServers() -> [Server]{
    
    guard let serversData = defaults.object(forKey: "Servers") as? Data else{return []}
             do{
                 let decoder = JSONDecoder()
                 let servers = try decoder.decode([Server].self, from: serversData)
                 return servers
             }catch{
                 return([])
           }
        }

var serverList = getServers()

enum ServerReponseError: Error {
    case fatal
}

struct ServerResponse: Codable {
    struct PlayersReponse: Codable{
        let max: Int
        let online: Int
        let list: [String]?
    }
    struct MOTDResponse: Codable{
        let html: [String]
    }
    
    let online: Bool
    let motd: MOTDResponse?
    let players: PlayersReponse?
    let icon: String?
    let version: String?
}

extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}

//var serverList = defaults.object(forKey: "Servers") as? [Server] ?? [Server]()


