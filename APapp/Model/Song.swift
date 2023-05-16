//
//  Song.swift
//  APapp
//
//  Created by Sofia Hedlund23 on 5/5/23.
//

import Foundation

struct Song: Identifiable {
    let title: String
    let artist: String
   var liked: Int
    let id = UUID()
}
