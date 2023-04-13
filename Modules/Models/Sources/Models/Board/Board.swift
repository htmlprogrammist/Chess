//
//  Board.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import Foundation

/*
TODO: Сделать Board как DiffableDataSource - это будет как коллекция, а item'ы (ячейки) - Field
 А пока будет как коллекция, через subscript
 */
public final class Board {
    
    private enum Constants {
        static let minRowIndex: Int = 1
        static let maxRowIndex: Int = 8
    }
    
    // MARK: - Public Properties
    
    public var fields: [Field]
    
    // MARK: - Init
    
    public init() {
        var fields: [Field] = []
        for i in 0..<64 {
            let field = Field(
                letter: Letter(rawValue: i % Constants.maxRowIndex) ?? .a,
                row: (i % Constants.maxRowIndex) + 1,
                color: Color(rawValue: i % 2) ?? .white
            )
            fields.append(field)
        }
        print(fields[0].letter, fields[0].row, fields[0].color)
        print(fields[63].letter, fields[63].row, fields[63].color)
        self.fields = fields
    }
    
    public subscript(letter: Letter, row: Int) -> Field {
        get {
            assert(isRowValid(row), "Row index is out of range")
            return fields[letter.rawValue * Constants.maxRowIndex + (row - 1)]
        }
        set {
            assert(isRowValid(row), "Row index is out of range")
            fields[letter.rawValue * Constants.maxRowIndex + (row - 1)] = newValue
        }
    }
    
    // MARK: - Private Methods
    
    /// Checks whether row is valid or not.
    ///
    /// - Parameter row: Row index to check.
    ///
    /// - Returns: `true` if row is valid, `false` if not.
    private func isRowValid(_ row: Int) -> Bool {
        return row >= Constants.minRowIndex && row <= Constants.maxRowIndex
    }
}
