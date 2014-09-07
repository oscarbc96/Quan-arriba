//
//  ViewController.h
//  Quan arriba?
//
//  Created by Oscar Blanco Castan on 07/03/14.
//  Copyright (c) 2014 Oscar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate,UITextFieldDelegate,UIWebViewDelegate>{
    
    CLLocationManager *locationManager;
    
}

@property (nonatomic, strong) IBOutlet UIWebView *webView;

@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *localitzacio;

@end
