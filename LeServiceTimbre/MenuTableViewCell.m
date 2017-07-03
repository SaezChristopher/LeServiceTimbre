//
//  MenuTableViewCell.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "MenuTableViewCell.h"

@interface MenuTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *menuimageview;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end

@implementation MenuTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setImage:(UIImage *)image{
	_image = image;
	self.menuimageview.image  = image;
}

-(void) setTitle:(NSString *)title{
	_title = title;
	self.labelTitle.text = title;
}

@end
