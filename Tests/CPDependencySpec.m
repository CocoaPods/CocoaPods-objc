//  Created by David Grandinetti on 11/15/15.
//  Copyright 2015 CocoaPods. All rights reserved.
//

#import "CPTestsHelper.h"
#import "CPDependency.h"

SpecBegin(CPDependency)

describe(@"CPDependency", ^{

  it(@"creates a default requirement of being >= 0", ^{
    CPDependency *dependency = [[CPDependency alloc] initWithName:@"test" requirements:@[] attributes:@{}];
    expect(dependency.requirements).to.haveACountOf(1);
    expect(dependency.requirements[0]).to.equal(@">= 0");
  });

});

SpecEnd
