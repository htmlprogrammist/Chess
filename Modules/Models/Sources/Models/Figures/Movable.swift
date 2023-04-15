//
//  Movable.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import Foundation

/// Describes a movable object.
public protocol Movable {
    /// Makes a move and return result of it.
    ///
    /// - Parameters:
    ///   - board: <#board description#>
    ///   - from: <#from description#>
    ///   - to: <#to description#>
    ///   
    /// - Returns: <#description#>
    func move(board: Board, from: IndexPath, to: IndexPath) -> Bool
    
    /// Finds all possible moves on board.
    ///
    /// - Parameter board: Game board.
    ///
    /// - Returns: Array of coordinates of possible moves.
    func findMoves(board: Board) -> [IndexPath]
}
