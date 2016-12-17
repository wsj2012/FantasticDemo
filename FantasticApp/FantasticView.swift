//
//  FantasticView.swift
//  FantasticApp
//
//  Created by sj_W on 2016/12/17.
//  Copyright © 2016年 pingan. All rights reserved.
//

import UIKit

class FantasticView: UIView {
    
    let colors: [UIColor] = [.red, .yellow, .orange, .purple, .blue, .gray]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (timer) in
            UIView.animate(withDuration: 2, animations: {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            })
        }
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
