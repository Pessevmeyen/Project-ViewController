//
//  ikinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Furkan Eruçar on 23.03.2022.
//

// Bu controller'ı yeni ekran oluşturduğumuz için yeni ekranı bağlamak için Cocoa Touch Class yoluyla yaptık

import UIKit

class ikinciViewController: UIViewController {

    @IBOutlet weak var ikinciLabel: UILabel!
    
    @IBOutlet weak var bulunanSifreLabel: UILabel!
    
    
    var verilenSifre = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bulunanSifreLabel.text = verilenSifre
    }
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
 
