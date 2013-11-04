//
//  PCLoginViewController.m
//  Perfect Citizen
//
//  Created by qbadmin on 30/10/13.
//  Copyright (c) 2013 qbadmin. All rights reserved.
//

#import "PCLoginViewController.h"
#import "PCSystemAccountManager.h"
#include <Parse/Parse.h>
@interface PCLoginViewController ()

@end

@implementation PCLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([PFUser currentUser]) {
        [self performSegueWithIdentifier:@"loadReportIssuePage" sender:self];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginWithFaceookButtonClicked:(id)sender {
}

- (IBAction)loginWithTwitterButtonClicked:(id)sender {
    [PFTwitterUtils logInWithBlock:^(PFUser *user, NSError *error){
        if (user) {
            [self performSegueWithIdentifier:@"loadReportIssuePage" sender:self];
        } else if (error) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:Nil message:[error description] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
    }];
}

- (IBAction)anonymousButtonClicked:(id)sender {
    
}
@end
