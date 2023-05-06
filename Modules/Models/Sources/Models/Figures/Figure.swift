//
//  Figure.swift
//  Models
//
//  Created by Егор Бадмаев on 10.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import UIKit

/// Represents chess figure.
public class Figure {
    
    // MARK: - Public Properties
    
    /// Name of the figure.
    public let name: String
    /// Icon (image).
    public let image: UIImage?
    /// Color of the figure.
    public let color: Color
    /// Unicode symbol of a chess figure.
    ///
    /// Used in game log. For example: `♞h4`.
    public var symbol: String {
        ""
    }
    /// Square of the board where figure stays on.
    public weak var field: Field?
    
    // MARK: - Init
    
    public init(
        name: String,
        image: UIImage?,
        color: Color,
        field: Field? = nil
    ) {
        self.name = name
        self.image = image
        self.color = color
        self.field = field
    }
}

extension Figure: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        ""
    }
}

