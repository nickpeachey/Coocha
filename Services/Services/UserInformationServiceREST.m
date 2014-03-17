//
//  UserInformationServiceREST.m
//  Services
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "UserInformationServiceREST.h"

@implementation UserInformationServiceREST

-(NSDictionary *)getUserById:(int)userId
{
    NSDictionary *result = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:userId], @"userId", nil];
    return result;
}

-(NSArray *)getUsers
{
    NSArray *result = [[NSArray alloc] initWithObjects:@"name", nil];
    return result;
}

@end
