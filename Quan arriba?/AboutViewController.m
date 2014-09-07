//
//  AboutViewController.m
//  Quan arriba?
//
//  Created by Oscar Blanco Castan on 07/03/14.
//  Copyright (c) 2014 Oscar. All rights reserved.
//

#import "AboutViewController.h"
#import "CTFeedbackViewController.h"
#import "SVWebViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)facebook:(id)sender {
    NSURL *URL = [NSURL URLWithString:@"http://www.facebook.com/quanarriba"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
}

- (IBAction)twitter:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://twitter.com/QuanArriba"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)quanarriba:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://quanarriba.cat"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)feedback:(id)sender {
    
    CTFeedbackViewController *feedbackViewController = [CTFeedbackViewController controllerWithTopics:CTFeedbackViewController.defaultTopics localizedTopics:CTFeedbackViewController.defaultLocalizedTopics];
    feedbackViewController.toRecipients = @[@"jesus@iconalab.com"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:feedbackViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
    
}

- (IBAction)jesus:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://www.linkedin.com/in/jesusferre"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)carles:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://www.linkedin.com/in/carlescasanova"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)alfonso:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://iconalab.com/quanarriba/cv-egio.pdf"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)david:(id)sender {
    
    //NSURL *URL = [NSURL URLWithString:@""];
	//SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	//webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    //[self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)griselda:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://iconalab.com/quanarriba/Curriculum_Vitae_Griselda_Matamoros.pdf"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)xavier:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"http://iconalab.com/quanarriba/Xavier_Genaro_Munoz-CV.pdf"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)oscar:(id)sender {
    
    //NSURL *URL = [NSURL URLWithString:@""];
	//SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
	//webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
    //[self presentViewController:webViewController animated:YES completion:NULL];
    
}

- (IBAction)surt:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
}

@end
