//
//  CPVersion.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 02/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#define EXP_SHORTHAND
#import "Expecta.h"
#import "Specta.h"

#import "CPVersion.h"

CPVersion* version(NSString *string) {
  return [[CPVersion alloc] initWithString:string];
}

SpecBegin(CPVersion)

describe(@"Version", ^{

  it (@"returns the string representation", ^{
    expect(version(@"1.0.0").string).to.equal(@"1.0.0");
  });

  it (@"returns the segments", ^{
    NSArray *segments = @[@"1", @"2", @"0"];
    expect(version(@"1.2.0").segments).to.equal(segments);
  });

  it (@"handles strings while detecting the segments", ^{
    NSArray *segments = @[@"1", @"1", @"beta"];
    expect(version(@"1.1beta").segments).to.equal(segments);
  });

  it (@"handles dashes while detecting the segments", ^{
    NSArray *segments = @[@"1", @"pre"];
    expect(version(@"1-pre").segments).to.equal(segments);
  });

  it (@"returns that it is smaller than another one", ^{
    NSComparisonResult comparison = [version(@"1.2") compare:version(@"1.3")];
    expect(comparison).to.equal(NSOrderedAscending);
  });

  it (@"returns that it is bigger than another one", ^{
    NSComparisonResult comparison = [version(@"2.0") compare:version(@"1.3")];
    expect(comparison).to.equal(NSOrderedDescending);
  });

  it (@"returns that it is equal to another one", ^{
    NSComparisonResult comparison = [version(@"1.2") compare:version(@"1.2")];
    expect(comparison).to.equal(NSOrderedSame);
  });

  // TODO: This should not be the case but for the moment I'm mimicking ruby gems.
  it (@"only takes into account the common number of segments in the comparison", ^{
    NSComparisonResult comparison = [version(@"1.2.3") compare:version(@"1.2")];
    expect(comparison).to.equal(NSOrderedSame);
  });

  it (@"compares segments composed by letter alphabetically", ^{
    NSComparisonResult comparison = [version(@"1.2.alpha") compare:version(@"1.2.beta")];
    expect(comparison).to.equal(NSOrderedAscending);
  });

  it (@"compares segments composed by numbers numerically", ^{
    NSComparisonResult comparison = [version(@"1.2") compare:version(@"1.12")];
    expect(comparison).to.equal(NSOrderedAscending);
  });

});

SpecEnd
