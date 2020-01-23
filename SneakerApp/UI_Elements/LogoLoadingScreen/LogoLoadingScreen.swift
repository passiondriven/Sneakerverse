//
//  LogoLoadingScreen.swift
//  SneakerApp
//
//  Created by Dung  on 23.01.20.
//  Copyright © 2020 Dung. All rights reserved.
//

import Foundation
import UIKit


class LogoLoadingScreen:UIView{
    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var activityI: UIActivityIndicatorView!
    @IBOutlet weak var logo: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("LogoLoadingScreen", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit(){
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        //alertView.layer.cornerRadius = 15

        
    }
    
    func startLoadingAnimation(view:UIView){
        activityI.startAnimating()
        view.addSubview(parentView)
    }
    
    @objc func remove(){
        activityI.stopAnimating()
        print("remove")
        parentView.removeFromSuperview()
    }
    
}
