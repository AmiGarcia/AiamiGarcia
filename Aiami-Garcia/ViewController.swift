//
//  ViewController.swift
//  Aiami-Garcia
//
//  Created by Ami Garcia on 4/17/15.
//  Copyright (c) 2015 Ami Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var tapRecognizer: UITapGestureRecognizer!

    @IBOutlet var pinchRecognizer: UIPinchGestureRecognizer!
    
//    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var imageThinkCreatively: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
   
    var tap : Int = 0
    var pivy : Bool = false
    var iVolunteer : Bool = false
    var meEmpresta : Bool = false
    var control : Int = 0
    
    var swiftColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
    
    var controlApps : Int = 0
    
    var xImg : CGFloat = 0
    var yImg : CGFloat = 0
    var wImg : CGFloat = 0
    var hImg : CGFloat = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        imageThinkCreatively.addGestureRecognizer(pinchRecognizer)

        
        
    //-------------------Setting anchor points in the first image --------------------//
        setAnchorPoint(CGPointMake(0.55, 0.7), view: imageThinkCreatively)

    }
    @IBAction func scaleImage(sender: UIPinchGestureRecognizer) {
        
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale = 1
        nextCenario()
    }
    @IBAction func tapDetected(sender: UITapGestureRecognizer){
        tap++
        println("DEU UM TAPA LOUCOOOOO!!!!")
        println(pivy)
        
        switch(controlApps){
        case 0:
            switch(tap){
            case 1:
                imageThinkCreatively.image = UIImage(named: "pivyFind")
            case 2:
                println("Dois")
                imageThinkCreatively.image = UIImage(named: "pivyMap")
            case 3:
                println("Tres")
                imageThinkCreatively.image = UIImage(named: "pivyCollection")
            case 4:
                println("Quatro")
                imageThinkCreatively.image = UIImage(named: "pivyDetail")
            case 5:
                println("Cinco")
                imageThinkCreatively.image = UIImage(named: "pivyListMenu")
            case 6:
                imageThinkCreatively.image = UIImage(named: "pivyTravel")
            case 7:
                imageThinkCreatively.image = UIImage(named: "pivyLogin")
                tap = 0
            default:
                println("teste default")
            }
        case 1:
            switch(tap){
            case 1:
                imageThinkCreatively.image = UIImage(named: "iVolunteerLogin")
            case 2:
                imageThinkCreatively.image = UIImage(named: "iVolunteerMap")
            case 3:
                imageThinkCreatively.image = UIImage(named: "iVolunteerList")
            case 4:
                imageThinkCreatively.image = UIImage(named: "iVolunteerSplash")
                tap=0
            default:
                println("Default")
            }
        case 2:
            switch(tap){
            case 1:
                imageThinkCreatively.image = UIImage(named: "meEmprestaTV")
            case 2:
                imageThinkCreatively.image = UIImage(named: "meEmprestaLogin")
                tap = 0
            default:
                println("Default case")
            }
        default:
            println("Default error")
            
        
        }
    }
    func nextCenario(){
      
      println(imageThinkCreatively.frame.size.width)
        switch(imageThinkCreatively.frame.size.width){
        case 15000...20000 where control == 0:
            println("primeiro case")
            
            //--------------Rectangle image left corner-------------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 50
            wImg = (view.frame.size.width/2) - 50
            xImg = (view.frame.origin.x) + 20
            yImg = (view.frame.size.height - hImg) - 30
        
            
            swiftColor = UIColor(red: 0.27, green: 0.7, blue: 0.36, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "ami")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.19, 0.18), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "Hi, my name is Aiami de Siqueira Garcia and i'm 20 years old. I'm from Porto Alegre, Brazil. And i would like to tell a litte story about my life..."
            
//            self.view.layoutIfNeeded()
            control++
        
        case 3720...10000 where control == 1:
            println("segundo case")
            
            //-------------Rectangle image in the center----------------------//
            cleanImgValues()
            hImg = (view.frame.size.width/2) - 50
            wImg = (view.frame.size.height/2) - 50
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            
            swiftColor = UIColor(red: 0.89, green: 0.79, blue: 0.68, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "controle")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.15, 0.65), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "As a little kid i spent much time playing soccer and video games, i didnt like pink or playing with dolls. That was when i realized that i wasnt like the other girls."
            
            control++
            
        case 20750...28000 where control == 2:
            println("terceiro case")
            
            //-------------Square image in the screen center-------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            
            swiftColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "happiness")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.13, 0.19), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.textColor = UIColor.whiteColor()
            textView.text = "I stil grew up being myself, not caring about what other people thought about me. I was (and stil am) a truly happy kid. I am always smiling and being funny because happiness just depends on how you face the world. I own this to my family, they are everything."
            
            control++
            
        case 11925...18000 where control == 3:
            println("quarto case")
            
            //-----------Rectangle in the left corner--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 50
            wImg = (view.frame.size.width/2) - 50
            xImg = (view.frame.origin.x) + 50
            yImg = (view.frame.size.height - hImg) - 30
            
            
            swiftColor = UIColor(red: 0.91, green: 0.46, blue: 0.71, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "atom")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.5, 0.5), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.textColor = UIColor.blackColor()
            textView.text = "When i was 13 years old i realized that video games and technology was more than a hobbie, that was when i started to learning about how to make those things that i loved so much. I began doing Physics on College but nowadays i am doing Game Design, i pretend to someday go back to the mistery world of physics..."
            
            control++
        
        case 11380...20000 where control == 4:
            println("quinto case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            
            swiftColor = UIColor(red: 0.29, green: 0.25, blue: 1, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "emoji")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.48, 0.25), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "Also i'm doing the most exciting thing that i ever done: BEPiD (Brazilian Program for iOS development). Programming become my favorite thing."
            
            control++
        
        case 3670...10000 where control == 5:
            println("sexto case")
            
            //-----------Square in the left corner--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.origin.x) + 50
            yImg = (view.frame.size.height - hImg) - 30
            
            
            swiftColor = UIColor(red: 0.95, green: 0.82, blue: 0.25, alpha: 1)
            self.view.backgroundColor = swiftColor
           
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "pivyTravel")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.20, 0.20), view: imageThinkCreatively)
            imageThinkCreatively.addGestureRecognizer(tapRecognizer)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "Now let me show you works that i have been doing... \n Pivy: The main work in the moment, this app is about to travel arround the world and collect bagdes from the historical places that you visited, the most exciting thing is the beautiful design that i made with a lot of proud."
            
            control++
            
        case 2460...6000 where control == 6:
            println("setimo case")
            tap = 0
            //-----------Rectangle in the left corner--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.origin.x) + 50
            yImg = (view.frame.size.height - hImg) - 30
            
            swiftColor = UIColor(red: 0.78, green: 0.78 , blue: 0.79, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "iVolunteerSplash")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.20, 0.20), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "iVolunteer: You want to help people but doesnt now where or how? This app is perfect to search institutions near to you that it might be needing help or just a human contact."
            
            controlApps++
            control++
        
        case 4150...10000 where control == 7:
            println("Oitavo case")
            tap = 0
            
            //-----------Rectangle in the left corner--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.origin.x) + 50
            yImg = (view.frame.size.height - hImg) - 30
            
            swiftColor = UIColor(red: 0.16, green: 0.52, blue: 0.27, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "meEmprestaLogin")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.25, 0.25), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
             textView.text = "MeEmpresta: Who doesnt land a thing and never remember for whom? This is a app that reminds you things that you borrow or land a especific thing from/to other people. Great for improve your memory(and maybe getting back a dvd that you forgot that you have) skills. "
            
            controlApps++
            control++
        
        case 2385...8000 where control == 8:
            println("Nono case")
            
            //-------------Rectangle image in the center----------------------//
            cleanImgValues()
            hImg = (view.frame.size.width/2) - 120
            wImg = (view.frame.size.height/2) - 120
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            swiftColor = UIColor(red: 1, green: 0.80, blue: 0.56, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "colorBlind")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.25, 0.55), view: imageThinkCreatively)
            imageThinkCreatively.removeGestureRecognizer(tapRecognizer)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "What about my developer future? I have some projects to follow and dreams to acomplish. I want to build an app that help people to discover if they have dalton, with research kit."
        
            control++
            
        case 14445...25000 where control == 9:
            println("Decimo case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            swiftColor = UIColor(red: 0, green: 0.47, blue: 0.24, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "genderEquality")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.20, 0.20), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "Another app that i want to build is one that teach kids about human rights, gender equality and sexual orientation.I want to make a difference for somebody, to help them. Maybe with a fun game that entretain and make forget things for a moment, maybe a app that improve their life and inspire people."
            
            control++
        
        case 11710...15000 where control == 10:
            println("Decimo primeiro case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            swiftColor = UIColor(red: 1, green: 0.89, blue: 0.01, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image =  UIImage(named: "mugBatman")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.30, 0.15), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "My programming skills are getting better, i am foucus in iOS programming for about 3 months and they are just improving day by day. I started learning programming with C, after i went to C++, Java, Javascript and now i am programming with Objective-C and the most incredible leanguage that i ever learned: Swift."
            
            control++
        
        case 7158...15000 where control == 11:
            println("Decimo segundo case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 50
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            swiftColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "design")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.47, 0.40), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
             textView.text = "I am very excited with developing iOS apps, i discovered that i can be a interface designer without leaving aside the love for programming. I think that design makes everything better, a simply app can become a pice of art. "
            
            control++
        
        case 9210...15000 where control == 12:
            println("Decimo terceiro case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 50
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50
            
            swiftColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "darthVader")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.50, 0.30), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "I also like to playing with Unity and with 3D rendering. And yeah, everything that you sees in this app i have done by myself... EVERYTHING!"
            
            control++
            
        case 21285...25000 where control == 13:
            println("Decimo quarto case")
            
            //--------------Rectangle image left corner-------------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 50
            wImg = (view.frame.size.width/2) - 50
            xImg = (view.frame.origin.x) + 20
            yImg = (view.frame.size.height - hImg) - 30
            
            swiftColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image =  UIImage(named: "violin")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.60, 0.55), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "My interests are very embracing, i want to learn more about programming for iOS, learn French, learn mechatronics, learn to play piano and violin,  learn more about interface design, learn to draw (better), learn about how to be a better humanbeen, learn more about the strings theory (it fascinates me!)"
            
            control++
            
        case 3630...4000 where control == 14:
            println("Decimo quinto case")
            
            //-----------Square in the center--------------//
            cleanImgValues()
            hImg = (view.frame.size.height/2) - 100
            wImg = hImg
            xImg = (view.frame.size.width / 2) - (wImg / 2)
            yImg = (view.frame.size.height - hImg) - 50

            
            swiftColor = UIColor(red: 0.74, green: 0.32, blue: 0.18, alpha: 1)
            self.view.backgroundColor = swiftColor
            
            imageThinkCreatively.alpha = 0
            imageThinkCreatively.frame = CGRectMake(self.view.frame.width/2, self.view.frame.height/2, 0, 0)
            UIView.animateWithDuration(2.0, animations: {
                self.imageThinkCreatively.alpha = 1
                self.imageThinkCreatively.frame = CGRectMake(self.xImg,self.yImg,self.wImg,self.hImg)
                println("ANIMOU")
            })
            
            imageThinkCreatively.image = UIImage(named: "outsideBox")
            imageThinkCreatively.frame = CGRectMake(xImg,yImg,wImg,hImg)
            setAnchorPoint(CGPointMake(0.25, 0.25), view: imageThinkCreatively)
            view.bringSubviewToFront(imageThinkCreatively)
            
            textView.text = "and mostly larn how to continuous beeing happy with my life. I want to make things that excites peoples and make their life a happier place.\n ~Don't think outside the box. Think like there is no box. Ziad K. Abdelnour~"
           
            
        default:
            println("Default")
        
        }
        
        
        
    }
    func cleanImgValues(){
        hImg = 0
        wImg = 0
        xImg = 0
        yImg = 0
    }

    func setAnchorPoint(anchorPoint: CGPoint, view: UIView) {
        var newPoint: CGPoint = CGPointMake(view.bounds.size.width * anchorPoint.x, view.bounds.size.height * anchorPoint.y)
        var oldPoint: CGPoint = CGPointMake(view.bounds.size.width * view.layer.anchorPoint.x, view.bounds.size.height * view.layer.anchorPoint.y)
        
        newPoint = CGPointApplyAffineTransform(newPoint, view.transform)
        oldPoint = CGPointApplyAffineTransform(oldPoint, view.transform)
        
        var position: CGPoint = view.layer.position
        
        position.x -= oldPoint.x
        position.x += newPoint.x
        
        position.y -= oldPoint.y
        position.y += newPoint.y
        
        view.setTranslatesAutoresizingMaskIntoConstraints(true)     // Added to deal with auto layout constraints
        view.layer.anchorPoint = anchorPoint
        view.layer.position = position
    }
    
    
    
}


