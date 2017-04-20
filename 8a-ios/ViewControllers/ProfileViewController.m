//
//  ProfileViewController.m
//  8a-ios
//
//  Created by Jimmy on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "ProfileViewController.h"
#import "AppDelegate.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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

- (IBAction)onClickLogOut:(id)sender {
    
    isUserLoggedIn = NO;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"GOTO_HOME_VCONTROLLER" object:nil];
}

- (IBAction)onClickCancel:(id)sender {
}

- (IBAction)onClickSave:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"GOTO_HOME_VCONTROLLER" object:nil];
}

@end
