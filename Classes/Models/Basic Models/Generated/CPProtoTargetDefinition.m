//
//  File generated programmatically by a Rake task.

#import "CPProtoTargetDefinition.h"
#import "CPDictionaryBackedObject+Private.h"

NSString * const kCPTargetDefinitionPlatformAttributeKey = @"platform";
NSString * const kCPTargetDefinitionPodspecsAttributeKey = @"podspecs";
NSString * const kCPTargetDefinitionExclusiveAttributeKey = @"exclusive";
NSString * const kCPTargetDefinitionLinkWithAttributeKey = @"link_with";
NSString * const kCPTargetDefinitionInhibitAllWarningsAttributeKey = @"inhibit_all_warnings";
NSString * const kCPTargetDefinitionUserProjectPathAttributeKey = @"user_project_path";
NSString * const kCPTargetDefinitionBuildConfigurationsAttributeKey = @"build_configurations";
NSString * const kCPTargetDefinitionDependenciesAttributeKey = @"dependencies";
NSString * const kCPTargetDefinitionChildrenAttributeKey = @"children";
NSString * const kCPTargetDefinitionNameAttributeKey = @"name";
NSString * const kCPTargetDefinitionLinkWithFirstTargetAttributeKey = @"link_with_first_target";

@implementation CPProtoTargetDefinition

- (NSString*)platform; {
  return [self backingStoreValueForKey:@"platform"];
}

- (void)setPlatform:(NSString*)platform; {
  [self setBackingStoreValue:platform forKey:@"platform"];
}

- (NSArray*)podspecs; {
  id value = [self backingStoreValueForKey:@"podspecs"];
  return CPCoherceToArray(value);
}

- (void)setPodspecs:(NSArray*)podspecs; {
  [self setBackingStoreValue:podspecs forKey:@"podspecs"];
}

- (BOOL)exclusive; {
  id value = [self backingStoreValueForKey:@"exclusive"];
  return [value boolValue];
}

- (void)setExclusive:(BOOL)exclusive; {
  [self setBackingStoreValue:[NSNumber numberWithBool:exclusive] forKey:@"exclusive"];
}

- (NSString*)linkWith; {
  return [self backingStoreValueForKey:@"link_with"];
}

- (void)setLinkWith:(NSString*)linkWith; {
  [self setBackingStoreValue:linkWith forKey:@"link_with"];
}

- (BOOL)inhibitAllWarnings; {
  id value = [self backingStoreValueForKey:@"inhibit_all_warnings"];
  return [value boolValue];
}

- (void)setInhibitAllWarnings:(BOOL)inhibitAllWarnings; {
  [self setBackingStoreValue:[NSNumber numberWithBool:inhibitAllWarnings] forKey:@"inhibit_all_warnings"];
}

- (NSString*)userProjectPath; {
  return [self backingStoreValueForKey:@"user_project_path"];
}

- (void)setUserProjectPath:(NSString*)userProjectPath; {
  [self setBackingStoreValue:userProjectPath forKey:@"user_project_path"];
}

- (NSDictionary*)buildConfigurations; {
  id value = [self backingStoreValueForKey:@"build_configurations"];
  return CPCoherceToDictionary(value);
}

- (void)setBuildConfigurations:(NSDictionary*)buildConfigurations; {
  [self setBackingStoreValue:buildConfigurations forKey:@"build_configurations"];
}

- (NSArray*)dependencies; {
  id value = [self backingStoreValueForKey:@"dependencies"];
  return CPCoherceToArray(value);
}

- (void)setDependencies:(NSArray*)dependencies; {
  [self setBackingStoreValue:dependencies forKey:@"dependencies"];
}

- (NSArray*)children; {
  id value = [self backingStoreValueForKey:@"children"];
  return CPCoherceToArray(value);
}

- (void)setChildren:(NSArray*)children; {
  [self setBackingStoreValue:children forKey:@"children"];
}

- (NSString*)name; {
  return [self backingStoreValueForKey:@"name"];
}

- (void)setName:(NSString*)name; {
  [self setBackingStoreValue:name forKey:@"name"];
}

- (NSString*)linkWithFirstTarget; {
  return [self backingStoreValueForKey:@"link_with_first_target"];
}

- (void)setLinkWithFirstTarget:(NSString*)linkWithFirstTarget; {
  [self setBackingStoreValue:linkWithFirstTarget forKey:@"link_with_first_target"];
}

@end

