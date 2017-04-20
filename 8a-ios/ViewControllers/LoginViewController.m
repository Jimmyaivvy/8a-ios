//
//  LoginViewController.m
//  8a-ios
//
//  Created by Jimmy on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txt_phone_number;

@end

@implementation LoginViewController

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
- (IBAction)onClickGetConfirmCode:(id)sender {
    
    // Check Phone number
    
    // Send Get Code Request
    UIViewController *confirmVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginGetComfirmViewController"];
    [self.navigationController pushViewController:confirmVC animated:YES];
    
}



@end
