//
//  HomeViewController.m
//  8a-ios
//
//  Created by Jimmy on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "HomeViewController.h"
#import "AppDelegate.h"

@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *img_login_profile;
@property (weak, nonatomic) IBOutlet UIImageView *img_profile_alert;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    
    [self initialize];
}

- (void) initialize{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(popupUpperViewControllers:) name:@"GOTO_HOME_VCONTROLLER" object:nil];
    
    if(isUserLoggedIn){
        self.img_login_profile.image = [UIImage imageNamed:@"ic_profile.png"];
        self.img_profile_alert.image = [UIImage imageNamed:@"ic_alert.png"];
    }
    else{
        self.img_login_profile.image = [UIImage imageNamed:@"ic_logout.png"];
        self.img_profile_alert.image = [UIImage imageNamed:@""];
    }
}

// pop all top vcs
-(void)popupUpperViewControllers:(NSNotification*)notification{
    NSArray *viewControllers = [[self navigationController] viewControllers];
    for( int i=0;i<[viewControllers count];i++){
        id obj=[viewControllers objectAtIndex:i];
        if([obj isKindOfClass:[self class]]){
            [[self navigationController] popToViewController:obj animated:NO];
            return;
        }
    }
}

//---------------------------------------------------------------------
// Mark : Button Action
//---------------------------------------------------------------------
- (IBAction)onClicKWatchNews:(id)sender {
    
    UIViewController *watchVC = [self.storyboard instantiateViewControllerWithIdentifier:@"WatchNewsViewController"];
    [self.navigationController pushViewController:watchVC animated:YES];
}

- (IBAction)onClickReportNews:(id)sender {
    
    UIViewController *reportVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReportViewController"];
    [self.navigationController pushViewController:reportVC animated:YES];
}

- (IBAction)onClickLogIN:(id)sender {
    
    // if user already login, goto profile page
    if(isUserLoggedIn){
        
        UIViewController *profileVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
        [self.navigationController pushViewController:profileVC animated:YES];
    }
    // if user not logged in, goto login page
   else{
    
       UIViewController *loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
       [self.navigationController pushViewController:loginVC animated:YES];
   }
    
}




@end
