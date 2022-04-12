//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Furkan Eruçar on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() { // Uygulama ilk açıldığında karşımıza çıkacak ekran ve kodlar. Herhangi bir işlemden sonra tekrar bu viewDidLoad çağrılmaz
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("view did load")

        
        
    }
    
    

    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    
    
    override func viewWillAppear(_ animated: Bool) { // kullanıcıdan giriş yapıp tekrar giriş alacağımız sayfaya geldiğimizde giriş alanını temizlemek için buraya yazdık.
        print("view  will appear")
        
        textField.text = ""
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    
    @IBAction func kontrolEtClicked(_ sender: Any) {
        
        
        alinanSifre = textField.text!
        
        if alinanSifre == "atil" {
            
            performSegue(withIdentifier: "toIkinciVc", sender: nil)
            
        } else {
            birinciLabel.text = "Şifreniz Yanlış"
        }
        
        
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // Diğer viewControllerı tanımlamak için kullanıyoruz
        
        
        if segue.identifier == "toIkinciVc" {
            
            
            let destinationVc = segue.destination as! ikinciViewController // Diğer viewcontrol'a bağlanmak için casting yapmamız lazım (as)
            destinationVc.verilenSifre = alinanSifre
            
            
            
        }
        
        
    }
    
    
    
    

}

