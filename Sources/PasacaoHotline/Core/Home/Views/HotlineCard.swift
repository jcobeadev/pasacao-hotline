//
//  HotlineCard.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/21/25.
//

import SwiftUI

struct HotlineCard: View {
    let hotline: Hotline
    
    var body: some View {
        VStack(alignment: .leading) {
            //            Image("logo-lddrmo")
            //                .frame(maxWidth: 30.0, maxHeight: 30.0)
            //                .font(.system(size: 30))
            //                .padding()
            //                .background(Color.black)
            //                .clipShape(Circle())
            //                .foregroundColor(.red)
            
            Spacer()
            
            Text(hotline.name)
                .font(.headline)
                .foregroundColor(.primary)
            //                .padding()
        }
        .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
        .padding()
        .background(
            LinearGradient(colors: [Color.blue, Color.orange], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(20)
        
        //        .background(Color("ItemBackgroundColor"))
        //        .overlay {
        //            RoundedRectangle(cornerRadius: 10.0)
        //                .stroke(Color.gray, lineWidth: 1.5)
        //        }
        
        //              .padding()
        
    }
}
