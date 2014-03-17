//
//  ViewController.h
//  Coocha
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Services/UserInformationDatasource.h"

@interface ViewController : UIViewController

-(id)initWithDataSource:(id<UserInformationDatasource>)dataSource;

@property (nonatomic) id<UserInformationDatasource> dataSource;

@end
