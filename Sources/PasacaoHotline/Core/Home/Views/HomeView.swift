//
//  HomeView.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/20/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        AllHotlinesView(viewModel: viewModel)
    }
    
}
