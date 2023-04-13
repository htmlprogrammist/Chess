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
    
    // MARK: - Public Properties
    
    public let letter: Letter
    public let row: Int
    public let color: Color
    
    public weak var piece: Figure?
    
    // MARK: - Init
    public init(letter: Letter, row: Int, color: Color, piece: Figure? = nil) {
        self.letter = letter
        self.row = row
        self.color = color
        self.piece = piece
    }
}
