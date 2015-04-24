//  Created by Tony Mann on 4/24/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideTraitCollectionForSize(view.bounds.size)
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {    super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        overrideTraitCollectionForSize(size)
    }
    
    private func overrideTraitCollectionForSize(size: CGSize) {
        var traitCollection: UITraitCollection? = nil
        
        if size.width > size.height {
            traitCollection = UITraitCollection(horizontalSizeClass: .Regular)
        }
        
        for viewController in childViewControllers as! [UIViewController] {
            setOverrideTraitCollection(traitCollection, forChildViewController: viewController)
        }
    }
}
