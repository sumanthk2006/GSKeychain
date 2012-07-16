//
//  GSKeychainTests.m
//  GSKeychainTests
//
//  Created by Simon Whitaker on 16/07/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import "GSKeychainTests.h"
#import "GSKeychain.h"

static NSString * testKey = nil;
static NSString * testSecret = nil;

@implementation GSKeychainTests

+ (void)initialize
{
    testKey = @"secret key";
    testSecret = [[NSDate date] description];
}

- (void)setUp
{
    [super setUp];
    
    // Precondition: secret doesn't exist in the keychain to begin with
    [[GSKeychain systemKeychain] removeSecretForKey:testKey];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testEverything
{
    GSKeychain * kc = [GSKeychain systemKeychain];
    
    NSString * secret;
    
    // Make sure secretForKey returns nil
    secret = [kc secretForKey:testKey];
    STAssertNil(secret, @"secretForKey: returns nil when secret not set");
    
    [kc setSecret:testSecret forKey:testKey];
    secret = [kc secretForKey:testKey];
    STAssertEqualObjects(secret, testSecret, @"secretForKey: returns secret once set");
    
    NSString * newSecret = [testSecret stringByAppendingString:@"new!"];
    [kc setSecret:newSecret forKey:testKey];
    secret = [kc secretForKey:testKey];
    STAssertEqualObjects(secret, newSecret, @"secretForKey: returns new secret after update");
    
    [kc removeSecretForKey:testKey];
    secret = [kc secretForKey:testKey];
    STAssertNil(secret, @"secretForKey: returns nil when secret removed");
}

@end
