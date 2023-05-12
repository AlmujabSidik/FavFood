//
//  HomeView.swift
//  FavFood
//
//  Created by Almujab Sidik on 09/05/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var showDetailPage = false
    
    
    var body: some View {
        
        return Group {
            if showDetailPage {
                DetailView()
            } else {
                VStack(spacing: 0) {
                
                    
                    // User Profile
                    HStack {
                        Image("UserPhoto")
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text("Howdy")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("GrayFavFood"))
                            
                            Text("Luna Polar")
                                .font(.custom("Poppins-SemiBold", size: 16))
                        }
                    }
                    
                    // title
                    
                    Text("What do you want\n for lunch?")
                        .font(.custom("Poppins-Bold", size: 22))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("DarkFavFood"))
                        .padding(.top, 30)
                        .padding(.bottom, 24)
                    
                    // Search
                    TextField("Search pizza, burger, kebab", text: $searchText)
                        .font(.custom("Poppins-Reguler", size: 16))
                        .foregroundColor(Color("SpunPearlFavFood"))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: 30 )
                        .padding(.vertical, 13)
                        .padding(.leading, 24)
                        .background(Color("SnowWhiteFavFood"))
                        .cornerRadius(50)
                    
                    // Categories
                    VStack(alignment: .leading) {
                        
                        Text("Categories")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("DarkFavFood"))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                       
                                
                                HStack {
                                    // bread
                                    Button {
                                        //
                                    } label: {

                                            HStack {
                                                Image("Bread")
                                                
                                                Text("Bread")
                                                    .font(.custom("Poppins-Reguler", size: 16))
                                                    .foregroundColor(Color("DarkFavFood"))
                                            }
                                            .frame(width: 123, height: 50, alignment: .leading)
                                            .padding(.leading, 5)
                                            .background(Color("SnowWhiteFavFood"))
                                            .foregroundColor(.black)
                                            .cornerRadius(50)
                            
                                    }
                                    
                                    // Carrot
                                    Button {
                                        //
                                    } label: {

                                            HStack {
                                                Image("Carrot")
                                                
                                                Text("Healthy")
                                                    .font(.custom("Poppins-Reguler", size: 16))
                                                    .foregroundColor(Color("DarkFavFood"))
                                            }
                                            .frame(width: 123, height: 50, alignment: .leading)
                                            .padding(.leading, 5)
                                            .background(Color("SnowWhiteFavFood"))
                                            .foregroundColor(.black)
                                            .cornerRadius(50)
                            
                                    }
                                    
                                    // Donnut
                                    Button {
                                        //
                                    } label: {

                                            HStack {
                                                Image("Donut")
                                                
                                                Text("Sweet")
                                                    .font(.custom("Poppins-Reguler", size: 16))
                                                    .foregroundColor(Color("DarkFavFood"))
                                            }
                                            .frame(width: 123, height: 50, alignment: .leading)
                                            .padding(.leading, 5)
                                            .background(Color("SnowWhiteFavFood"))
                                            .foregroundColor(.black)
                                            .cornerRadius(50)
                            
                                    }
                                    
                                }
                      

                        }
                        .padding(.top, 12)
                    }
                    .padding(.top, 20)
                    
                    
                    // Most Ordered
                    
                    VStack(alignment: .leading, spacing: 18) {
                        
                        HStack {
                            Text("Most Ordered")
                                .font(.custom("Poppins-SemiBold", size: 16))
                            
                            Spacer()
                        }
                       
                        ScrollView(showsIndicators: false) {
                            
                            // orange asem
                            HStack {
                                
                                Image("OrangeAsem")
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Orange Asem")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("DarkFavFood"))
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Reguler", size: 14))
                                        .foregroundColor(Color("GrayFavFood"))
                                    
                                }
                                .padding(.leading, 16)
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.9")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                            // Gyoza Sapi
                            HStack {
                                
                                
                                    Image("GyozaSapi")
                                    
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Gyoza Sapi")
                                            .font(.custom("Poppins-SemiBold", size: 16))
                                            .foregroundColor(Color("DarkFavFood"))
                                        
                                        Text("Meal")
                                            .font(.custom("Poppins-Reguler", size: 14))
                                            .foregroundColor(Color("GrayFavFood"))
                                        
                                    }
                                    .padding(.leading, 16)
                                    .onTapGesture {
                                        showDetailPage = true
                                    }
                               
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.8")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                            // Avocado Salad
                            HStack {
                                
                                Image("AvocadoSalad")
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("DarkFavFood"))
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Reguler", size: 14))
                                        .foregroundColor(Color("GrayFavFood"))
                                    
                                }
                                .padding(.leading, 16)
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.5")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                            HStack {
                                
                                Image("bundle_one")
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Vegetable and Rice")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("DarkFavFood"))
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Reguler", size: 14))
                                        .foregroundColor(Color("GrayFavFood"))
                                    
                                }
                                .padding(.leading, 16)
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.0")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                            HStack {
                                
                                Image("bundle_two")
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Dragon Fruit Salad")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("DarkFavFood"))
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Reguler", size: 14))
                                        .foregroundColor(Color("GrayFavFood"))
                                    
                                }
                                .padding(.leading, 16)
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.5")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                            HStack {
                                
                                Image("bundle_three")
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Rice egg ")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("DarkFavFood"))
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Reguler", size: 14))
                                        .foregroundColor(Color("GrayFavFood"))
                                    
                                }
                                .padding(.leading, 16)
                                
                                Spacer()
                                
                                HStack {
                                    Text("4.1")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .bold()
                                        .foregroundColor(Color("DarkFavFood"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("OrangeFavFood"))
                                }
                            }
                            
                        }
                        
                        
                    }
                    .padding(.top, 40)

                }
                .padding(.horizontal, 24)
            }
        }
       
        
        


    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
