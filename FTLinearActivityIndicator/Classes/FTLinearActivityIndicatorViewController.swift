//
//  FTLinearActivityIndicatorViewController.swift
//  FTLinearActivityIndicator
//
//  Created by Srdan Stanic on 11/10/2018.
//

import UIKit

class FTLinearActivityIndicatorViewController: UIViewController {

    private (set) var indicator: FTLinearActivityIndicator?

    override func viewDidLoad() {
        super.viewDidLoad()
        //let frame = CGRect(x: UIApplication.shared.statusBarFrame.width - 74, y: 6, width: 44, height: 4)
        let indicator = FTLinearActivityIndicator(frame: .zero)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indicator)
        let topConstraint = NSLayoutConstraint(item: indicator,
                                               attribute: NSLayoutConstraint.Attribute.top,
                                               relatedBy: NSLayoutConstraint.Relation.equal,
                                               toItem: view,
                                               attribute: NSLayoutConstraint.Attribute.top,
                                               multiplier: 1.0,
                                               constant: 0)
        let leftConstraint = NSLayoutConstraint(item: indicator,
                                                attribute: NSLayoutConstraint.Attribute.left,
                                                relatedBy: NSLayoutConstraint.Relation.equal,
                                               toItem: view,
                                               attribute: NSLayoutConstraint.Attribute.left,
                                               multiplier: 1.0,
                                               constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: indicator,
                                                  attribute: NSLayoutConstraint.Attribute.bottom,
                                                  relatedBy: NSLayoutConstraint.Relation.equal,
                                               toItem: view,
                                               attribute: NSLayoutConstraint.Attribute.bottom,
                                               multiplier: 1.0,
                                               constant: 0)
        let rightConstraint = NSLayoutConstraint(item: indicator,
                                                 attribute: NSLayoutConstraint.Attribute.right,
                                                 relatedBy: NSLayoutConstraint.Relation.equal,
                                               toItem: view,
                                               attribute: NSLayoutConstraint.Attribute.right,
                                               multiplier: 1.0,
                                               constant: 0)
        topConstraint.isActive = true
        leftConstraint.isActive = true
        bottomConstraint.isActive = true
        rightConstraint.isActive = true
        indicator.hidesWhenStopped = false
        indicator.startAnimating()
        self.indicator = indicator

    }

}
