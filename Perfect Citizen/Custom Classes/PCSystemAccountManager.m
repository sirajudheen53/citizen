//
//  PCSystemAccountManager.m
//  Perfect Citizen
//
//  Created by qbadmin on 30/10/13.
//  Copyright (c) 2013 qbadmin. All rights reserved.
//

#import "PCSystemAccountManager.h"
#include <Social/Social.h>

@implementation PCSystemAccountManager


+ (PCUser *)getAccountDetailsWithAccountWithIdentifier
{
    PCUser *user = [[PCUser alloc] init];
    if ([SLComposeViewController
         isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        ACAccountStore *accountStore =[[ACAccountStore alloc]init];
        //  Step 0: Check that the user has local Twitter accounts
    
            //  Step 1:  Obtain access to the user's Twitter accounts
            ACAccountType *twitterAccountType = [accountStore
                                             accountTypeWithAccountTypeIdentifier:
                                             ACAccountTypeIdentifierTwitter];
            [accountStore
             requestAccessToAccountsWithType:twitterAccountType
             options:NULL
             completion:^(BOOL granted, NSError *error) {
                 if (granted) {
                     //  Step 2:  Create a request
                     NSArray *twitterAccounts =
                     [accountStore accountsWithAccountType:twitterAccountType];
                     ACAccount *twiiterAccount = [twitterAccounts objectAtIndex:0];
                     if ([twitterAccounts count] > 0) {
                         NSLog(@"%@", [ACAccount description]);
                     }
                 }
             }];
    }
        return user;
}




@end
