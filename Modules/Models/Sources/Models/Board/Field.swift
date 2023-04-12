//
//  Field.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import Foundation

/// A chessboard field. One of 64 pieces.
public final class Field {
    
    public let color: Color
    
    public weak var piece: Figure?
    
    init(color: Color) {
        self.color = color
    }
}
