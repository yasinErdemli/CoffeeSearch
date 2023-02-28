//
//  Action.swift
//  CoffeeSearch
//
//  Created by Yasin Erdemli on 28.02.2023.
//

import Foundation

struct Action: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let handler: () -> Void
}
