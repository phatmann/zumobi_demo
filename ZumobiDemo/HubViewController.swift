//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class HubViewController: UIViewController {
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if hub == nil {
            presentNewHub()
        } else {
            SharedZumobiContent.present(hub: hub!)
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        
    }
    
    func hubView() -> UIView {
        return view
    }
    
    var tags: [String]? {
        didSet {
            presentNewHub()
        }
    }
    
    private var hub: ZBiMContentHubDelegate?
    
    private func presentNewHub() {
        if hub != nil {
            SharedZumobiContent.dismiss(hub!)
        }
        
        hub = SharedZumobiContent.present(parentView: hubView(), parentViewController: self, tags: tags)
    }
}