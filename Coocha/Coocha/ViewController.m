//
//  ViewController.m
//  Coocha
//
//  Created by nick on 17/03/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "ViewController.h"
#import "Services/UserInformationServiceREST.h"
#import "Domain/User.h"
#import "Domain/UserBuilder.h"

@interface ViewController ()
-(void) loadUsers;
-(void) loadUser;
@end

@implementation ViewController

-(id)initWithDataSource:(id<UserInformationDatasource>)dataSource
{
    self.dataSource = dataSource;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UserInformationServiceREST *service = [[UserInformationServiceREST alloc] init];
    
    self.dataSource = service;
    
    [self loadUsers];
    [self loadUser];
    
    UserBuilder *builder = [[UserBuilder alloc] init];
    [builder withName:@"nick"];
    [builder withEmail:@"nick.peachey"];
    
    User *user = [builder build];
    
    NSLog(@"User object %@", user.name);
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadUsers
{
    id result = [self.dataSource getUsers];
    NSLog(@"result is %@", result);
}

-(void)loadUser
{
    NSNumber *userId = [NSNumber numberWithInt:17];
    id result = [self.dataSource getUserById:[userId intValue]];
    NSLog(@"result is %@", result);
}

@end
