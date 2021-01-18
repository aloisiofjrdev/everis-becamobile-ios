//
//  Bindable.swift
//  provaFilmes
//
//  Created by Aloisio Formento Junior on 18/01/21.
//  Copyright © 2021 Aloisio Formento Junior. All rights reserved.
//

import Foundation

public class Bindable<T> {

    typealias Listener = (T) -> Void

    // MARK: - Properties
    var listeners: [Listener] = []

    // MARK: - Constructors
    init(_ val: T) {
        self.value = val
    }

    // MARK: - Bind
    func bind(_ listerner: @escaping Listener) {
        self.listeners.append(listerner)
    }

    var value: T {
        didSet {
            listeners.forEach { $0(value) }
        }
    }
}
