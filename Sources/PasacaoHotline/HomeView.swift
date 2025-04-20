//
//  HomeView.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/20/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
   
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false) {
                AllHotlinesView(viewModel: viewModel)
            }
        }
        .navigationTitle("Pasacao Hotline")
    }
    
}

struct AllHotlinesView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()

            HStack {
                Text("Coin")

                Spacer()

                Text("Price")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)

            ScrollView {
                VStack {
                    ForEach(viewModel.hotlines) { hotline in
                        Text(hotline.name)
                    }
                }
            }
        }
    }
}
