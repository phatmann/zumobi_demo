//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class ModalDemoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showButtonTapped() {
        SharedZumobiContent.present(viewController: self)
    }
}

