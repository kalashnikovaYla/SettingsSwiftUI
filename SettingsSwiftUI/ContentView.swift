//
//  ContentView.swift
//  SettingsSwiftUI
//
//  Created by sss on 18.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnAirplane = false
    @State var selectionBleutooth = 0
    var bleutooth = ["On", "Of"]
    
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.4).ignoresSafeArea()
            
            NavigationStack {
                
                Form {
                    
                    //MARK: First section
                   
                    Section {
                        
                        //Name
                        
                        HStack {
                            Image("image1")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .scaledToFill()
                                .cornerRadius(40)
                            
                            NavigationLink {
                                //TODO: Desination
                            } label: {
                                VStack {
                                    Text("Юлия Калашникова")
                                        .font(.title2)
                                    Text("Apple ID, ICloud, Media & Purchases")
                                        .font(.callout)
                                }
                            }
                        }
                        NavigationLink {
                            //TODO: Desination
                        } label: {
                            HStack {
                                
                                Text("Apple ID Suggestions")
                                
                                Spacer()
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20).frame(width: 30, height: 30).foregroundColor(.red)
                                    Text("2").foregroundColor(.white).font(.subheadline)
                                }
                            }
                        }
                        
                    }
                    
                    //MARK: Second section
                    
                    Section {
                        
                        //Airplane
                        Toggle(isOn: $isOnAirplane) {
                            HStack(spacing: 13) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.orange)
                                    Image(systemName: "airplane").foregroundColor(.white)
                                }
                                Text("Airplane Mode")
                            }
                        }.tint(.blue)
                        
                        //Wi-Fi
                        NavigationLink {
                            //TODO: Desination
                        } label: {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.blue)
                                    Image(systemName: "wifi").foregroundColor(.white)
                                }
                                Text("Wi-Fi")
                                Spacer()
                                Text("XXX")
                            }
                        }

                        //Bleutooth
                        Picker(selection: $selectionBleutooth) {
                            ForEach(0..<bleutooth.count, id: \.self) {
                                Text(bleutooth[$0])
                            }
                        } label: {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.green)
                                    Image(systemName: "earbuds.case.fill").foregroundColor(.white)
                                }
                                Text("Bleutooth")
                            }
                        }
                    }
                    
                    //MARK: Third Section
                    
                    //General
                    NavigationLink {
                        //TODO: Desination
                    } label: {
                        HStack(spacing: 13) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.gray)
                                Image(systemName: "gear").foregroundColor(.white)
                            }
                            Text("General")
                        }
                    }
                    
                    //Control Center
                    NavigationLink {
                        //TODO: Desination
                    } label: {
                        HStack(spacing: 13) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.gray)
                                Image(systemName: "rectangle.grid.2x2").foregroundColor(.white)
                            }
                            Text("Control Center")
                        }
                    }
                    
                    //Accessibility
                    NavigationLink {
                        //TODO: Desination
                    } label: {
                        HStack(spacing: 13) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.blue)
                                Image(systemName: "person.2.circle").foregroundColor(.white)
                            }
                            Text("Accessibility")
                        }
                    }
                    
                    //Wallpaper
                    NavigationLink {
                        //TODO: Desination
                    } label: {
                        HStack(spacing: 13) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.purple)
                                Image(systemName: "photo.artframe").foregroundColor(.white)
                            }
                            Text("Wallpaper")
                        }
                    }
                    
                    //FaceID & Passcode
                    NavigationLink {
                        //TODO: Desination
                    } label: {
                        HStack(spacing: 13) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10).frame(width: 35, height: 35).foregroundColor(.green)
                                Image(systemName: "eye.square").foregroundColor(.white)
                            }
                            Text("FaceID & Passcode")
                        }
                    }
        
                }.navigationTitle("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
