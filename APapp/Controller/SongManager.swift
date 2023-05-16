//
//  SongManager.swift
//  APapp
//
//  Created by Sofia Hedlund23 on 5/5/23.
//

import Foundation
import SwiftUI

class SongManager: ObservableObject {
    @Published var allSongs: [Song] = []
    @Published var filteredSongs: [String] = []
    
    init(){
        getSongs()
    }
    
    func getSongs() {
        for i in 0..<topSongs.count{
            let newSong = Song(title: topSongs[i], artist: artists[i], liked: 0) 
            allSongs.append(newSong)
        }
    }
    
    func likeSong(count : Int) -> Color {
        if count == 0 {
            return .secondary
        } else {
                return .red
            }
    }
    
    func updateCount (songToUpdate: Song){
        
        // Find the index of the song
        
        var index = 0
        
        for i in 0...allSongs.count-1 {
            if songToUpdate.title == allSongs[i].title {
                index = i
            }
        }

        // update the song
        if songToUpdate.liked == 0 {
            allSongs[index].liked = 1
            filteredSongs.append(allSongs[index].title)
        } else {
            allSongs[index].liked = 0

            for i in 0...filteredSongs.count-1 {
                if songToUpdate.title == filteredSongs[i] {
                    filteredSongs.remove(at: i)

                }
            }
            
            
            
        }
    
    }
}
