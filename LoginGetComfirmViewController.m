//
//  LoginGetComfirmViewController.m
//  8a-ios
//
//  Created by Jimmy on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "LoginGetComfirmViewController.h"
#import "AppDelegate.h"

@interface LoginGetComfirmViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txt_confirm_code;

@end

@implementation LoginGetComfirmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//---------------------------------------------------------------------
// Mark : Button Action
//---------------------------------------------------------------------
- (IBAction)onClickNext:(id)sender {
    
    // Check Code
    
    // Success Code
    isUserLoggedIn = YES;
    
    UIViewController *profileVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    [self.navigationController pushViewController:profileVC animated:YES];
}

- (IBAction)onClickDidNotReceive:(id)sender {
    
    // Resend Get Request Code
    
}

@end
