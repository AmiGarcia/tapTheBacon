//
//  ViewController.h
//  tapTheLhama
//
//  Created by Ami Garcia on 2/26/15.
//  Copyright (c) 2015 Ami Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{
    
NSInteger points;
NSInteger seconds;
NSTimer *timer;
NSInteger taps;
    
    AVAudioPlayer *lhamaSound;
    
    
}
@property NSInteger highScore;

@end

