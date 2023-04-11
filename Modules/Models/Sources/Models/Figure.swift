//
//  Figure.swift
//  Models
//
//  Created by Егор Бадмаев on 10.04.2023.
//  Copyright © 2023 Chess. All rights reserved.
//

public enum Figures {
    public enum White {
        /// White pawn.
        static let pawn = Figure(name: "Pawn", image: "♟")
        /// White knight.
        static let knight = Figure(name: "Knight", image: "♞")
        /// White bishop.
        static let bishop = Figure(name: "Bishop", image: "♝")
        /// White rook.
        static let rook = Figure(name: "Rook", image: "♜")
        /// White queen.
        static let queen = Figure(name: "Queen", image: "♛")
        /// White king.
        static let king = Figure(name: "King", image: "♚")
    }
    
    public enum Black {
        /// Black pawn.
        static let pawn = Figure(name: "Pawn", image: "♙")
        /// Black knight.
        static let knight = Figure(name: "Knight", image: "♘")
        /// Black bishop.
        static let bishop = Figure(name: "Bishop", image: "♗")
        /// Black rook.
        static let rook = Figure(name: "Rook", image: "♖")
        /// Black queen.
        static let queen = Figure(name: "Queen", image: "♕")
        /// Black king.
        static let king = Figure(name: "King", image: "♔")
    }
}
