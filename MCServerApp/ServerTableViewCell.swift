//
//  ServerTableViewCell.swift
//  MCServerApp
//
//  Created by Temporary on 12/5/22.
//

import Foundation
import UIKit

class ServerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var serverIcon: UIImageView!
    @IBOutlet weak var serverName: UILabel!
    @IBOutlet weak var serverPlayerCount: UILabel!
    @IBOutlet weak var serverMOTD: UITextView!
    
    var ipAddress: String!
    
}
