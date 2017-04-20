//
//  WatchNewsViewController.m
//  8a-ios
//
//  Created by Jimmy on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "WatchNewsViewController.h"
#import "AppDelegate.h"

@interface WatchNewsViewController ()

@end

@implementation WatchNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self orientationEventGenerate:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self orientationEventGenerate:NO];
}

- (IBAction)onClickBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

//---------------------------------------------------------------------
// Mark : LandScope Only
//---------------------------------------------------------------------

- (void) orientationEventGenerate:(BOOL) flag{
    if(flag){
        isAllowLandscope = YES;
        NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
        [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
    }else{
        isAllowLandscope = NO;
        NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationMaskPortrait];
        [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
    }
    
}
@end
