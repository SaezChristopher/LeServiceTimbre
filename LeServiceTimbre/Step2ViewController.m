//
//  Step2ViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "Step2ViewController.h"
#import "HomeViewController.h"
#import <RESideMenu/RESideMenu.h>

@interface Step2ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

@end

@implementation Step2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

	for (UIButton* button in self.buttons){
		button.layer.borderWidth = 1;
		button.layer.borderColor = [button.titleLabel.textColor CGColor];
		button.layer.cornerRadius = 3;
	}
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTouchButton:(UIButton*)sender {
	
	[sender setBackgroundColor:sender.titleLabel.textColor];
	[sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	
}
- (IBAction)didTouchValidate:(id)sender {
	
	HomeViewController *controller = (HomeViewController*)((UINavigationController*)self.sideMenuViewController.contentViewController).topViewController;
	[controller.carbonTabSwipeNavigation setCurrentTabIndex:2];

}

@end
