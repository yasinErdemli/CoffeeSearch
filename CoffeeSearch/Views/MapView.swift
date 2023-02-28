//
//  MapView.swift
//  CoffeeSearch
//
//  Created by Yasin Erdemli on 28.02.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @ObservedObject var viewModel: MapController
    var body: some View {
        Map(coordinateRegion: $viewModel.region, annotationItems: viewModel.businesses) { business in
            MapAnnotation(coordinate: business.coordinate) {
                Image(systemName: "mappin.and.ellipse")
                    .font(.title)
                    .foregroundColor(.pink)
                    .onTapGesture {
                        viewModel.setSelectedBusiness(for: business)
                    }
            }
        }
        .ignoresSafeArea()
        .sheet(isPresented: $viewModel.isBusinessViewShowing) {
            BusinessView(viewModel: viewModel)
                .presentationDetents([.fraction(0.2), .large, .medium])
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(viewModel: MapController())
    }
}
