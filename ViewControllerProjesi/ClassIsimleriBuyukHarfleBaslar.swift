//
//  ikinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Furkan Eruçar on 23.03.2022.
//

// Bu controller'ı yeni ekran oluşturduğumuz için yeni ekranı bağlamak için Cocoa Touch Class yoluyla yaptık

import UIKit

class ClassIsimleriBuyukHarfleBaslar: UIViewController {

    @IBOutlet weak var ikinciLabel: UILabel!
    @IBOutlet weak var bunebicimlabelismi: UILabel!
    
    var verilenSifre = "hebelek"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Burada da bir seyleri degistirelim :)
        
        bunebicimlabelismi.text = verilenSifre
    }

}
 
