//
//  File generated programmatically by a Rake task.

#import "CPDictionaryBackedObject.h"

extern NSString * const kCPTargetDefinitionPlatformAttributeKey;
extern NSString * const kCPTargetDefinitionPodspecsAttributeKey;
extern NSString * const kCPTargetDefinitionExclusiveAttributeKey;
extern NSString * const kCPTargetDefinitionLinkWithAttributeKey;
extern NSString * const kCPTargetDefinitionInhibitAllWarningsAttributeKey;
extern NSString * const kCPTargetDefinitionUserProjectPathAttributeKey;
extern NSString * const kCPTargetDefinitionBuildConfigurationsAttributeKey;
extern NSString * const kCPTargetDefinitionDependenciesAttributeKey;
extern NSString * const kCPTargetDefinitionChildrenAttributeKey;
extern NSString * const kCPTargetDefinitionNameAttributeKey;
extern NSString * const kCPTargetDefinitionLinkWithFirstTargetAttributeKey;

@interface CPProtoTargetDefinition : CPDictionaryBackedObject

/**
  The platform attribute.
*/
- (NSString*)platform;
- (void)setPlatform:(NSString*)platform;

/**
  The podspecs attribute.
*/
- (NSArray*)podspecs;
- (void)setPodspecs:(NSArray*)podspecs;

/**
  The exclusive attribute.
*/
- (BOOL)exclusive;
- (void)setExclusive:(BOOL)exclusive;

/**
  The link_with attribute.
*/
- (NSString*)linkWith;
- (void)setLinkWith:(NSString*)linkWith;

/**
  The inhibit_all_warnings attribute.
*/
- (BOOL)inhibitAllWarnings;
- (void)setInhibitAllWarnings:(BOOL)inhibitAllWarnings;

/**
  The user_project_path attribute.
*/
- (NSString*)userProjectPath;
- (void)setUserProjectPath:(NSString*)userProjectPath;

/**
  The build_configurations attribute.
*/
- (NSDictionary*)buildConfigurations;
- (void)setBuildConfigurations:(NSDictionary*)buildConfigurations;

/**
  The dependencies attribute.
*/
- (NSArray*)dependencies;
- (void)setDependencies:(NSArray*)dependencies;

/**
  The children attribute.
*/
- (NSArray*)children;
- (void)setChildren:(NSArray*)children;

/**
  The name attribute.
*/
- (NSString*)name;
- (void)setName:(NSString*)name;

/**
  The link_with_first_target attribute.
*/
- (NSString*)linkWithFirstTarget;
- (void)setLinkWithFirstTarget:(NSString*)linkWithFirstTarget;

@end

