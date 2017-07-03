//
//  MenuViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuTableViewCell.h"

@interface MenuViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.tableview.delegate = self;
	self.tableview.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return 47;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MenuTableViewCell" forIndexPath:indexPath];
	if (indexPath.row == 0){
		cell.image = [UIImage imageNamed:@"iconwithcircle-nouvelenvoi"];
		cell.title = @"Nouvel envoi";
	} else if (indexPath.row == 1){
		cell.image = [UIImage imageNamed:@"iconwithcircle-suivi"];
				cell.title = @"Mon suivi";
	} else if (indexPath.row == 2){
		cell.image = [UIImage imageNamed:@"iconwithcircle-parametres"];
				cell.title = @"Paramètres";
	} else {
		cell.image = [UIImage imageNamed:@"iconwithcircle-deconnexion"];
				cell.title = @"Déconnexion";
	}
	return cell;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return 4;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
	UIViewController *vc;
	
//todo
	
}

-(UIStatusBarStyle) preferredStatusBarStyle{
	return UIStatusBarStyleLightContent;
}


@end
