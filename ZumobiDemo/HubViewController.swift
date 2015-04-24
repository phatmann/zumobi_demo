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
        dismissHub()
    }
    
    func hubView() -> UIView {
        return view
    }
    
    var tags: [String]? {
        didSet {
            if isViewLoaded() {
                presentNewHub()
            }
        }
    }
    
    var hub: ZBiMContentHubDelegate?
    
    private func presentNewHub() {
        dismissHub()
        hub = SharedZumobiContent.present(parentView: hubView(), parentViewController: self, tags: tags)
    }
    
    private func dismissHub() {
        if hub != nil {
            SharedZumobiContent.dismiss(hub!)
        }
    }
}