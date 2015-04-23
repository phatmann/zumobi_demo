//  Created by Tony Mann on 4/23/15.
//  Copyright (c) 2015 7Actions. All rights reserved.

import Foundation

var SharedZumobiContent = ZumobiContent()

class ZumobiContent {
    init() {
        ZBiM.start()
        activateDefaultUser()
    }
    
    func presentModally(#viewController: UIViewController) {
        ZBiM.presentHubWithPresentingViewController(viewController, completion: nil)
    }
    
    func present(#parentView: UIView, parentViewController: UIViewController) -> ZBiMContentHubDelegate {
        return ZBiM.presentHubWithParentView(parentView, parentViewController: parentViewController, completion: nil)
    }
    
    func present(#hub: ZBiMContentHubDelegate) {
        ZBiM.presentExistingContentHub(hub, completion: nil)
    }
    
    func dismiss(hub: ZBiMContentHubDelegate) {
        hub.dismiss(nil)
    }
    
    private func activateDefaultUser() {
        var user = ZBiM.activeUser()
        
        if user == nil {
            let newUserID = ZBiM.generateDefaultUserId()
            var error: NSError?
            let didCreateUser = ZBiM.createUser(newUserID, withTags: [], error: &error)
            
            if didCreateUser  {
                let didActivateUser = ZBiM.setActiveUser(newUserID, error: &error)
                
                if !didActivateUser {
                    println("Could not activate user \(newUserID). \(error)")
                }
            }
            else
            {
                println("Could not create new user \(newUserID). \(error)")
            }
        }
    }
}