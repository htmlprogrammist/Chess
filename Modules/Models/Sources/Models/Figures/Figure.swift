//
//  Figure.swift
//  Models
//
//  Created by Егор Бадмаев on 10.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import Foundation

/// Represents chess figure.
public class Figure {
    
    // MARK: - Public Properties
    
    /// Name of the figure.
    public let name: String
    /// Icon (image).
    public let image: Image
    /// Color of the figure.
    public let color: Color
    
    public let field: Field
    
    // MARK: - Init
    
    public init(
        name: String,
        image: Image,
        color: Color,
        field: Field
    ) {
        self.name = name
        self.image = image
        self.color = color
        self.field = field
    }
}
