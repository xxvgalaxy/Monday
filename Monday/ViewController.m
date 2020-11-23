//
//  ViewController.m
//  Monday
//
//  Created by Jlius Suweno on 23/11/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSBundle *podBundle = [NSBundle bundleForClass:[LoginViewController class]];
        id data = [podBundle URLForResource:@"Login" withExtension:@"bundle"];
        NSBundle *bundle = [NSBundle bundleWithURL:data];
        LoginViewController *loginView = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:bundle];
        loginView.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:loginView animated:YES completion:nil];
    });
    
    
}

@end
