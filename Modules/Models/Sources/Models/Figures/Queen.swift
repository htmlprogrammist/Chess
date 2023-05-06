//
//  Queen.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import UIKit

public final class Queen: Figure {
    
    public override var symbol: String {
        switch color {
        case .white:
            return "♛"
        case .black:
            return "♕"
        }
    }
    
    // MARK: - Init
    
    public init(color: Color, field: Field? = nil) {
        super.init(
            name: "Queen",
            image: UIImage(systemName: "checkerboard.rectangle"),
            color: color,
            field: field
        )
    }
}

extension Queen: Movable {
    
    public func move(board: Board, from: IndexPath, to: IndexPath) -> Bool {
        false
    }
    
    public func findMoves(board: Board) -> [IndexPath] {
        []
    }
}
