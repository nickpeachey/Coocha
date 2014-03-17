//
//  UserBuilder.m
//  Domain
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "UserBuilder.h"

@implementation UserBuilder

-(id)init
{
    self = [super init];
    if (self) {
        user = [[User alloc] init];
    }
    return self;
}

-(void)withName:(NSString *)name
{
    user.name = name;
}

-(void)withEmail:(NSString *)email
{
    user.email = email;
}

-(User *)build
{
    return user;
}

@end
