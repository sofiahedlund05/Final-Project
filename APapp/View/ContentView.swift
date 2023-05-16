//
//  ContentView.swift
//  APapp2
//
//  Created by Sofia Hedlund23 on 4/22/23.
//


import SwiftUI

struct ContentView: View {
    
    @StateObject var manager = SongManager()


    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.176, green: 0.575, blue: 0.5)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    
                    Text("Global Top 20 Songs")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor((Color(red: 0.761, green: 0.756, blue: 0.793)))
                        .padding()
                    
                    NavigationLink(
                    destination: DetailView(manager: manager),
                      label: {
                        PrimaryButton(text: "Liked Songs List")
                            .font(.system(size:15))
                        
                    }
                    )
                    
                            List{
                                ForEach (manager.allSongs) {song in
                                    
                                    
                                    HStack{
                                        Text(song.title)


                                        Image(systemName: "heart.fill")
                                            .font(.system(size:15))
                                            .multilineTextAlignment(.trailing)
                                            .foregroundColor (manager.likeSong (count: (song.liked)))
                                        
                                            .onTapGesture {
                                                
                                                manager.updateCount(songToUpdate : song)
                                               
                                            }

                                        
                                        

                                    }
                                }
                                
                            }
                            
                            .padding()
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

        
