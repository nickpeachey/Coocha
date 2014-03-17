//
//  UserInformationDatasource.h
//  Services
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UserInformationDatasource <NSObject>

@required
-(NSDictionary *)getUserById:(int)userId;
-(NSArray *)getUsers;
@end
