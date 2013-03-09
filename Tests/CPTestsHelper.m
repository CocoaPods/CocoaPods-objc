//
//  CPTestsHelper.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 03/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import "CPTestsHelper.h"
#import <YAMLSerialization.h>

NSString* fixture(NSString *name) {
  NSBundle *bundle = [NSBundle bundleWithIdentifier:@"org.cocoapods.Tests"];
  NSString *path = [bundle pathForResource:name ofType:nil];
  return path;
}

NSString* yamlFixture(NSString *name) {
  NSString *path = fixture(name);
  NSString *yaml = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
  return yaml;
}

NSMutableArray* CPDecodeYAMLString(NSString* yamlString) {
  NSData* data = [yamlString dataUsingEncoding:NSUTF8StringEncoding];
  NSError *error;
  NSMutableArray *result = [YAMLSerialization YAMLWithData:data options:kYAMLReadOptionStringScalars|kYAMLReadOptionImmutable error:&error];
  if (error) {
    NSLog(@"%@", error);
  }
  return result;
}
