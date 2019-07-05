//
//  CompleteScreen.swift
//  PAOV2
//
//  Created by Duong Do Van on 4/10/19.
//  Copyright © 2019 Duong Do Van. All rights reserved.
//

import UIKit

class CompleteScreen: UIViewController {
    
    let btnBackHome: UIButton = {
        let bt = UIButton()
        bt.setTitle("BACK HOME", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .orange
        return bt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews(){
        view.addSubview(btnBackHome)
        btnBackHome.translatesAutoresizingMaskIntoConstraints = false
        btnBackHome.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        btnBackHome.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnBackHome.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        btnBackHome.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive = true
        btnBackHome.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
