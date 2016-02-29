//
//  CustomCell.swift
//  ImageViewAspectRatioSample
//
//  Copyright © 2016年 CrossBridge. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setThumbnailImage(image: UIImage?) {
        
        thumbnailView.image = image
        
        let constraint = NSLayoutConstraint(
            item: thumbnailView,
            attribute:NSLayoutAttribute.Height,
            relatedBy:NSLayoutRelation.Equal,
            toItem: thumbnailView,
            attribute: NSLayoutAttribute.Width,
            multiplier: (image?.size.height)! / (image?.size.width)!,
            constant:0)
        
        NSLayoutConstraint.activateConstraints([constraint])
    }
    
}