//    
//    func setConstraintBottom(const : CGFloat){
//        let bottomConstraint = NSLayoutConstraint(item: imageThinkCreatively, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: const)
//        self.view.addConstraint(bottomConstraint)
//    }
//    func setConstraintTrailing(const: CGFloat){
//        let trailingConstraint = NSLayoutConstraint(item: imageThinkCreatively, attribute: .Trailing, relatedBy: .Equal, toItem: self.view, attribute: .Trailing, multiplier: 1, constant: const)
//        self.view.addConstraint(trailingConstraint)
//    }
//    func setConstraintLeading(const : CGFloat){
//        let leadingConstraint = NSLayoutConstraint(item: imageThinkCreatively, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1, constant: const)
//        self.view.addConstraint(leadingConstraint)
//    
//    }
//    func setConstraintXCenter(const : CGFloat){
//        let xCenterConstraint = NSLayoutConstraint(item: imageThinkCreatively, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: const)
//        self.view.addConstraint(xCenterConstraint)
//    }
//    func setConstraintWidth(const : CGFloat){
//        let constraintWidth = NSLayoutConstraint (item: imageThinkCreatively, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: const)
//        self.view.addConstraint(constraintWidth)
//    }
//    func setConstraintHeight(const : CGFloat){
//        let constraintHeight = NSLayoutConstraint (item: imageThinkCreatively, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: const)
//        self.view.addConstraint(constraintHeight)
//    }
//    
//    func setConstraintAspectRatio(){
//        let constraintAR = NSLayoutConstraint (item: imageThinkCreatively, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Width, multiplier: 1.0/1.0, constant: 0)
//        self.view.addConstraint(constraintAR)
//    }



