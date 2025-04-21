//
//  HotlineDetailView.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/21/25.
//

import SwiftUI

struct HotlineDetailView: View {
    let hotline: Hotline
    
    var body: some View {
        List {
            Text(hotline.name)
                .font(.largeTitle.bold())
            
            if let mobile = hotline.mobile {
                Section(header: Text("📱 Mobile")) {
                    ForEach(mobile, id: \.self) { number in
                        Button(action: {
#if !SKIP
                            let digitsOnly = number.filter("0123456789".contains)
                            if let url = URL(string: "tel://\(digitsOnly)") {
                                UIApplication.shared.open(url)
                            }
#endif
                        }) {
                            Text(number)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            
            if let phone = hotline.phone {
                Section(header: Text("☎️ Phone")) {
                    ForEach(phone, id: \.self) { number in
                        Text(number)
                            .foregroundColor(.blue)
                    }
                }
                // Text("☎️ Phone: \(phone.joined(separator: ", "))")
            }
            
            if let radio = hotline.radio {
                Section(header: Text("📡 Radio")) {
                    Text(radio)
                }
            }
        }
        .padding()
        .navigationTitle(hotline.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
