//
//  ViewControllerMenu.m
//  tapTheLhama
//
//  Created by Ami Garcia on 3/2/15.
//  Copyright (c) 2015 Ami Garcia. All rights reserved.
//

#import "ViewControllerMenu.h"
#import "ViewControllerHighScore.h"
#import "ViewController.h"

@interface ViewControllerMenu ()
@property NSInteger hsMenu;
@end

@implementation ViewControllerMenu

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"crazyBG.png"]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)backToMenu:(UIStoryboardSegue *)segue{
    
    
}

@end
