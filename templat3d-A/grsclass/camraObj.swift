//
//  camre.swift
//  templat3d-A
//
//  Created by andyhaz on 9/17/21.
//

import Foundation
import SceneKit
import QuartzCore

class cammraObj {
    
    func cam() -> SCNNode {
        // Create and add a camera to the scene:
        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(x: 0.0, y: 0.0, z: 3.0)
       // cameraNode.position = SCNVector3(x: -3.0, y: 3.0, z: 3.0)
        
        return cameraNode
    }// cam
}//end camea
