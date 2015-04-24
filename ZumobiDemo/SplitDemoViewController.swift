//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class SplitDemoViewController: UISplitViewController, UISplitViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
        if let primaryAsNavController = primaryViewController as? UINavigationController {
            if let masterController = primaryAsNavController.topViewController as? SplitMasterDemoViewController {
                return !masterController.tagWasSelected
            }
        }
        
        return true
    }
}
