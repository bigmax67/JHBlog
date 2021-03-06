//
//  TwoBaseCell.swift
//  demo
//
//  Created by yunna on 2018/8/22.
//  Copyright © 2018年 yunna. All rights reserved.
//

import UIKit

class TwoBaseCell: FactoryCell {
    
    var IV = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        IV.frame = CGRect(x: 20, y: 10, width: 30, height:30)
        self.addSubview(IV)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configUI(model: Model, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: model.reuseId!, for: indexPath)
        self.configCell(model)
        return cell
    }
    
    func configCell(_ model: Model) {
        self.IV.image = UIImage.init(named: model.imagePath)
        self.backgroundColor = UIColor.yellow
    }

}
