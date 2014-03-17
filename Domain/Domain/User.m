//
//  User.m
//  Domain
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "User.h"

@implementation User

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    if (!dictionary)
        return nil;
    
    
    self = [super init];
    
    if (self)
    {
        self.name = [dictionary objectForKey:@"name"];
        self.email = [dictionary objectForKey:@"email"];
    }
    
    return self;
}

@end
