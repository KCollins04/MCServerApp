//
//  ServerClass.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import Foundation
let defaults = UserDefaults.standard

struct Server {
    var name: String
    var ip: String
    var bedrock: Bool
}

func editServerGlobal(_ located: Int, _ server:Server){
    serverList[located] = server
    //defaults.set(serverList, forKey: "Servers")
}

func deleteServerGlobal(_ located: Int){
    serverList.remove(at: located)
   // defaults.set(serverList, forKey: "Servers")
}

func addServerGlobal(_ server: Server){
    serverList.append(server)
  //  defaults.set(serverList, forKey: "Servers")
}

var serverList = defaults.object(forKey: "Servers") as? [Server] ?? [Server]()


