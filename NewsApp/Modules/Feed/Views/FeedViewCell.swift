//
//  FeedViewCell.swift
//  NewsApp
//
//  Created by Евгений Самарин on 12.02.2021.
//

import UIKit

class FeedViewCell<T:UIView>: UICollectionViewCell {
    let containerView: T
    override init(frame: CGRect) {
        self.containerView = T(frame: .zero)
        super.init(frame: frame)
        self.contentView.addSubview(self.containerView)
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
    
    override required init?(coder aDecoder: NSCoder) {
        fatalError("Oops")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.containerView.frame = self.contentView.frame
    }
}
