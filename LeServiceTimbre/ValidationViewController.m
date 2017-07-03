//
//  ValidationViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "ValidationViewController.h"
#import <RESideMenu.h>
@import AVFoundation;


@interface ValidationViewController ()<AVSpeechSynthesizerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *sendNewOrder;
@property (nonatomic, strong) AVSpeechSynthesizer *synthesizer;
@end

@implementation ValidationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.cancelButton.layer.cornerRadius = 3;
	self.sendNewOrder.layer.borderColor = [UIColorFromRGB(0x3569D4) CGColor];
	self.sendNewOrder.layer.borderWidth = 1;
	
	[self setCustomTitle:@"Votre code timbré"];
	[self spell];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTouchCancel:(id)sender {
	[self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)didTouchNewOrder:(id)sender {
	[self.navigationController popViewControllerAnimated:YES];
	[self.delegate didPrepareNewOrder];
}

- (IBAction)didTouchSpell:(id)sender {
	[self spell];

}

-(void) spell{
	AVSpeechUtterance *v = [[AVSpeechUtterance alloc] initWithString:@"Votre code timbré : 1 2 A 4 7 6 5 F A J 8 4"];
	v.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"fr-fr"];
	v.rate = AVSpeechUtteranceMinimumSpeechRate;
	v.volume = 10;
	self.synthesizer = [[AVSpeechSynthesizer alloc] init];
	self.synthesizer.delegate = self;
	[self.synthesizer speakUtterance:v];
}
@end
