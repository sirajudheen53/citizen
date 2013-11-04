//
//  PCUser.h
//  Perfect Citizen
//
//  Created by qbadmin on 04/11/13.
//  Copyright (c) 2013 qbadmin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCUser : NSObject

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *screenName;
@property (nonatomic, strong) NSString *authToken;
@property (nonatomic, strong) NSString *authenticationSecret;

@end
