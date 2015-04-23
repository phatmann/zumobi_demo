//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class HubViewController: UIViewController {
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if hub == nil {
            hub = SharedZumobiContent.present(parentView: hubView(), parentViewController: self)
        } else {
            SharedZumobiContent.present(hub: hub!)
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if hub != nil {
            SharedZumobiContent.dismiss(hub!)
        }
    }
    
    func hubView() -> UIView {
        return view
    }
    
    private var hub: ZBiMContentHubDelegate?
}