//
//  ViewController.swift
//  SocketNetwork
//
//  Created by Euijae Hong on 2018. 9. 4..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {
    
    let manager = SocketIOManager()
//    let socket = SocketIOManager()
    let button = UIButton()
    let addressTF = UITextField()
    let portTF = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupViews()
        
        manager.addHandlers()
        manager.establishConnection()
        
    }


}
extension ViewController {
    
    fileprivate func setupViews() {
        
        view.addSubview(button)
        button.frame.size = CGSize(width: 100, height: 100)
        button.center = view.center
        button.setTitle("송신", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func tappedButton(_ sender:UIButton) {
        print("====================")
        print(manager.manager.status)
        print("====================")
        


    }

    
}


