//
//  BMI.swift
//  chartProject
//
//  Created by Xcode User on 2018-04-03.
//  Copyright © 2018 Xcode User. All rights reserved.
// Git repo initialized

import Foundation

class BMI{
    
    var weight : Double
    var foot : Int
    var inch :Int
    
    
    init(weight: Double, foot : Int, inch : Int){
        self.weight = weight
        self.foot = foot
        self.inch = inch
    }
    
    
    func calculateBMI() -> Double {
        let BMI = Double(String(format:"%.1f",weight / heightToMeters(foot: foot, inch: inch)))
        return BMI!
    }
    
    func calculateStatus() -> Array<String>
    {
        let BMI = calculateBMI()
        let result : [String]
        
        if(BMI <= 18.5)
        {
            result = ["Under Weight","Increased"]
            return result
        }
        else if(BMI >= 18.5 && BMI <= 24.9)
        {
            result = ["Normal Weight","Least"]
            return result
        }
        else if(BMI >= 25 && BMI <= 29.9)
        {
            result = ["Over Weight","Increased"]
            return result
        }
        else if(BMI >= 30 && BMI <= 34.9)
        {
            result = ["Obese Class I","Hight"]
            return result
        }
        else if(BMI >= 35 && BMI <= 39.9)
        {
            result = ["Obese Class II","Very Heigh"]
            return result
        }
        else
        {
            result = ["Obese Class III","Extremly Heigh"]
            return result
        }
    }
    func heightToMeters(foot : Int, inch : Int ) -> Double{
        let height = ((Double)(foot * 12 + inch) * 0.0254);
        return height * height;
    }
}
