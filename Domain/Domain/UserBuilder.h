//
//  UserBuilder.h
//  Domain
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserBuilder : NSObject
{
   User *user;
}

-(id)init;
-(void)withName:(NSString *)name;
-(void)withEmail:(NSString *)email;
-(User *)build;

@end
