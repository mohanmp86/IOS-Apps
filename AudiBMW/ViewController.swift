//
//  ViewController.swift
//  AudiBMW
//
//  Created by Mohan MP on 4/13/16.
//  Copyright © 2016 Mohan MP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var audiImage: UIImageView!
    @IBOutlet weak var bmwImage: UIImageView!
    @IBOutlet weak var ledQuestion: UISwitch!
    @IBOutlet weak var ledLabel: UILabel!
    @IBOutlet weak var headsUpQuestion: UISwitch!

    @IBOutlet weak var dislbl: UILabel!
    @IBOutlet weak var headsUpLbl: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    var ledAnswer:Int = 0;
    var headsUpAnswer:Int = 0;
    var sliderAnswer: Int = 0;
    var audiResultValue:Int = 0;
    var bmwResultValue:Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    @IBAction func ledAction(sender: UISwitch) {
        
        if ledQuestion != nil {
            if(ledQuestion.on){
             ledAnswer = 5
                //audiResultValue += 5
                ledLabel.text = "Y"
            }else if (!ledQuestion.on) {
                ledAnswer = 0;
                //audiResultValue += 0
                ledLabel.text = "N"
            }
        }
    }
    
    
    
    @IBAction func headsUpAct(sender: UISwitch) {
        
        if(headsUpQuestion != nil){
            if(headsUpQuestion.on){
               headsUpAnswer = 5;
              // bmwResultValue += 5
                dislbl.text = "Y"
            }else if(!headsUpQuestion.on){
                headsUpAnswer = 0;
               // bmwResultValue += 0
                dislbl.text = "N"
            }
        }
    }
    

    
    
    @IBAction func sliderAction(sender: UISlider) {
        
        if(sliderValue != nil){
            sliderAnswer =  Int (sliderValue.value)
            sliderLabel.text = String (stringInterpolationSegment: sliderAnswer)
        }
        
        
    }
    
    
    @IBAction func resultBtn(sender: UIButton) {
        
        if (ledQuestion != nil && headsUpQuestion != nil &&  sliderValue != nil){
        
            if(sliderAnswer > 5){
                audiResultValue =  ledAnswer + sliderAnswer + 4;
                bmwResultValue = 0;
            }else{
                bmwResultValue = headsUpAnswer + sliderAnswer + 4;
                audiResultValue = 0;
            }
            
            if(audiResultValue > bmwResultValue){
               // resultLabel.text = "You are a Audi Person \(audiResultValue) and \(bmwResultValue)"
                resultLabel.text = "You are a Audi Person"
                resultImage.hidden=false
                resultImage.image = UIImage(named: "AudiCarFinal")
                audiImage.hidden = false;
                bmwImage.hidden = true;
                mainLabel.text = "Audi";
            }else {
                //resultLabel.text = "You are a BMW Person \(audiResultValue) and \(bmwResultValue)"
                resultLabel.text = "You are a BMW Person"
               
                resultImage.hidden = false
                resultImage.image = UIImage(named: "BMWCar")
                audiImage.hidden = true
                bmwImage.hidden = false
                mainLabel.text = "BMW"
            }
        }
    }
//
//    
    
    
}

