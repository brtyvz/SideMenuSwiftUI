//
//  SideMenuHeaderView.swift
//  SideMenuSwiftUI
//
//  Created by Berat Yavuz on 19.05.2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack(alignment: .topTrailing)
        {
            Button {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .frame(width: 32, height: 32)
                    .padding()
            }

            
            
            VStack(alignment: .leading){
                
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Berat Yavuz")
                    .font(.system(size: 24).weight(.semibold))
                
                Text("@brtyvz")
                    .font(.system(size: 15))
                    .padding(.bottom,18)
                
                HStack(spacing : 12){
                    
                    HStack(spacing : 4){
                        Text("1232").bold()
                        Text("Followers")
                    }
                    
                    HStack(spacing : 4){
                        Text("122").bold()
                        Text("Following")
                    }
                Spacer()
                }
                Spacer()
            }.padding()
                .foregroundColor(.white)
        }
    }
}

//struct SideMenuHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuHeaderView()
//    }
//}
