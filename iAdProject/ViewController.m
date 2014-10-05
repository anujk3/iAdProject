//
//  ViewController.m
//  iAdProject
//
//  Created by Anuj Katiyal on 05/10/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic) int secondsElapsed;
@property (nonatomic) BOOL pauseTimeCounting;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.adBanner.delegate = self;
    self.adBanner.alpha = 0.0;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showTimerMessage) userInfo:nil repeats:YES];
    self.secondsElapsed = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bannerViewWillLoadAd:(ADBannerView *)banner  NS_AVAILABLE_IOS(5_0){
    NSLog(@"Ad Banner will load ad.");
}


- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    NSLog(@"Ad Banner did load ad.");
    [UIView animateWithDuration:0.5 animations:^{
        self.adBanner.alpha = 1.0;
    }];
}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"Unable to show ads. Error: %@", [error localizedDescription]);
    // Hide the ad banner.
    [UIView animateWithDuration:0.5 animations:^{
        self.adBanner.alpha = 0.0;
    }];
}

- (void)showTimerMessage{
    if (!self.pauseTimeCounting) {
        self.secondsElapsed++;
        self.lblTimerMessage.text = [NSString stringWithFormat:@"You've been viewing this view for %d seconds", self.secondsElapsed];
    }else{
        self.lblTimerMessage.text = @"Paused to show ad...";
    }
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave {
    NSLog(@"Ad Banner action is about to begin.");
    
    self.pauseTimeCounting = YES;
    
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{
    NSLog(@"Ad Banner action did finish");
    
    self.pauseTimeCounting = NO;

}


@end
