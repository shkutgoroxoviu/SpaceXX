//
//  SpaceshipInfoFooter.swift
//  SpaceX
//
//  Created by Гурген Хоршикян on 30.08.2022.
//

import Foundation
import UIKit

protocol SpaceshipInfoFooterDelegate {
    func showLaunches()
}

/// Класс, который отвечает за нижнюю часть таблицы
class SpaceshipInfoFooter: UITableViewHeaderFooterView {
    
    static let reuseId = "SpaceshipInfoFooter"
    
    var delegate: SpaceshipInfoFooterDelegate?
    
    @IBOutlet weak var showLaunchesButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }
    
    func configUI() {
        showLaunchesButton.layer.cornerRadius = 20
        showLaunchesButton.titleLabel?.font = UIFont(name: "MuktaMahee-Regular", size: 20)
    }
    
    @IBAction func showLaunches(_ sender: Any) {
        delegate?.showLaunches()
    }
}
