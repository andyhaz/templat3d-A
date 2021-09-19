//
//  GameViewController.swift
//  templat3d-A
//
//  Created by andyhaz on 9/17/21.
//

import SceneKit
import QuartzCore

class GameViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let scnView = self.view as! SCNView
            scnView.scene = MyScene()
            scnView.backgroundColor = NSColor.black
            scnView.autoenablesDefaultLighting = true
            scnView.allowsCameraControl = true
    }
}

class MyScene: SCNScene {
  
  override init() {
    super.init()
    //set up cam
    let grsCam = cammraObj()
    //set up light
    let grsLight = lightObj()
    //set up object
    let grsObj = threeDObject()
    
    //add cam
    rootNode.addChildNode(grsCam.cam())
    
    //add light
    rootNode.addChildNode(grsLight.spotOmni())
    
    //add floor
    rootNode.addChildNode(grsObj.addFloorObj())
    
    //add plane
    rootNode.addChildNode(grsObj.addPlanObj())

    //load and extanle object
    rootNode.addChildNode(grsObj.loadObj(name:"art.scnassets/boxA.dae"))
    
    /*
    //
    let sphere = SCNSphere(radius: 1.0)
    sphere.firstMaterial?.diffuse.contents = NSColor.red
    let sphereNode = SCNNode(geometry: sphere)
    sphereNode.position = SCNVector3(x: 0.0, y: 3.0, z: 0.0)
        
    rootNode.addChildNode(sphereNode)
    //
    let box = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.2)
    box.firstMaterial?.diffuse.contents = NSColor.green
    let boxNode = SCNNode(geometry: box)
    boxNode.position = SCNVector3(x: 0.0, y: -3.0, z: 0.0)
        
    rootNode.addChildNode(boxNode)
        
    let cylinder = SCNCylinder(radius: 1.0, height: 1.0)
    cylinder.firstMaterial?.diffuse.contents = NSColor.yellow
    let cylinderNode = SCNNode(geometry: cylinder)
    cylinderNode.position = SCNVector3(x: -3.0, y: 3.0, z: 0.0)
        
    rootNode.addChildNode(cylinderNode)
        
    let torus = SCNTorus(ringRadius: 1.0, pipeRadius: 0.3)
    torus.firstMaterial?.diffuse.contents = NSColor.white
    let torusNode = SCNNode(geometry: torus)
    torusNode.position = SCNVector3(x: -3.0, y: 0.0, z: 0.0)
        
    rootNode.addChildNode(torusNode)
        
    let capsule = SCNCapsule(capRadius: 0.3, height: 1.0)
    capsule.firstMaterial?.diffuse.contents = NSColor.gray
    let capsuleNode = SCNNode(geometry: capsule)
    capsuleNode.position = SCNVector3(x: -3.0, y: -3.0, z: 0.0)
        
    rootNode.addChildNode(capsuleNode)
        
    let cone = SCNCone(topRadius: 1.0, bottomRadius: 2.0, height: 1.0)
    cone.firstMaterial?.diffuse.contents = NSColor.magenta
    let coneNode = SCNNode(geometry: cone)
    coneNode.position = SCNVector3(x: 3.0, y: -2.0, z: 0.0)
        
    rootNode.addChildNode(coneNode)*/
        
  /*  let tube = SCNTube(innerRadius: 1.0, outerRadius: 2.0, height: 1.0)
    tube.firstMaterial?.diffuse.contents = NSColor.brown
    let tubeNode = SCNNode(geometry: tube)
    tubeNode.position = SCNVector3(x: 3.0, y: 2.0, z: 0.0)
    rootNode.addChildNode(tubeNode)*/
  }
    
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension SCNNode {

    convenience init(named name: String) {
        self.init()

        guard let scene = SCNScene(named: name) else {
            return
        }

        for childNode in scene.rootNode.childNodes {
            addChildNode(childNode)
        }
    }

}


/*
    @objc
    func handleClick(_ gestureRecognizer: NSGestureRecognizer) {
        // retrieve the SCNView
        let scnView = self.view as! SCNView
        
        // check what nodes are clicked
        let p = gestureRecognizer.location(in: scnView)
        let hitResults = scnView.hitTest(p, options: [:])
        // check that we clicked on at least one object
        if hitResults.count > 0 {
            // retrieved the first clicked object
            let result = hitResults[0]
            
            // get its material
            let material = result.node.geometry!.firstMaterial!
            
            // highlight it
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.5
            
            // on completion - unhighlight
            SCNTransaction.completionBlock = {
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 0.5
                
                material.emission.contents = NSColor.black
                
                SCNTransaction.commit()
            }
            
            material.emission.contents = NSColor.red
            
            SCNTransaction.commit()
        }
    }
}
*/
