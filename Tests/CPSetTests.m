//
//  CPSetTests.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 02/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

//
//  CPVersion.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 02/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//


#import "CPTestsHelper.h"

#import "CPSet.h"

CPSet* set() {
  CPSource *custom = mock([CPSource class]);
  [given([custom name]) willReturn:@"custom"];
  [given([custom versionsForPod:@"VeriJSON"]) willReturn:@[@"0.1.0"]];

  CPSource *master = mock([CPSource class]);
  [given([master name]) willReturn:@"master"];
  [given([master versionsForPod:@"VeriJSON"]) willReturn:@[@"0.1.1", @"0.1.0"]];

  CPSource *tests = mock([CPSource class]);
  [given([tests name]) willReturn:@"tests"];
  [given([tests versionsForPod:@"VeriJSON"]) willReturn:@[@"0.1.1.rc1"]];


  NSArray *sources = @[custom, master, tests];
  return [[CPSet alloc] initWithName:@"VeriJSON" sources:sources];
}

SpecBegin(CPSet)

describe(@"Set", ^{

  it(@"returns the available versions", ^{
    NSArray *versions = set().versions;
    NSArray *versionsAsStrings = [versions valueForKeyPath:@"string"];
    NSArray *expected = @[@"0.1.0", @"0.1.1", @"0.1.1.rc1"];
    expect(versionsAsStrings).to.equal(expected);
  });

  it(@"returns the name of the source for the given version", ^{
    expect([set() sourceNameForVersion:@"0.1.1"]).to.equal(@"master");
  });

  it(@"returns the first name of the sources containing the given version", ^{
    expect([set() sourceNameForVersion:@"0.1.0"]).to.equal(@"custom");
  });

  it(@"returns the highest version", ^{
    expect(set().highestVersion).to.equal(@"0.1.1.rc1");
  });

  it(@"returns the source which contains the highest version", ^{
    expect([set() highestVersionSourceName]).to.equal(@"tests");
  });

});

SpecEnd
