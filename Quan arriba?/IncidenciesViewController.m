//
//  IncidenciesViewController.m
//  Quan arriba?
//
//  Created by Oscar Blanco Castan on 07/03/14.
//  Copyright (c) 2014 Oscar. All rights reserved.
//

#import "IncidenciesViewController.h"
#import "SVProgressHUD.h"

@interface IncidenciesViewController ()

@end

@implementation IncidenciesViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"https://twitter.com/search?q=%23INCIDviaTGN&src=hash&f=realtime"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    webView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    [SVProgressHUD showWithStatus:@"Carregant..."];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [SVProgressHUD dismiss];
    
}

- (IBAction)surt:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    [SVProgressHUD dismiss];
    
}

@end
