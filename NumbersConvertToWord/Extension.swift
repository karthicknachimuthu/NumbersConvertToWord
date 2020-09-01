//
//  Extension.swift
//  NumbersConvertToWord
//
//  Created by Karthick Nachimuthu on 01/09/20.
//  Copyright © 2020 Karthick. All rights reserved.
//

import Foundation

extension StringProtocol {
    var firstCapitalized: String { return prefix(1).capitalized + dropFirst() }
}
