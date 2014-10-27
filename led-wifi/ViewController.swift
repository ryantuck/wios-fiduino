//
//  ViewController.swift
//  led-wifi
//
//  Created by Ryan Tuck on 10/27/14.
//  Copyright (c) 2014 Ryan Tuck. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

	// button
	@IBOutlet var offButton : UIButton!
	@IBOutlet var redButton : UIButton!
	@IBOutlet var blueButton : UIButton!
	@IBOutlet var purpleButton : UIButton!
	
	
	@IBAction func offButtonClicked(sender:AnyObject)
	{
		setLEDs(1)
	}
	@IBAction func redButtonClicked(sender:AnyObject)
	{
		setLEDs(2)
	}
	@IBAction func blueButtonClicked(sender:AnyObject)
	{
		setLEDs(3)
	}
	@IBAction func purpleButtonClicked(sender:AnyObject)
	{
		setLEDs(4)
	}
	
	
	func setLEDs(x: Int)
	{
		var u = "http://192.168.1.10/setVal?params=" + String(x)
		
		// weird that it's not a PUT request, but whatever. it works!
		Alamofire.request(.GET,u)
			.responseJSON
			{
				(_,_, JSON, _) in
				println(JSON)
		}
		
	}
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

