//
//  ShopViewController.swift
//  Midterm
//
//  Created by Kenneth Uyabeme on 11/9/18.
//  Copyright © 2018 Kenneth Uyabeme. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    var coupon: Bool = false
    let shirtValue = 2.0;
    let pantsValue = 3.0; //I forgot what the actually values are
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
        
        let saveButton = UIAlertAction(title: "Save", style: .default, handler: {
            // mandatory line for creating a closure in swift
            action in
            
            // code for what should happen when you click the button
            let data = popup.textFields?[0].text
            self.couponTextField.text = data
            self.coupon = true
            
        })

        
        popup.addAction(saveButton)             // adds the button to your popup box
        popup.addAction(cancelButton)
        
        // 4. Show the alert box!
        present(popup, animated:true)
        
       


    }
    @IBAction func shopButton(_ sender: Any) {
        var subtotal:Double = Double(shirtsTextField.text!)! *  shirtValue + Double(pantsTextField.text!)! * pantsValue
        
        if(coupon){
           subtotal = subtotal * 0.5
        }
        subtotalTextField.text = String(subtotal)
        taxTextField.text = String(subtotal * 0.13)
        totalTextField.text = String(subtotal * 1.13)

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
