//
//  GamePatternView.swift
//  Rhyplay
//
//  Created by Yohan Wijaya on 23/11/23.
//

import SwiftUI
import SpriteKit
import AVFoundation
 

struct GamePatternView: View{
    
    @Environment (\.dismiss) var dismiss
    @State private var isGameScenePresented = true
    
    var scene: SKScene {
        let scene = GameScenePattern1()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View{
//        GameViewPattern1(scene: scene, isPresented: $isGameScenePresented).edgesIgnoringSafeArea(.all)
//            .onDisappear(){
//                dismiss()
//            }
        SpriteView(scene: scene).edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    GamePatternView()
}
