//
//  ShopViewController.swift
//  Midterm
//
//  Created by Kenneth Uyabeme on 11/9/18.
//  Copyright © 2018 Kenneth Uyabeme. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var shirtsTextField: UITextField!
    @IBOutlet weak var pantsTextField: UITextField!
    @IBOutlet weak var couponTextField: UITextField!
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var taxTextField: UITextField!
    @IBOutlet weak var totalTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func couponButton(_ sender: Any) {
        let popup = UIAlertController(title: "Coupon", message: "Add Coupon", preferredStyle: .alert)
    
        popup.addTextField()

        let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)  // creating & configuring the button
        let saveButton = UIAlertAction(title: "Save", style: .default, handler: nil)
        
        popup.addAction(saveButton)             // adds the button to your popup box
        popup.addAction(cancelButton)
        
        // 4. Show the alert box!
        present(popup, animated:true)

    }
    @IBAction func shopButton(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
