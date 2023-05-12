//
//  GetStatedView.swift
//  FavFood
//
//  Created by Almujab Sidik on 09/05/23.
//

import SwiftUI

struct GetStatedView: View {
    
    @State private var showHomeView = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .center) {
                    Image("OnBoardingAsset")
                }
                .frame(maxWidth: .infinity)
                
                Text("180K Store")
                    .font(.custom("Poppins-Reguler", size: 16))
                    .foregroundColor(Color("GrayFavFood"))
                    .padding(.top, 50)
                    .padding(.bottom, 4)
                
                Text("Order Your Favorite Foods")
                    .font(.custom("Poppins-Bold", size: 36))
                    .foregroundColor(Color("DarkFavFood"))
                    .padding(.top, 4)
                    .padding(.bottom, 30)
                
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundColor(Color("OrangeFavFood"))
                    
                    NavigationLink("Explore Now", destination: HomeView()
                        .navigationBarBackButtonHidden(true)
                    )
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                
                
                
                
            }
            .padding(.horizontal, 24)
        }
        
    }
}

struct GetStatedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStatedView()
    }
}
