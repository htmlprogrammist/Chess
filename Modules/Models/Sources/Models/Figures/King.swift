//
//  King.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Chess. All rights reserved.
//

import Foundation

public final class King: Figure {
}

extension King: Movable {
    
    public func move(board: Board, from: IndexPath, to: IndexPath) -> Bool {
        false
    }
    
    public func findMoves(board: Board) -> [IndexPath] {
        []
    }
}
