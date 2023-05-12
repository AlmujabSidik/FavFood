//
//  DetailView.swift
//  FavFood
//
//  Created by Almujab Sidik on 10/05/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading) {
           Image("gyoza")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 320)
                .clipped()
                .cornerRadius(40)
            
            HStack {
                
                // Name Food
                
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text("Gyoza Sapi")
                        .font(.custom("Poppins-Bold", size: 22))
                        .foregroundColor(Color("DarkFavFood"))
                    
                    Text("Meal")
                        .font(.system(size: 22, weight: .regular))
                        .foregroundColor(Color("GrayFavFood"))
                        
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
            .padding(.top, 20)
            
            Text("Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan\nrasanya tidak sakit tenggorokan.")
                .font(.system(size: 16, weight: .regular))
                .lineSpacing(8)
                .padding(.top)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Bundle")
                    .font(.custom("Poppins-SemiBold", size: 16))
                    .bold()
                    .foregroundColor(Color("DarkFavFood"))
                
                HStack(spacing: 16) {
                    Image("OrangeAsem")
                    Image("GyozaSapi")
                    Image("AvocadoSalad")
                }
            }
            .padding(.top, 20)
                
            HStack {
                
                VStack(alignment: .leading) {
                    Text("$808.00")
                        .font(.custom("Poppins-SemiBold", size: 22))
                    
                    Text("/porsi")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("GrayFavFood"))
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Order Now")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: 190, maxHeight: 50)
                        .background(Color("OrangeFavFood"))
                        .cornerRadius(50)
                        
                }

            }
            .padding(.top, 32)
            
            
        }
        .padding(.horizontal, 24)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
