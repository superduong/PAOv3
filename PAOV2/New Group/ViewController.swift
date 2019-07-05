//
//  ViewController.swift
//  PAOV2
//
//  Created by Duong Do Van on 4/9/19.
//  Copyright © 2019 Duong Do Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let btnPerson: UIButton = {
        let bt = UIButton()
        bt.setTitle("PERSON", for: .normal)
        bt.backgroundColor = .blue
        return bt
    }()
    
    let btnAction: UIButton = {
        let bt = UIButton()
        bt.setTitle("ACTION", for: .normal)
        bt.setTitleColor( .black, for: .normal)
        bt.backgroundColor = .green
        return bt
    }()
    
    let btnObject: UIButton = {
        let bt = UIButton()
        bt.setTitle("OBJECT", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .purple
        return bt
    }()
    
    let btnPAO: UIButton = {
        let bt = UIButton()
        bt.setTitle("PAO", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .orange
        return bt
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews(){
        view.addSubview(btnPerson)
        btnPerson.translatesAutoresizingMaskIntoConstraints = false
        btnPerson.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height/8).isActive = true
        btnPerson.widthAnchor.constraint(equalToConstant: view.frame.width/3).isActive = true
        btnPerson.heightAnchor.constraint(equalToConstant: view.frame.height/6).isActive = true
        btnPerson.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/4).isActive = true
//        Co topAnchor roi khong can toi centerYAnchor nua
//        btnPerson.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -view.frame.height/4).isActive = true
        btnPerson.addTarget(self, action: #selector(btnPersonPress), for: .touchUpInside)
        
        view.addSubview(btnAction)
        btnAction.translatesAutoresizingMaskIntoConstraints = false
        btnAction.leadingAnchor.constraint(equalTo: btnPerson.trailingAnchor, constant: view.frame.width/6).isActive = true
        btnAction.widthAnchor.constraint(equalToConstant: view.frame.width/3).isActive = true
        btnAction.heightAnchor.constraint(equalToConstant: view.frame.height/6).isActive = true
        btnAction.centerYAnchor.constraint(equalTo: btnPerson.centerYAnchor).isActive = true
        btnAction.addTarget(self, action: #selector(btnActionPress), for: .touchUpInside)
        
        
        view.addSubview(btnObject)
        btnObject.translatesAutoresizingMaskIntoConstraints = false
        btnObject.topAnchor.constraint(equalTo: btnPerson.bottomAnchor, constant: view.frame.height/10).isActive = true
        btnObject.centerXAnchor.constraint(equalTo: btnPerson.centerXAnchor).isActive = true
        btnObject.heightAnchor.constraint(equalToConstant: view.frame.height/6).isActive = true
        btnObject.widthAnchor.constraint(equalToConstant: view.frame.width/3).isActive = true
        btnObject.addTarget(self, action: #selector(btnObjectPress), for: .touchUpInside)
        
        view.addSubview(btnPAO)
        btnPAO.translatesAutoresizingMaskIntoConstraints = false
        btnPAO.leadingAnchor.constraint(equalTo: btnObject.trailingAnchor, constant: view.frame.width/6).isActive = true
        btnPAO.widthAnchor.constraint(equalToConstant: view.frame.width/3).isActive = true
        btnPAO.heightAnchor.constraint(equalToConstant: view.frame.height/6).isActive = true
        btnPAO.centerYAnchor.constraint(equalTo: btnObject.centerYAnchor).isActive = true
        btnPAO.addTarget(self, action: #selector(btnPAOPress), for: .touchUpInside)
        
    }

    @objc func btnPersonPress(_sender: UIButton){
        print("Person")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let personViewController = PersonViewController(collectionViewLayout: layout)
        self.navigationController?.pushViewController(personViewController, animated: true)
    }
    
    @objc func btnActionPress(_sender: UIButton){
        print("Action")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let actionViewController = ActionViewController(collectionViewLayout: layout)
        self.navigationController?.pushViewController(actionViewController, animated: true)
    }
    
    @objc func btnObjectPress(_sender: UIButton){
        print("Object")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let objectViewController = ObjectViewController(collectionViewLayout: layout)
        self.navigationController?.pushViewController(objectViewController, animated: true)
    }
    
    @objc func btnPAOPress(_sender: UIButton){
        print("here")
    }

    
}

