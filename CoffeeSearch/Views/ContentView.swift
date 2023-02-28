//
//  ContentView.swift
//  CoffeeSearch
//
//  Created by Yasin Erdemli on 28.02.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MapController()
    var body: some View {
        NavigationStack {
            MapView(viewModel: viewModel)
        }
        .searchable(text: $viewModel.searchTerm)
        .onSubmit(of: .search) {
            viewModel.search()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
