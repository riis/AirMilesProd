//
//  RootViewController.m
//  AirmilesProd
//
//  Created by admin on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SearchScreenViewController.h"

@implementation RootViewController
@synthesize mainPageOverlay, mainPageBkg, startSearchButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *mainBkg = [UIImage imageNamed:@"cloudsBkg.png"];
    [mainPageBkg setImage:mainBkg];
    
    UIImage *overlay = [UIImage imageNamed:@"startScreen.png"];
    [mainPageOverlay setImage:overlay];
}

- (IBAction) initiateSearch:(id)sender {
        
    SearchScreenViewController *searchVC = [[SearchScreenViewController alloc] initWithNibName:@"SearchScreenViewController" bundle:nil];
    UINavigationController *navControl = [[UINavigationController alloc] initWithRootViewController:searchVC];
    
    [self presentModalViewController:navControl animated:YES];
    
    [searchVC release];
    [navControl release];
}

- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end
