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
#import "CPTargetDefinition.h"
#import "CPDependency.h"

CPTargetDefinition* targetDefinition() {
  NSBundle *bundle = [NSBundle bundleWithIdentifier:@"org.cocoapods.objc.DemoTests"];
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
    expect(targetDefinition().platformName).to.equal(@"osx");
  });

  it (@"returns the deployment", ^{
    expect(targetDefinition().deploymentTarget).to.equal(@"10.8");
  });

  it (@"returns the dependencies", ^{
    CPTargetDefinition *td = targetDefinition();
    expect(td.children).to.haveACountOf(2);

    for(CPTargetDefinition *target in td.children) {
      if ([target.name isEqualToString:@"Demo"]) {
        expect(target.dependencies).to.haveACountOf(6);
        expect(target.dependencies[0].attributes).to.equal(@{ @":path": @"../" });
      } else {
        NSArray *expectedOnDemoTests = @[
          [[CPDependency alloc] initWithName:@"Expecta" requirements:@[] attributes:@{}],
          [[CPDependency alloc] initWithName:@"OCMockito" requirements:@[] attributes:@{}],
          [[CPDependency alloc] initWithName:@"Specta" requirements:@[] attributes:@{}]
        ];
        expect(target.name).to.equal(@"DemoTests");
        expect(target.dependencies).to.haveACountOf(3);
        expect(target.dependencies).to.equal(expectedOnDemoTests);
      }
    }
  });

  it (@"returns the children", ^{
    CPTargetDefinition *child = [targetDefinition().children lastObject];
    expect(child.name).to.equal(@"DemoTests");
  });

});

describe(@"Editing a target defintion", ^{

});

SpecEnd
