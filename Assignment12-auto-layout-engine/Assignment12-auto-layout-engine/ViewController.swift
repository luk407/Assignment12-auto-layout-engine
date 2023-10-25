//
//  ViewController.swift
//  Assignment12-auto-layout-engine
//
//  Created by Luka Gazdeliani on 25.10.23.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet private weak var detailsLabel: UILabel!
    @IBOutlet private weak var coffeeImage: UIImageView!
    @IBOutlet private weak var favIcon: UIImageView!
    @IBOutlet private weak var coffeeNameLabel: UILabel!
    @IBOutlet private weak var coffeeToppingLabel: UILabel!
    @IBOutlet private weak var ratingsIcon: UIImageView!
    @IBOutlet private weak var ratingsLabel: UILabel!
    @IBOutlet private weak var beanIcon: UIImageView!
    @IBOutlet private weak var milkIcon: UIImageView!
    @IBOutlet private weak var descLabel: UILabel!
    @IBOutlet private weak var descTextLabel: UILabel!
    @IBOutlet private weak var sizeLabel: UILabel!
    @IBOutlet private weak var smallView: UIView!
    @IBOutlet private weak var mediumView: UIView!
    @IBOutlet private weak var largeView: UIView!
    @IBOutlet private weak var smallLabel: UILabel!
    @IBOutlet private weak var mediumLabel: UILabel!
    @IBOutlet private weak var largeLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var priceTagLabel: UILabel!
    @IBOutlet private weak var buyView: UIView!
    @IBOutlet private weak var buyLabel: UILabel!
    @IBOutlet private weak var checkoutView: UIView!
    @IBOutlet private weak var beanView: UIView!
    @IBOutlet private weak var milkView: UIView!
    @IBOutlet private weak var lineView: UIView!
    
    
    //MARK: -LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDesign()
    }
    
    //MARK: -Methods
    private func setupDesign() {
        detailsLabel.font = UIFont.boldSystemFont(ofSize: 18)
        detailsLabel.textAlignment = .center
        detailsLabel.text = "Detail"
        
        coffeeNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        coffeeNameLabel.text = coffeeCappuccino.coffeeName
        
        coffeeToppingLabel.textColor = UIColor(red: 0.608, green: 0.608, blue: 0.608, alpha: 1)
        coffeeToppingLabel.font = UIFont.systemFont(ofSize: 12)
        coffeeToppingLabel.sizeToFit()
        coffeeToppingLabel.text = "With \(coffeeCappuccino.coffeeTopping)"
        
        ratingsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        ratingsLabel.text = String(coffeeCappuccino.coffeeRating)
        
        descLabel.font = UIFont.boldSystemFont(ofSize: 16)
        descLabel.text = "Description"
        
        descTextLabel.textColor = UIColor(red: 0.608, green: 0.608, blue: 0.608, alpha: 1)
        descTextLabel.font = UIFont.systemFont(ofSize: 14)
        descTextLabel.text = coffeeCappuccino.coffeeDescription
        
        sizeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        sizeLabel.text = "Size"
        
        smallView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        smallView.layer.cornerRadius = 12
        smallView.layer.borderWidth = 1
        smallView.layer.borderColor = UIColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1).cgColor
        
        mediumView.layer.backgroundColor = UIColor(red: 1, green: 0.959, blue: 0.933, alpha: 1).cgColor
        mediumView.layer.cornerRadius = 12
        mediumView.layer.borderWidth = 1
        mediumView.layer.borderColor = UIColor(red: 0.776, green: 0.486, blue: 0.306, alpha: 1).cgColor

        largeView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        largeView.layer.cornerRadius = 12
        largeView.layer.borderWidth = 1
        largeView.layer.borderColor = UIColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1).cgColor
        
        smallLabel.font = UIFont.boldSystemFont(ofSize: 14)
        smallLabel.textAlignment = .center
        smallLabel.text = "S"
        
        mediumLabel.font = UIFont.boldSystemFont(ofSize: 14)
        mediumLabel.textAlignment = .center
        mediumLabel.text = "M"
        
        largeLabel.font = UIFont.boldSystemFont(ofSize: 14)
        largeLabel.textAlignment = .center
        largeLabel.text = "L"
        
        priceLabel.textColor = UIColor(red: 0.608, green: 0.608, blue: 0.608, alpha: 1)
        priceLabel.font = UIFont.systemFont(ofSize: 14)
        priceLabel.text = "Price"
        
        priceTagLabel.textColor = UIColor(red: 0.776, green: 0.486, blue: 0.306, alpha: 1)
        priceTagLabel.font = UIFont.boldSystemFont(ofSize: 18)
        priceTagLabel.text = "$ \(coffeeCappuccino.coffeePrice)"
        
        buyView.layer.backgroundColor = UIColor(red: 0.776, green: 0.486, blue: 0.306, alpha: 1).cgColor
        buyView.layer.cornerRadius = 16
        
        buyLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        buyLabel.font = UIFont.boldSystemFont(ofSize: 16)
        buyLabel.textAlignment = .center
        buyLabel.text = "Buy Now"

        favIcon.image = UIImage(systemName: SFSymbols.favouriteIcon)
        beanIcon.image = UIImage(systemName: SFSymbols.coffeeBeansIcon)
        milkIcon.image = UIImage(systemName: SFSymbols.milkIcon)
        ratingsIcon.image = UIImage(systemName: SFSymbols.ratingStarIcon)
        coffeeImage.image = UIImage(named: "Rectangle 1706.png")
        
        checkoutView.layer.shadowOpacity = 1
        checkoutView.layer.shadowRadius = 24
        checkoutView.layer.shadowColor = UIColor(red: 0.896, green: 0.896, blue: 0.896, alpha: 0.25).cgColor
        checkoutView.layer.cornerRadius = 24
        
        beanView.layer.cornerRadius = 14
        beanView.layer.backgroundColor = UIColor(red: 0.975, green: 0.975, blue: 0.975, alpha: 1).cgColor
        
        milkView.layer.cornerRadius = 14
        milkView.layer.backgroundColor = UIColor(red: 0.975, green: 0.975, blue: 0.975, alpha: 1).cgColor
        
        lineView.backgroundColor = .black
    }

}

class Coffee {
    let coffeeName: String
    var coffeeRating: Double
    var coffeePrice: Double
    let coffeeDescription: String
    var coffeeTopping: String
    
    init(coffeeName: String, coffeeRating: Double, coffeePrice: Double, coffeeDescription: String, coffeeTopping: String) {
        self.coffeeName = coffeeName
        self.coffeeRating = coffeeRating
        self.coffeePrice = coffeePrice
        self.coffeeDescription = coffeeDescription
        self.coffeeTopping = coffeeTopping
    }
}

let coffeeCappuccino = Coffee(
    coffeeName: "Cappuccino",
    coffeeRating: 4.8,
    coffeePrice: 4.53,
    coffeeDescription: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
    coffeeTopping: "Chocolate")
