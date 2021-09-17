//
//  object.swift
//  templat3d-A
//
//  Created by andyhaz on 9/17/21.
//

import Foundation
import SceneKit
import Quartz

class threeDObject{

//add a floor
    func addFloorObj() -> SCNNode {
        
        let floor = SCNNode()
        let floorGeometry = SCNFloor()
        floor.geometry = floorGeometry
        
        return floor
    }
    
//loads and object for art addests
    func loadObj(name:String) -> SCNNode {
        let deaNode = SCNNode(named: name)
        deaNode.position = SCNVector3(x: 3.0, y: 2.0, z: 0.0)
       return deaNode // rootNode.addChildNode(deaNode)
    }
    
//
    func addPlanObj() -> SCNNode {
        let plane = SCNPlane(width: 1.0, height: 1.0)
        plane.firstMaterial?.diffuse.contents = NSColor.blue
        let planeNode = SCNNode(geometry: plane)
       return planeNode
    }//
    
}
