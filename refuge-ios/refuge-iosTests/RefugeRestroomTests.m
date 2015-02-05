//
//  RefugeRestroomTests.m
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/4/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "NSDate+Refuge.h"
#import "RefugeRestroom.h"

@interface RefugeRestroomTests : XCTestCase

@property (nonatomic, strong) RefugeRestroom *restroom;

@end

@implementation RefugeRestroomTests

- (void)setUp
{
    [super setUp];
    
    self.restroom = [[RefugeRestroom alloc] init];
    self.restroom.identifier = [NSNumber numberWithInt:100];
    self.restroom.name = @"Target";
    self.restroom.street = @"7129 O'Kelly Chapel Road";
    self.restroom.city = @"Cary";
    self.restroom.state = @"North Carolina";
    self.restroom.country = @"United States";
    self.restroom.isAccessible = NO;
    self.restroom.isUnisex = YES;
    self.restroom.numUpvotes = 1;
    self.restroom.numDownvotes = 0;
    self.restroom.directions = @"Labeled \"Family Restroom,\" right around the corner to the left when you walk in.";
    self.restroom.comment = @"No comment";
    self.restroom.latitude = [NSDecimalNumber decimalNumberWithString:@"35.867321"];
    self.restroom.longitude = [NSDecimalNumber decimalNumberWithString:@"-78.567711"];
    self.restroom.createdDate = [NSDate dateFromString:@"2014-02-02T20:55:31.555Z"];
}

- (void)tearDown
{
    self.restroom = nil;
    
    [super tearDown];
}

- (void)testThatRestroomExists
{
    XCTAssertNotNil(self.restroom, @"Should be able to create a new Restroom instance");
}

- (void)testThatRestroomPropertiesAreNotInvalid
{
    XCTAssertNotNil(self.restroom.identifier, @"Restroom id should not be nil");
    XCTAssertNotNil(self.restroom.name, @"Restroom name should not be nil");
    XCTAssertNotNil(self.restroom.street, @"Restroom street should not be nil");
    XCTAssertNotNil(self.restroom.city, @"Restroom city should not be nil");
    XCTAssertNotNil(self.restroom.state, @"Restroom state should not be nil");
    XCTAssertNotNil(self.restroom.country, @"Restroom country should not be nil");
    XCTAssertNotNil(self.restroom.directions, @"Restroom directions should not be nil");
    XCTAssertNotNil(self.restroom.comment, @"Restroom comment should not be nil");
    XCTAssertNotNil(self.restroom.latitude, @"Restroom latitude should not be nil");
    XCTAssertNotNil(self.restroom.longitude, @"Restroom longitude should not be nil");
    XCTAssertNotNil(self.restroom.createdDate, @"Restroom created date should not be nil");
}

- (void)testThatRestroomPropertiesAreSetCorrectly
{
    XCTAssertEqualObjects(self.restroom.identifier,[NSNumber numberWithInt:100], @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.name, @"Target", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.street, @"7129 O'Kelly Chapel Road", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.city, @"Cary", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.state, @"North Carolina", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.country, @"United States", @"Restroom properties should be set correctly");
    XCTAssertFalse(self.restroom.isAccessible, @"Restroom properties should be set correctly");
    XCTAssertTrue(self.restroom.isUnisex, @"Restroom properties should be set correctly");
    XCTAssertEqual(self.restroom.numUpvotes, 1, @"Restroom properties should be set correctly");
    XCTAssertEqual(self.restroom.numDownvotes, 0, @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.directions, @"Labeled \"Family Restroom,\" right around the corner to the left when you walk in.", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.comment, @"No comment", @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.latitude, [NSDecimalNumber decimalNumberWithString:@"35.867321"], @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.longitude, [NSDecimalNumber decimalNumberWithString:@"-78.567711"], @"Restroom properties should be set correctly");
    XCTAssertEqualObjects(self.restroom.createdDate, [NSDate dateFromString:@"2014-02-02T20:55:31.555Z"], @"Restroom properties should be set correctly");
}

@end
