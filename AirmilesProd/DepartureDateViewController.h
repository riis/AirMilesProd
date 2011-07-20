//
//  DepartureDateViewController.h
//  AirmilesProd
//
//  Created by admin on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DepartureDateViewController : UIViewController {
    IBOutlet UIDatePicker *departureDate;
    IBOutlet UINavigationBar *departureDateNavBar;
    IBOutlet UINavigationItem *departureDateCancelButton;
    IBOutlet UINavigationItem *departureDateSaveButton;
}

- (IBAction) cancelModalEvent:(id)sender;
- (IBAction) done:(id)sender;

@property (nonatomic, retain) IBOutlet UIDatePicker *departureDate;
@property (nonatomic, retain) IBOutlet UINavigationBar *departureDateNavBar;
@property (nonatomic, retain) IBOutlet UINavigationItem *departureDateCancelButton;
@property (nonatomic, retain) IBOutlet UINavigationItem *departureDateSaveButton;

@end
