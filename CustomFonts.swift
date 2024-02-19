//
//  CustomFonts.swift
//  wwdc2024
//
//  Created by Renan Tavares on 15/02/24.
//

import Foundation
import SwiftUI

class customFonts: ObservableObject {
    init() {
        //Loading custom fonts on the app
        let cfURL = Bundle.main.url(forResource: "Jomolhari-Regular", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
    }
}
