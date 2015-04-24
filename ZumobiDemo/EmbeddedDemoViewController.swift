//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class EmbeddedDemoViewController: HubViewController {
    let ChooserTags: [String?] = [nil, "tag1", "tag2", "tag3"]
    
    override func hubView() -> UIView {
        return contentView
    }
    
    @IBAction func tagChooserValueChanged(sender: UISegmentedControl) {
        if let tag = ChooserTags[sender.selectedSegmentIndex] {
            tags = [tag]
        } else {
            tags = nil
        }
    }
    
    @IBOutlet weak var contentView: UIView!
}
