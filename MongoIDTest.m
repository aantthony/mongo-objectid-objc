#import <XCTest/XCTest.h>
#import "MongoID.h"

@interface MongoIDTest : XCTestCase

@end

@implementation MongoIDTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExample
{
    NSScanner *scanner = [NSScanner scannerWithString:@"33"];
    scanner.scanLocation = 0;
    unsigned int a;
    [scanner scanHexInt:&a];
    assert(a == 0x33);
    
    ObjectID _id = [MongoID id];
    NSString *str = [MongoID stringWithId:_id];
    ObjectID _id2 = [MongoID idWithString:str];
    if (_id2.m[0] != _id.m[0] || _id2.m[1] != _id.m[1] || _id2.m[2] != _id.m[2]) {
        XCTFail(@"Expected \"%@\" to match", str);
    }
}

@end
