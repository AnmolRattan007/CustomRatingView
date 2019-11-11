//
//  CustomRatingView.swift
//  CustomRatingView
//
//  Created by anmol rattan on 11/11/19.
//  Copyright © 2019 anmol rattan. All rights reserved.
//

import UIKit

 class CustomRatingView: UIView {

    @IBOutlet var ratingButtons: [UIButton]!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var contentView: UIView!
    
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("RatingView", owner: self, options: nil)
         contentView.fixInView(self)
       
    }
    
    

    
    @IBAction func cancelBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func ratingBtnPressed(_ sender: UIButton) {
        
        
        for button in ratingButtons{
            button.setImage(#imageLiteral(resourceName: "icons8-star-50"), for: .normal)
        }
        
        for button in ratingButtons{
            if button.tag <= sender.tag{
                button.setImage(#imageLiteral(resourceName: "FilledStar"), for: .normal)
            }
        }
        
    }
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
       
        
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}
