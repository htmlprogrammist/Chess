//
//  Figures.swift
//  Models
//
//  Created by Егор Бадмаев on 10.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

/// Represents chess figure.
public struct Figure: Movable {
    /// Name of the figure.
    public let name: String
    /// Icon (image).
    ///
    /// Unicode.
    public let image: String
}
