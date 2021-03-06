//
//  PageView.swift
//  Landmarks
//
//  Created by Barkha Maheshwari on 27/05/20.
//  Copyright © 2020 Barkha Maheshwari. All rights reserved.
//

import SwiftUI

struct PageView<Page: View> : View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map{
            UIHostingController(rootView: $0)
        }
    }
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) } )
            .aspectRatio(3/2,contentMode: .fit)
    }
}
