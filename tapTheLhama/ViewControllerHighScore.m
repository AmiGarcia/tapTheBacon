//
//  ViewControllerHighScore.m
//  tapTheLhama
//
//  Created by Ami Garcia on 3/2/15.
//  Copyright (c) 2015 Ami Garcia. All rights reserved.
//

#import "ViewControllerHighScore.h"
#import "AppDelegate.h"

@interface ViewControllerHighScore ()
@property (weak, nonatomic) IBOutlet UILabel *bestScorelbl;

@end

@implementation ViewControllerHighScore

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bestScorelbl.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"highScore.png"]];
   
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"crazyBG.png"]];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    AppDelegate *hs = [[UIApplication sharedApplication] delegate];
     self.bestScorelbl.text = [NSString stringWithFormat:@"HighScore: \n\t%ld",hs.highScoreGame];
    

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

@end
