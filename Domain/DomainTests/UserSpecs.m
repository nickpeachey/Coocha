#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "User.h"

SpecBegin(UserSpecTests)

describe(@"User object creation", ^{
    
    it(@"Should create valid object with no data passed in", ^{
        User *user = [[User alloc] init];
        expect(user).toNot.beNil();
    });
    
    it(@"Should not create valid object when nil dictionary passed in", ^{
        User *user = [[User alloc] initWithDictionary:nil];
        expect(user).to.beNil();
    });
    
    describe(@"Object creation with dictionary", ^{
       
        __block User *user;
        
        beforeEach(^{
            NSDictionary *dictionary = [[NSDictionary alloc]
                                        initWithObjectsAndKeys:
                                        @"name", @"name",
                                        @"email", @"email",
                                        nil];
            user = [[User alloc] initWithDictionary:dictionary];
        });
        
        it(@"should set name correctly", ^{
            expect(user).toNot.beNil();
            expect(user.name).toNot.beNil();
            expect(user.name).equal(@"name");
        });
        
        it(@"should set email correctly", ^{
            expect(user).toNot.beNil();
            expect(user.email).toNot.beNil();
            expect(user.email).equal(@"email");
        });
        
    });
    
});

SpecEnd