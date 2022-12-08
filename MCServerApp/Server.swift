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
        let sample: [String]?
    }
    
    let online: Bool
    let status: Bool
    let favicon_base64: String?
    let source: String?
    let took: Double?
    let cache: CacheResponse?
    let version: VersionResponse?
    let players: PlayersReponse?
  //  let description: DescriptionReponse?
    let fetch: String?
    let error: String?
}

//var serverList = defaults.object(forKey: "Servers") as? [Server] ?? [Server]()


