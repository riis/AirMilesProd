//
//  SearchScreenViewController.m
//  AirmilesProd
//
//  Created by admin on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchScreenViewController.h"
#import "DepartureDateViewController.h"

@implementation SearchScreenViewController
@synthesize cancelButton, saveButton, departureDateTextField;

- (IBAction) cancel: (id) sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction) setDepartureDate:(id)sender {
    DepartureDateViewController *departureDateVC = [[DepartureDateViewController alloc] initWithNibName:@"DepartureDateViewController" bundle:nil];
    [departureDateVC setModalPresentationStyle:UIModalTransitionStyleCoverVertical];
    
    [self presentModalViewController:departureDateVC animated:YES];
    
    // Disable the keyboard from appearing
    departureDateTextField.userInteractionEnabled = NO;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem initWithTitle:@"Search Criteria"];
    
    // Hides the back button in the Top Nav
    self.navigationItem.hidesBackButton = YES;
    
    // Adds Rounded Corners to the Save Button
    [[saveButton layer] setMasksToBounds:YES];
    [[saveButton layer] setCornerRadius:10.0];
    
    // Adds Rounded Corners to the Cancel Button
    [[cancelButton layer] setMasksToBounds:YES];
    [[cancelButton layer] setCornerRadius:10.0];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
