//
//  ViewController.swift
//  PBPopupListDemo
//
//  Created by Shahabuddin on 14/11/18.
//  Copyright © 2018 Peerbits. All rights reserved.
//

import UIKit
import PBPopupList

class ViewController: UIViewController
{
    @IBOutlet var lblValue: UILabel!
    
    @IBOutlet var btnShowpopup: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnPbPopupAction(_ sender: UIButton)
    {
        //let arrayVal = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
        let arrayVal = [1,2,3.9,4.456458,5.987,"sv","Jan","Feb","Mar",1,2,3,"😛","😍"] as [Any]
        
        let popupTest: PBPopupList = PBPopupList(Viewcontroller: self)
        popupTest.isSearch = true
        popupTest.headerColor = .brown
        popupTest.searchPlaceHolder = "Search"
        popupTest.rowHeight = 50
        popupTest.cellBackgroundColor = .white
        popupTest.isMultilineModeEnabled = true
        popupTest.cellTextColor = .blue
        
        popupTest.createTableview(arrayVal, withTitle: "Select") { (index) in
            
            print("array value:\(arrayVal)")
            print("search result is:\(arrayVal[index])")
            self.lblValue.text = (arrayVal[index] as AnyObject).description
        }
    }
}

