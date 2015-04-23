//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class EmbeddedDemoViewController: HubViewController {
    override func hubView() -> UIView {
        return contentView
    }
    
    @IBOutlet weak var contentView: UIView!
}
