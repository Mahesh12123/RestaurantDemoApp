//
//  FoodDetailVC.swift
//  RestaurantCartDemoApp
//
//  Created by Mahesh Mahara on 2/25/22.
//

import UIKit

class FoodDetailVC: UIViewController {

    @IBOutlet weak var cartBtn: UIButton!
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var foodtitlelbl: UILabel!
    @IBOutlet weak var taxlbl: UILabel!
    @IBOutlet weak var quantityLbl: UILabel!
    @IBOutlet weak var AddtoCartiB: UIButton!
    @IBOutlet weak var backGroundView: UIView!
    @IBOutlet weak var priceLbl: UILabel!
    
    var imgDetailFrom:String?
    var titleDetailFrom:String?
    var taxDetailFrom:String?
    var quantityDetailFrom:String?
    var priceDetailFrom:String?
    
    var foodArray:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgDetail.image = UIImage(named: imgDetailFrom ?? "")
        AddtoCartiB.btnCorners()
        backGroundView.ViewCorners()
        foodtitlelbl.text = titleDetailFrom
        taxlbl.text = "Tax : \(taxDetailFrom ?? "") $"
        quantityLbl.text = "Quantity: \(quantityDetailFrom ?? "")"
        priceLbl.text = "\(priceDetailFrom ?? "") $"
      
        
        
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func cartDetailListBtn(_ sender: UIButton) {
        
        let myorderVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyOrderVCID") as! MyOrderVC
        self.present(myorderVC, animated: true, completion: nil)
        
        
    }
    
    @IBAction func addToCartAction(_ sender: UIButton) {
        
        arraySaveFunc(foodTite: foodtitlelbl.text, imagStaing: imgDetailFrom, index: 1)
      
    }
    
    func arraySaveFunc(foodTite:String?,imagStaing:String? , index:Int?){
        print("hy ==\(String(describing: foodTite)) and\(String(describing: imagStaing)) and \(String(describing: index))")
        
//        UserDefaults.standard.set(foodTite, forKey: "foodTitle")
//        UserDefaults.standard.set(imagStaing, forKey: "foodImg")
    }
    
    
}
