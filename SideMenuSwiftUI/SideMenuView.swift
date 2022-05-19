//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Berat Yavuz on 19.05.2022.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:240)
                ForEach(SideMenuViewModel.allCases,id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) {
                        SideMenuOptionView(viewModel: option)
                    }
                        
                    
                    
                    
                }
                Spacer()
            }
        }.navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
