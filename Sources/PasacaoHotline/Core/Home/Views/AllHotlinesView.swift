//
//  AllHotlinesView.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/21/25.
//

import SwiftUI

struct AllHotlinesView: View {
    @StateObject var viewModel: HomeViewModel
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.hotlines, id: \.self) { hotline in
                        NavigationLink(destination: HotlineDetailView(hotline: hotline)) {
                            HotlineCard(hotline: hotline)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .navigationTitle(Text("Pasacao Hotline"))
                .padding()
            }
        }
    }
}
