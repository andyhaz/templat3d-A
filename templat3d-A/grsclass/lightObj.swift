//
//  light.swift
//  templat3d-A
//
//  Created by andyhaz on 9/17/21.
//

import Foundation
import SceneKit
import Quartz

class lightObj {
    
    func spotOmni() -> SCNNode {
        let lightOmni = SCNLight()
        lightOmni.type = SCNLight.LightType.omni
        let lightNode1 = SCNNode()
        lightNode1.light = lightOmni
        lightNode1.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)

        return lightNode1
    }
}
