//
//  LocationBottomView.swift
//  LocationPicker
//
//  Created by sadman samee on 11/20/19.
//  Copyright © 2019 almassapargali. All rights reserved.
//

import UIKit

class LocationBottomView: UIView {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btnSelect: UIButton!
    @IBOutlet weak var btnLocate: UIButton!
    @IBOutlet var contentView: UIView!
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "LocationBottomView", bundle: bundle)
        //Bundle.main.loadNibNamed("LocationBottomView", owner: self, options: nil)
        if let nibView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            //nibView.addSubview(contentView)
            contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        }
    }
    
    
}
