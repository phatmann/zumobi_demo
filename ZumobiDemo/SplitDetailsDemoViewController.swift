//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class SplitDetailsDemoViewController: HubViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftItemsSupplementBackButton = true
        navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
    }
}
