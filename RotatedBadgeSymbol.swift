//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Barkha Maheshwari on 22/05/20.
//  Copyright © 2020 Barkha Maheshwari. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle : Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
        
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
