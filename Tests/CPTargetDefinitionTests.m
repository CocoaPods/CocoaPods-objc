//
//  CPTargetDefinition.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 02/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#define EXP_SHORTHAND
#import "Expecta.h"
#import "Specta.h"

#import "CPPodfile.h"

CPTargetDefinition* targetDefinition() {
  NSBundle *bundle = [NSBundle bundleWithIdentifier:@"org.cocoapods.Tests"];
  NSString *path = [bundle pathForResource:@"Podfile.yaml" ofType:nil];
  NSString *yaml = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
  CPPodfile *podfile = [[CPPodfile alloc] initWithYAML:yaml];
  return [podfile.targetDefinitions objectAtIndex:0];
}

SpecBegin(CPTargetDefinition)

describe(@"A TargetDefinition loaded from a YAML file", ^{

  it (@"returns the name", ^{
    expect(targetDefinition().name).to.equal(@"Pods");
  });

  it (@"returns the whether it is exclusive", ^{
    expect(targetDefinition().exclusive).to.beFalsy();
  });

  it (@"returns the targets to link with", ^{
    expect(targetDefinition().linkWith).to.beNil();
  });

  it (@"returns whether it should link with the first target", ^{
    expect(targetDefinition().linkWithFirstTarget).to.beTruthy();
  });

  it (@"returns the platform", ^{
    expect(targetDefinition().platformName).to.equal(@"ios");
  });

  it (@"returns the deployment", ^{
    expect(targetDefinition().depleymentTarget).to.equal(nil);
  });

  it (@"returns the dependencies", ^{
    NSArray *expected =
    @[
      [[CPDependency alloc] initWithName:@"SSZipArchive" requirements:@[@">= 1"]],
      [[CPDependency alloc] initWithName:@"ASIHTTPRequest" requirements:@[@"~> 1.8.0"]],
      [[CPDependency alloc] initWithName:@"ASIWebPageRequest" requirements:@[@"< 1.8.2"]],
//      [[CPDependency alloc] initWithName:@"Reachability" requirements:nil],
    ];
    expect(targetDefinition().dependencies).to.equal(expected);
  });

  it (@"returns the children", ^{
    CPTargetDefinition *child = [targetDefinition().children lastObject];
    expect(child.name).to.equal(@"Tests");
  });

});

describe(@"Editing a target defintion", ^{

});

SpecEnd
