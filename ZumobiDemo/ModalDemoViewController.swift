//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class ModalDemoViewController: UIViewController {
    @IBAction func showButtonTapped() {
        SharedZumobiContent.presentModally(viewController: self)
    }
}

