//
//  PersonCell.swift
//  PAOV2
//
//  Created by Duong Do Van on 4/10/19.
//  Copyright © 2019 Duong Do Van. All rights reserved.
//

import UIKit

protocol PersonCVCellDelegate: class {
    func didChooseAnswer(btnIndex: Int)
}

class PersonCell: UICollectionViewCell {
    
    //    var myCollectionView: UICollectionView!
    
    var btn1: UIButton!
    var btn2: UIButton!
    var btn3: UIButton!
    var btn4: UIButton!
    var btnsArray = [UIButton]()
    
    weak var delegate: PersonCVCellDelegate?
    
    var question: Person? {
        didSet {
            guard let unwrappedQue = question else { return }
            imgView.image = UIImage(named: unwrappedQue.imgName)
            imgView2.image = UIImage(named: unwrappedQue.imgName2)
            lblNum.text = unwrappedQue.numText
            lblNum2.text = unwrappedQue.numText2
            lblPao.text = unwrappedQue.personText
            lblPao2.text = unwrappedQue.personText2
            /*
             btn1.setTitle(unwrappedQue.options[0], for: .normal)
             btn2.setTitle(unwrappedQue.options[1], for: .normal)
             btn3.setTitle(unwrappedQue.options[2], for: .normal)
             btn4.setTitle(unwrappedQue.options[3], for: .normal)
             
             if unwrappedQue.isAnswered {
             btnsArray[unwrappedQue.correctAns].backgroundColor=UIColor.green
             if unwrappedQue.wrongAns >= 0 {
             btnsArray[unwrappedQue.wrongAns].backgroundColor=UIColor.red
             }
             }
             */
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        //        btnsArray = [btn1, btn2, btn3, btn4]
    }
    
//    @objc func btnOptionAction(sender: UIButton) {
//        guard let unwrappedQue = question else { return }
//        if !unwrappedQue.isAnswered {
//            delegate?.didChooseAnswer(btnIndex: sender.tag)
//        }
//    }
    /*
     override func prepareForReuse() {
     btn1.backgroundColor=UIColor.white
     btn2.backgroundColor=UIColor.white
     btn3.backgroundColor=UIColor.white
     btn4.backgroundColor=UIColor.white
     }
     */
    func setupViews() {
        
        addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive=true
        imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 1).isActive = true
        //        imgView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive=true
        imgView.widthAnchor.constraint(equalToConstant: self.frame.width/2).isActive=true
        imgView.heightAnchor.constraint(equalToConstant: self.frame.height/4).isActive = true
        
        addSubview(imgView2)
        imgView2.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        //        imgView2.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 1).isActive = true
        imgView2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 2).isActive = true
        //        imgView2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 2).isActive = true
        imgView2.widthAnchor.constraint(equalToConstant: self.frame.width/2).isActive=true
        imgView2.heightAnchor.constraint(equalToConstant: self.frame.height/4).isActive = true
        
//          addConstraintsWithFormat("H:|-16-[v0]|", views: imgView)
        
        //        imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        //        imgView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        addSubview(lblNum)
        //        lblQue.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 1).isActive=true
        lblNum.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
//        lblNum.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive=true
//        lblNum.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12).isActive=true
        lblNum.centerXAnchor.constraint(equalTo: imgView.centerXAnchor).isActive = true
        lblNum.heightAnchor.constraint(equalToConstant: 100).isActive=true
        
        addSubview(lblNum2)
        lblNum2.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        lblNum2.centerXAnchor.constraint(equalTo: imgView2.centerXAnchor).isActive = true
        lblNum2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        addSubview(lblPao)
        lblPao.topAnchor.constraint(equalTo: self.topAnchor, constant: 120).isActive = true
        lblPao.centerXAnchor.constraint(equalTo: imgView.centerXAnchor).isActive = true
//        lblPao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
//        lblPao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12).isActive = true
        
        addSubview(lblPao2)
        lblPao2.topAnchor.constraint(equalTo: self.topAnchor, constant: 120).isActive = true
        lblPao2.centerXAnchor.constraint(equalTo: imgView2.centerXAnchor).isActive = true
        
        
        
    }
    
    let imgView: UIImageView = {
        let v=UIImageView()
        //        v.image = #imageLiteral(resourceName: "img2")
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let imgView2: UIImageView = {
        let v=UIImageView()
        //        v.image = #imageLiteral(resourceName: "img2")
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let lblNum: UILabel = {
        let lbl=UILabel()
        lbl.textColor = .red
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 36)
        lbl.numberOfLines=4
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblNum2: UILabel = {
        let lbl=UILabel()
        lbl.textColor = .red
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 36)
        lbl.numberOfLines=4
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblPao: UILabel = {
        let lbl=UILabel()
        lbl.textColor = .blue
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 26)
        lbl.numberOfLines=4
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblPao2: UILabel = {
        let lbl=UILabel()
        lbl.textColor = .blue
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 26)
        lbl.numberOfLines=4
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

