//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import UIKit

class SplitMasterDemoViewController: UITableViewController {
    var tagWasSelected = false
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tagWasSelected = true
        let cell = sender as! UITableViewCell
        let tag = cell.textLabel!.text!
        let navigationController = segue.destinationViewController as! UINavigationController
        let detailsController = navigationController.viewControllers.first! as! SplitDetailsDemoViewController
        
        if tag != "All" {
            detailsController.tags = [tag]
        }
    }
    

}
