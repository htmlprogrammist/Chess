//
//  Board.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import Foundation

public final class Board {
    
    private enum Constants {
        static let minRowIndex: Int = 1
        static let maxRowIndex: Int = 8
    }
    
    // MARK: - Private Properties
    
    private var fields: [Field]
    
    // MARK: - Public Properties
    
    // MARK: - Init
    
    public init() {
        var fields: [Field] = []
        for i in 0..<64 {
            let field = Field(
                letter: Letter(rawValue: i % Constants.maxRowIndex) ?? .a,
                row: abs((i / Constants.maxRowIndex) - Constants.maxRowIndex),
                color: Color(
                    rawValue: (i / Constants.maxRowIndex) + i % Constants.maxRowIndex % 2
                ) ?? .white
            )
            fields.append(field)
        }
        self.fields = fields
        arrangeChessPiecesOnBoard()
    }
    
    public subscript(letter: Letter, row: Int) -> Field {
        get {
            assert(isRowValid(row), "Row index is out of range")
            return fields[abs(row - Constants.maxRowIndex) + letter.rawValue]
        }
        set {
            assert(isRowValid(row), "Row index is out of range")
            fields[abs(row - Constants.maxRowIndex) + letter.rawValue] = newValue
        }
    }
    
    // MARK: - Private Methods
    
    private func arrangeChessPiecesOnBoard() {
        arrangeChessPieces(with: .white, on: Constants.minRowIndex)
        arrangeChessPieces(with: .black, on: Constants.maxRowIndex)
    }
    
    private func arrangeChessPieces(with color: Color, on row: Int) {
        let pawnRowConstant = color == .white ? 1 : -1
        for letter in Letter.allCases {
            self[letter, row + pawnRowConstant].piece = Pawn(color: color)
        }
        
        self[.a, row].piece = Rook(color: color)
        self[.b, row].piece = Knight(color: color)
        self[.c, row].piece = Bishop(color: color)
        self[.d, row].piece = Queen(color: color)
        self[.e, row].piece = King(color: color)
        self[.f, row].piece = Bishop(color: color)
        self[.g, row].piece = Knight(color: color)
        self[.h, row].piece = Rook(color: color)
    }
    
    /// Checks whether row is valid or not.
    ///
    /// - Parameter row: Row index to check.
    ///
    /// - Returns: `true` if row is valid, `false` if not.
    private func isRowValid(_ row: Int) -> Bool {
        return row >= Constants.minRowIndex && row <= Constants.maxRowIndex
    }
}

extension Board: CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description: String {
        var piecesCount: Int = 0
        for field in fields {
            if field.piece != nil {
                piecesCount += 1
            }
        }
        // TODO: Rewrite with more useful information that will be shown to the user
        return "There is \(piecesCount) pieces left on the board"
    }
    
    public var debugDescription: String {
        var result = "  1  2  3  4  5  6  7  8\n"
        return result
    }
}
