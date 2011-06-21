//
//  cCSVParseTests.m
//  cCSVParseTests
//
//  Created by Squeeks on 21/06/2011.
//  Copyright 2011 Squeeks.
//

#import "cCSVParseTests.h"
#import "parseCSV.h"

@implementation cCSVParseTests

- (void)setUp
{
    [super setUp];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testWimbledon
{
    CSVParser *parser = [CSVParser new];
    STAssertNotNil(parser, @"Parser instance created");
    
    [parser openFile: @"cCSVParseTests/data/wimbledon.csv"];
    NSMutableArray *csvData = [parser parseFile];
    int totalRows = (int)[csvData count];
    STAssertEquals(totalRows, 128, @"File loaded successfully");
    
    NSArray *row = [csvData objectAtIndex: 23];

    NSArray *matchingArray =  [NSArray arrayWithObjects: @"36",
                               @"London",
                               @"Wimbledon",
                               @"21/06/10",
                               @"Grand Slam",
                               @"Outdoor",
                               @"Grass",
                               @"1st Round",
                               @"5",
                               @"Becker B.",
                               @"Sweeting R.",
                               @"71",
                               @"119",
                               @"712",
                               @"430",
                               @"5",
                               @"7",
                               @"6",
                               @"2",
                               @"6",
                               @"2",
                               @"6",
                               @"4",
                               @"",
                               @"",
                               @"3",
                               @"1",
                               @"Completed",
                               @"1.16",
                               @"4.5",
                               @"1.25",
                               @"3.6",
                               @"1.25",
                               @"3.75",
                               @"1.24",
                               @"4.68",
                               @"1.25",
                               @"3.5",
                               @"1.28",
                               @"4.84",
                               @"1.21",
                               @"4.13", nil];

    STAssertEqualObjects(row, matchingArray, @"Valid row");
    
    [parser closeFile];
}

@end
