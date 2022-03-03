//
//  ViewController.swift
//  RestaurantCartDemoApp
//
//  Created by Mahesh Mahara on 2/25/22.
//

import UIKit

class ViewController: UIViewController {

    var foodImageName = ["Carrabba","chickenPasta","CrackerBarrel","Desserts","goldenCorral","longHorn","Olive Garden","Pizza","redlobster","Salad"]
    var foodPrice = ["24","47","60","90","80","58","98","300","600","700"]
    var foodName = ["Carrabba","Chicken Pasta","Cracker Barrel","Desserts","Golden Corral","longHorn","Olive Garden","Pizza","Redlobster","Salad"]
    var foodTax = ["4","3","6","8","0","1","6","8","0","4"]
    
    
    @IBOutlet weak var foodListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodListTableView.delegate = self
        foodListTableView.dataSource = self
        let nib = UINib(nibName: "FoodCell", bundle: nil)
        foodListTableView.register(nib, forCellReuseIdentifier: "foodCelliD")
       
    }


}

extension ViewController :UITableViewDelegate ,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  foodImageName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = foodListTableView.dequeueReusableCell(withIdentifier: "foodCelliD", for: indexPath) as! FoodCell
        cell.itemsNameLbl.text = foodName[indexPath.row]
        cell.itemsFoodImg.image =  UIImage(named: foodImageName[indexPath.row])
        cell.itemsTaxLbl.text = "Tax : \(foodTax[indexPath.row]) $"
        cell.itemspriceLbl.text = "\(foodPrice[indexPath.row]) $"
        cell.itemsquantitylbl.text = "Quantity: 1"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("food\(indexPath.row)")
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FoodDetailVCID") as! FoodDetailVC
        detailVC.imgDetailFrom = foodImageName[indexPath.row]
        detailVC.titleDetailFrom = foodName[indexPath.row]
        detailVC.taxDetailFrom = foodTax[indexPath.row]
        detailVC.quantityDetailFrom = "2"
        detailVC.priceDetailFrom = foodPrice[indexPath.row]
        self.present(detailVC, animated: true, completion: nil)
    }
    
}
