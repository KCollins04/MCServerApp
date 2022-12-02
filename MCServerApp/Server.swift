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
    var icon: String?
}

var serverList = defaults.object(forKey: "Servers") as? [Server] ?? [Server]()
