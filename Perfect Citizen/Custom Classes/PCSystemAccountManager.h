//
//  PCSystemAccountManager.h
//  Perfect Citizen
//
//  Created by qbadmin on 30/10/13.
//  Copyright (c) 2013 qbadmin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Accounts/Accounts.h>
#import "PCUser.h"

@interface PCSystemAccountManager : NSObject

+ (PCUser *)getAccountDetailsWithAccountWithIdentifier;

@end
