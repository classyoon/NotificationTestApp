//
//  Item.swift
//  NotificationTestApp
//
//  Created by Conner Yoon on 9/9/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
