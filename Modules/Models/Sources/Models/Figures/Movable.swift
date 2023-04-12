//
//  Movable.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Chess. All rights reserved.
//

import Foundation

/// Describes a movable object.
public protocol Movable {
    func move(board: Board, from: IndexPath, to: IndexPath) -> Bool
    func findMoves(board: Board) -> [IndexPath]
}
