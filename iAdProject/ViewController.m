//
//  ViewController.m
//  iAdProject
//
//  Created by Anuj Katiyal on 05/10/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.adBanner.delegate = self;
    self.adBanner.alpha = 0.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bannerViewWillLoadAd:(ADBannerView *)banner  NS_AVAILABLE_IOS(5_0){
    
}


- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    
}


- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave { 
    
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{
    
}


@end
