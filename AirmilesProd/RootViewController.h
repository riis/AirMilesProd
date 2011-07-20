//
//  RootViewController.h
//  AirmilesProd
//
//  Created by admin on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController {
    IBOutlet UIImageView *mainPageBkg;
    IBOutlet UIImageView *mainPageOverlay;
    IBOutlet UIButton *startSearchButton;
}

- (IBAction) initiateSearch:(id)sender;

@property (nonatomic, retain) IBOutlet UIImageView *mainPageBkg;
@property (nonatomic, retain) IBOutlet UIImageView *mainPageOverlay;
@property (nonatomic, retain) IBOutlet UIButton *startSearchButton;

@end
