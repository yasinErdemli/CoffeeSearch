//
//  BusinessView.swift
//  CoffeeSearch
//
//  Created by Yasin Erdemli on 28.02.2023.
//

import SwiftUI

struct BusinessView: View {
    @ObservedObject var viewModel: MapController
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(viewModel.selectedBusinessName)
                        .font(.largeTitle)
                    Text(viewModel.selectedBusinessPlacemark)
                }
                Spacer()
                
                Button {
                    viewModel.isBusinessViewShowing.toggle()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }
            }
            HStack {
                ForEach(viewModel.actions) { item in
                    Button {
                        item.handler()
                    } label: {
                        VStack {
                            Image(systemName: item.image)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
        .padding()
    }
}

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView(viewModel: MapController())
            .previewLayout(.sizeThatFits)
    }
}
