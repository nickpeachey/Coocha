//
//  User.h
//  Domain
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;

-(id)initWithDictionary:(NSDictionary *)dictionary;

@end
