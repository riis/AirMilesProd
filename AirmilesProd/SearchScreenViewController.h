//
//  SearchScreenViewController.h
//  AirmilesProd
//
//  Created by admin on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SearchScreenViewController : UIViewController {
    IBOutlet UIButton *cancelButton;
    IBOutlet UIButton *saveButton;
    IBOutlet UITextField *departureDateTextField;
}

- (IBAction) cancel:(id)sender;
- (IBAction) setDepartureDate:(id)sender;

@property (nonatomic, retain) IBOutlet UIButton *cancelButton;
@property (nonatomic, retain) IBOutlet UIButton *saveButton;
@property (nonatomic, retain) IBOutlet UITextField *departureDateTextField;

@end
