//
//  Board.swift
//  Models
//
//  Created by Егор Бадмаев on 11.04.2023.
//  Copyright © 2023 Chess. All rights reserved.
//

import Foundation

public final class Board {
    
    public static let shared = Board()
    
    public let fields: [Field]
    
    private init() {
        var fields: [Field] = []
        for i in 0..<64 {
            fields.append(Field(color: i.isMultiple(of: 2) ? .white : .black))
        }
        
        self.fields = fields
    }
    
    // MARK: - Private Methods
}
