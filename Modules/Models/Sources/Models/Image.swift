//
//  Image.swift
//  Models
//
//  Created by Егор Бадмаев on 10.04.2023.
//  Copyright © 2023 Егор Бадмаев. All rights reserved.
//

import UIKit

/// Wrapper over the way we show our figures.
// TODO: Update it so can be either - Unicode (`String`), `UIImage`, `NSImage` object.
public final class Image {
    public let image: UIImage
    
    // MARK: - Init
    
    public init(image: UIImage) {
        self.image = image
    }
}
