//
//  CPSpecificationTests.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 01/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import "CPTestsHelper.h"
#import "CPPodfile.h"

CPPodfile* podfile() {  
  NSString *yaml = yamlFixture(@"Podfile.yaml");
  return [[CPPodfile alloc] initWithYAML:yaml];
}

CPPodfile* energyPodfile() {
  NSString *yaml = yamlFixture(@"EnergyPodfile.yaml");
  return [[CPPodfile alloc] initWithYAML:yaml];
}


SpecBegin(CPPodfile)

describe(@"Podfile", ^{

  it (@"returns the target definitions", ^{
    NSArray *names = [podfile().targetDefinitions valueForKey:@"name"];
    expect(names).to.equal(@[@"Pods"]);
  });

  it (@"returns the workspace", ^{
    expect(podfile().workspace).to.equal(@"MyWorkspace");
  });

  it (@"returns whether it should generate bridge support", ^{
    expect(podfile().generateBridgeSupport).to.beTruthy();
  });

  it (@"returns whether it should set the ARC compatibility flag", ^{
    expect(podfile().setArcCompatibilityFlag).to.beTruthy();
  });

  it (@"returns an empty set of plugins", ^{
    expect(podfile().plugins.count).to.equal(0);
  });

});

SpecEnd

