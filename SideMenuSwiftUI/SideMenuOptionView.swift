//
//  SideMenuOptionView.swift
//  SideMenuSwiftUI
//
//  Created by Berat Yavuz on 19.05.2022.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel : SideMenuViewModel
    var body: some View {
        HStack( spacing: 16){
            Image(systemName:viewModel.imageName )
                .frame(width:24,height:24)
            
            Text(viewModel.title)
                .font(.system(size: 15,weight:.semibold))
            Spacer()
        }.foregroundColor(.white).padding()
       
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .bookmarks)
    }
}