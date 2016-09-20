//
//  ViewController.m
//  CustomButtonStyle
//
//  Created by moyekong on 12/29/15.
//  Copyright © 2015 wiwide. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitleSpacing.h"

#import "ImageTitleButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ImageTitleButton *topButton;
@property (weak, nonatomic) IBOutlet ImageTitleButton *leftButton;
@property (weak, nonatomic) IBOutlet ImageTitleButton *bottomButton;
@property (weak, nonatomic) IBOutlet ImageTitleButton *rightButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self updateUI];
}

- (void)updateUI {
    CGFloat space = 20.0;
    [self.topButton layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop
                                    imageTitleSpace:space];
    
    self.topButton.layer.borderColor = [UIColor redColor].CGColor;
    self.topButton.layer.borderWidth = 1.0;
    
    [self.leftButton layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft
                                     imageTitleSpace:space];
    self.leftButton.layer.borderColor = [UIColor redColor].CGColor;
    self.leftButton.layer.borderWidth = 1.0;
    
    [self.bottomButton layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleBottom
                                       imageTitleSpace:space];
    self.bottomButton.layer.borderColor = [UIColor redColor].CGColor;
    self.bottomButton.layer.borderWidth = 1.0;
    
    [self.rightButton layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleRight
                                      imageTitleSpace:space];
    self.rightButton.layer.borderColor = [UIColor redColor].CGColor;
    self.rightButton.layer.borderWidth = 1.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
