//
//  ViewController.m
//  Quan arriba?
//
//  Created by Oscar Blanco Castan on 07/03/14.
//  Copyright (c) 2014 Oscar. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    locationManager = [[CLLocationManager alloc] init];
    
    locationManager.distanceFilter = kCLDistanceFilterNone;
    
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    
    _textField.delegate = self;
    
    webView.delegate = self;
    
    locationManager.delegate = self;
}

- (void)cerca {
    
    NSString *cercanom = [_textField text];
    
    if ([cercanom length] == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Entrada invàlida" message:@"El quadre de cerca no pot estar buit." delegate:self cancelButtonTitle:@"D'acord" otherButtonTitles:nil];
        [alert show];
        
    } else {
    
    NSString *fullAddressURL = [NSString stringWithFormat:@"http://app.quanarriba.cat/api/1/find_nearest_bus.html?text=%@", _textField.text];
    
    NSString *encodedString = [fullAddressURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

    NSURL *url = [NSURL URLWithString:encodedString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    [self.view endEditing:YES];
    
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [self cerca];
    return YES;
}

- (IBAction)coordenades:(id)sender {
    
    NSString *fullAddressURL = [NSString stringWithFormat:@"http://app.quanarriba.cat/api/1/find_nearest_bus.html?latitude=%f&text=&longitude=%f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];
    
    NSURL *url = [NSURL URLWithString:fullAddressURL];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    [self.view endEditing:YES];

}

- (void)locationManager: (CLLocationManager *)manager didFailWithError: (NSError *)error{
    
    [manager stopUpdatingLocation];
    
    switch([error code]){
            
        case kCLErrorNetwork:{
            
        }
            break;
            
        case kCLErrorDenied:{
            
            self.localitzacio.enabled = NO;
            
        }
            break;
            
        default:{
            
        }
            break;
    }
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    [SVProgressHUD showWithStatus:@"Carregant..."];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [SVProgressHUD dismiss];
    
}

- (IBAction)info:(id)sender {
    
    [SVProgressHUD dismiss];
    
}

- (IBAction)incid:(id)sender {
    
    [SVProgressHUD dismiss];
    
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
