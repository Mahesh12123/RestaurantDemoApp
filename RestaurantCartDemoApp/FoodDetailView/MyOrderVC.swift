//
//  MyOrderVC.swift
//  RestaurantCartDemoApp
//
//  Created by Mahesh Mahara on 2/26/22.
//

import UIKit

class MyOrderVC: UIViewController {
    
    
    @IBOutlet weak var myOrdertableview: UITableView!
    @IBOutlet weak var paymentView: UIView!
    @IBOutlet weak var paymnetBtnIB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paymentView.ViewCorners()
        paymnetBtnIB.btnCorners()
        myOrdertableview.delegate = self
        myOrdertableview.dataSource = self
        let nib = UINib(nibName: "MyorderListCell", bundle: nil)
        myOrdertableview.register(nib, forCellReuseIdentifier: "MyOrderCellID")
      
    }
    
 
    
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

}

extension MyOrderVC : UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myOrdertableview.dequeueReusableCell(withIdentifier: "MyOrderCellID", for: indexPath) as! MyorderListCell
   
        return cell
    }
    
    
}
