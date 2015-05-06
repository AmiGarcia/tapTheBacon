//
//  ViewController.m
//  tapTheLhama
//
//  Created by Ami Garcia on 2/26/15.
//  Copyright (c) 2015 Ami Garcia. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerMenu.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *currentTime;
@property (weak, nonatomic) IBOutlet UILabel *currentScore;

@end

@implementation ViewController

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self setupGame];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    taps = 0;
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"crazyBG.png"]];
    self.currentTime.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"time_buttonTL.png"]];
    self.currentScore.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"score_buttonTL.png"]];
    lhamaSound = [self setupAudioPlayerWithFile:@"lhamaSound" type:@"mp3"];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (AVAudioPlayer *)setupAudioPlayerWithFile:(NSString *)file type:(NSString *)type{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:file ofType:type];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    // 2
    NSError *error;
    
    // 3
    AVAudioPlayer *audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    // 4
    if (!audioPlayer) {
        NSLog(@"%@",[error description]);
    }
    
    // 5
    return audioPlayer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonLhamaTD:(UIButton *)sender {
    points++;
    //[lhamaSound play];
    if(taps == 0){
        [self setupGame];
        taps++;
    }
    self.currentScore.text = [NSString stringWithFormat:@"Score: %ld",points];
    
    
}
-(void) setupGame{
    seconds = 15;
    points = 0;
    self.highScore = 0;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];

}
-(void) subtractTime{
    seconds--;
    self.currentTime.text = [NSString stringWithFormat:@"Time: %ld",seconds];
   
    if(seconds == 0){
        [timer invalidate];
        
       UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You have scored %ld points!",points] delegate:self cancelButtonTitle:@"Play again!" otherButtonTitles:nil];
        [alert show];
    
        
        if(points >= self.highScore){
            self.highScore = points;
            
            AppDelegate *hs = [[UIApplication sharedApplication] delegate];
            hs.highScoreGame = self.highScore;
        }
        NSLog(@"HighScore: %ld",self.highScore);
    }
    
}
-(IBAction)backTo:(UIStoryboardSegue *)segue{

}






@end
