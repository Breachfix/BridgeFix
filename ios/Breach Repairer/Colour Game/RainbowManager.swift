//
//  RainbowManager.swift
//  rainbow
//
//  Created by Jack Ntihaniraho on 2022-01-28.
//

import CoreMotion

class RainbowManager{
    private var rainbowManager = CMHeadphoneMotionManager()
    var pitch = 0.0
    var roll = 0.0
    var yaw = 0.0
    
    init(){
        rainbowManager.startDeviceMotionUpdates(to: OperationQueue()){ [weak self] motion, error in
            guard let self = self, let motion = motion else {return}
            self.pitch = motion.attitude.pitch
            self.roll = motion.attitude.roll
            self.yaw = motion.attitude.yaw
        }
    }
    deinit{
        rainbowManager.stopDeviceMotionUpdates()
    }
}
