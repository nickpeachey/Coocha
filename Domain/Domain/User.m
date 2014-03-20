//
//  User.m
//  Domain
//
//  Created by Nick Peachey on 20/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "User.h"

#define kNameKey @"name"
#define kEmailKey @"email"

@implementation User

-(id)initWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        
        if(!dictionary) {
            return nil;
        }
        
        self.name = [dictionary objectForKey:kNameKey];
        self.email = [dictionary objectForKey:kEmailKey];
    }
    
    return self;
}

@end
