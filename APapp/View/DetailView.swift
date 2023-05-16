//
//  DetailView.swift
//  APapp
//
//  Created by Sofia Hedlund23 on 5/4/23.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var manager = SongManager()
    
    var body: some View {
        ZStack{
            Color(red: 0.176, green: 0.575, blue: 0.5)
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    HStack{
                        Text("Liked Songs")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Image(systemName: "heart.fill")
                            .font(.system(size:40))
                            .foregroundColor(.red)
                        
                    }
                    Rectangle()
                        .frame(maxWidth: 5000, maxHeight: 2)
                        .foregroundColor(.black)
                        
                }
                Spacer()
       
                
                if manager.filteredSongs.count == 0 {
                    Text("No liked songs :(")
                        .font(.title)
                        .foregroundColor((Color(red: 0.761, green: 0.756, blue: 0.793)))
                    
                } else {
                    ForEach (0...manager.filteredSongs.count-1, id: \.self) {index in
                        HStack{
                            Text("\(manager.filteredSongs[index])")
                                .font(.title)
                                .foregroundColor(Color(red: 0.592, green: 0.714, blue: 0.881))
                            
                        }
                  
                    }
                }
                Spacer()
                Spacer()
          
                
                
            }
            
            
        }
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
