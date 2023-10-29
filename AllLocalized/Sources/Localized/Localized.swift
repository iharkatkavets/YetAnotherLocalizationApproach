//
//  File.swift
//  
//
//  Created by Ihar Katkavets on 28/10/2023.
//

import Foundation

@propertyWrapper 
public struct Localized {
    public var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.localized }
    }

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.localized
    }
}

public extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

