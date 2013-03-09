//
//  CPTestsHelper.h
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 03/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import <Foundation/Foundation.h>

#define EXP_SHORTHAND

#import "Expecta.h"
#import "Specta.h"
#import "OCMockito.h"

NSString* fixture(NSString *name);

NSString* yamlFixture(NSString *name);
NSMutableArray* CPDecodeYAMLString(NSString* yamlString);

/*
 Defining HC_SHORTHAND manually because the mocks are built in a funtion.
 */
#define mock(aClass) MKTMock(aClass)
#define given(methodCall) MKTGivenWithLocation(nil, __FILE__, __LINE__, methodCall)

