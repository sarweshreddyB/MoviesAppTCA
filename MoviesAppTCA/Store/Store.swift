//
//  Store.swift
//  MoviesAppTCA
//
//  Created by Sarwesh Boje on 30/04/24.
//

import Foundation
import SwiftUI

protocol StateRepresentable {
    static func initialState() -> Self
}

protocol EventRepresentable {}

protocol Store {
    associatedtype Action: EventRepresentable
    associatedtype State: StateRepresentable
    
    @MainActor func reduce(from action: Action) async -> Action?
    func send(_ action: Action)
    
    var state: State { get }
}

extension Store {
    func send(_ action: Action) {
        Task {
            guard let action = await reduce(from: action) else {
                return
            }
            send(action)
        }
    }
}
