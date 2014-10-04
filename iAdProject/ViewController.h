//
//  ViewController.h
//  iAdProject
//
//  Created by Anuj Katiyal on 05/10/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblTimerMessage;
@property (weak, nonatomic) IBOutlet ADBannerView *adBanner;

@end

