//
//  SocketIOManager.swift
//  SocketNetwork
//
//  Created by Euijae Hong on 2018. 9. 4..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import Foundation
import SocketIO

class SocketIOManager {
    
    let manager = SocketManager(socketURL: URL(string: "http://192.168.0.84:6000")!, config: [.log(true)])
    
    func addHandlers(){
        
        manager.defaultSocket.on(clientEvent: .connect) {data, ack in
            print("\nSocket connected\n")
        }
        
        manager.defaultSocket.on(clientEvent: .disconnect) {data, ack in
            print("\nSocket disconnected\n")
        }
        
        manager.defaultSocket.on(clientEvent: .error) {data, ack in
            print("\nSocket error\n")
        }
        
        manager.defaultSocket.on(clientEvent: .statusChange) {data, ack in
            print("\nStatus change: \(data)\n")
        }
        
    }
    
    func establishConnection() {
        manager.defaultSocket.connect()
    }
    
    func closeConnection() {
        manager.defaultSocket.disconnect()
    }
}


//class SocketIOManager : NSObject {
//
//    static let sharedInstance = SocketIOManager()
//
//    let manager = SocketManager(socketURL: URL(string: "http://192.168.0.84:1470")!, config: [.log(true), .compress])
//    lazy var socket = manager.defaultSocket
//
//    override init() {
//        super.init()
//
//    }
//
//    func connect() {
//
//        socket.connect()
//
//    }
//
//    func disconnect() {
//
//        socket.disconnect()
//
//    }
//
//    func getImage() {
//
//
//
//
//    }
//
//    func getConnection() {
//
//        let sendingImage:UIImage = UIImage(named:"Test")!
//        let imageData = UIImagePNGRepresentation(sendingImage)
//        let base64encoding = imageData?.base64EncodedString(options: .lineLength64Characters)
//
//        print(socket.status)
//
//        socket.on("connected") { (_, _) in
//
//            print("socket connected")
//
//        }.description
//
//    }
//
//
//    func passImage() {
//
////        socket.emit("wow", SocketData)
//
//        socket.on(clientEvent: .connect) { (data, ack) in
//            print("socket.connect()")
//            print("dataes",data)
//            print("ackes",ack)
//
//        }
//
//
//
//    }
//
//
//}
