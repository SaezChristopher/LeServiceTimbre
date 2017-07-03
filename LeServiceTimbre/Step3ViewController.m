//
//  Step3ViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "Step3ViewController.h"
#include "ValidationViewController.h"
#import <RESideMenu.h>
#import "HomeViewController.h"

@interface Step3ViewController ()<ConfirmationDelegate>
@property (weak, nonatomic) IBOutlet UIView *container;
@property (weak, nonatomic) IBOutlet UIButton *validateButton;
@property (weak, nonatomic) IBOutlet UIView *priceView;

@end

@implementation Step3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.container.layer.cornerRadius = 6;
	self.validateButton.layer.cornerRadius = 3;
	self.priceView.layer.cornerRadius = 40;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)didTouchValidate:(id)sender {
	
	UINavigationController *controller = (UINavigationController*)self.sideMenuViewController.contentViewController;
	ValidationViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ValidationViewController"];
	vc.delegate = self;
	[controller pushViewController:vc animated:YES];
}

-(void) didPrepareNewOrder{
	HomeViewController *controller = (HomeViewController*)((UINavigationController*)self.sideMenuViewController.contentViewController).topViewController;
	[controller.carbonTabSwipeNavigation setCurrentTabIndex:0];
}

@end
