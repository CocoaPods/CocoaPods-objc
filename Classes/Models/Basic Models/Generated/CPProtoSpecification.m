//
//  File generated programmatically by a Rake task.

#import "CPProtoSpecification.h"
#import "CPDictionaryBackedObject+Private.h"

NSString * const kCPSpecificationNameAttributeKey = @"name";
NSString * const kCPSpecificationVersionAttributeKey = @"version";
NSString * const kCPSpecificationAuthorsAttributeKey = @"authors";
NSString * const kCPSpecificationLicenseAttributeKey = @"license";
NSString * const kCPSpecificationHomepageAttributeKey = @"homepage";
NSString * const kCPSpecificationSourceAttributeKey = @"source";
NSString * const kCPSpecificationSummaryAttributeKey = @"summary";
NSString * const kCPSpecificationDescriptionAttributeKey = @"description";
NSString * const kCPSpecificationScreenshotsAttributeKey = @"screenshots";
NSString * const kCPSpecificationDocumentationAttributeKey = @"documentation";
NSString * const kCPSpecificationPlatformsAttributeKey = @"platforms";
NSString * const kCPSpecificationDependenciesAttributeKey = @"dependencies";
NSString * const kCPSpecificationRequiresArcAttributeKey = @"requires_arc";
NSString * const kCPSpecificationFrameworksAttributeKey = @"frameworks";
NSString * const kCPSpecificationWeakFrameworksAttributeKey = @"weak_frameworks";
NSString * const kCPSpecificationLibrariesAttributeKey = @"libraries";
NSString * const kCPSpecificationCompilerFlagsAttributeKey = @"compiler_flags";
NSString * const kCPSpecificationXcconfigAttributeKey = @"xcconfig";
NSString * const kCPSpecificationPrefixHeaderContentsAttributeKey = @"prefix_header_contents";
NSString * const kCPSpecificationPrefixHeaderFileAttributeKey = @"prefix_header_file";
NSString * const kCPSpecificationHeaderDirAttributeKey = @"header_dir";
NSString * const kCPSpecificationHeaderMappingsDirAttributeKey = @"header_mappings_dir";
NSString * const kCPSpecificationSourceFilesAttributeKey = @"source_files";
NSString * const kCPSpecificationPublicHeaderFilesAttributeKey = @"public_header_files";
NSString * const kCPSpecificationResourcesAttributeKey = @"resources";
NSString * const kCPSpecificationExcludeFilesAttributeKey = @"exclude_files";
NSString * const kCPSpecificationPreservePathsAttributeKey = @"preserve_paths";
NSString * const kCPSpecificationDefaultSubspecAttributeKey = @"default_subspec";

@implementation CPProtoSpecification

- (NSString*)name; {
  return [self backingStoreValueForKey:@"name"];
}

- (void)setName:(NSString*)name; {
  [self setBackingStoreValue:name forKey:@"name"];
}

- (NSString*)version; {
  return [self backingStoreValueForKey:@"version"];
}

- (void)setVersion:(NSString*)version; {
  [self setBackingStoreValue:version forKey:@"version"];
}

- (NSString*)authors; {
  return [self backingStoreValueForKey:@"authors"];
}

- (void)setAuthors:(NSString*)authors; {
  [self setBackingStoreValue:authors forKey:@"authors"];
}

- (NSDictionary*)license; {
  id value = [self backingStoreValueForKey:@"license"];
  return CPCoherceToDictionary(value);
}

- (void)setLicense:(NSDictionary*)license; {
  [self setBackingStoreValue:license forKey:@"license"];
}

- (NSString*)homepage; {
  return [self backingStoreValueForKey:@"homepage"];
}

- (void)setHomepage:(NSString*)homepage; {
  [self setBackingStoreValue:homepage forKey:@"homepage"];
}

- (NSDictionary*)source; {
  id value = [self backingStoreValueForKey:@"source"];
  return CPCoherceToDictionary(value);
}

- (void)setSource:(NSDictionary*)source; {
  [self setBackingStoreValue:source forKey:@"source"];
}

- (NSString*)summary; {
  return [self backingStoreValueForKey:@"summary"];
}

- (void)setSummary:(NSString*)summary; {
  [self setBackingStoreValue:summary forKey:@"summary"];
}

- (NSString*)descriptionAttr; {
  return [self backingStoreValueForKey:@"description"];
}

- (void)setDescriptionAttr:(NSString*)descriptionAttr; {
  [self setBackingStoreValue:descriptionAttr forKey:@"description"];
}

- (NSArray*)screenshots; {
  id value = [self backingStoreValueForKey:@"screenshots"];
  return CPCoherceToArray(value);
}

- (void)setScreenshots:(NSArray*)screenshots; {
  [self setBackingStoreValue:screenshots forKey:@"screenshots"];
}

- (NSDictionary*)documentation; {
  id value = [self backingStoreValueForKey:@"documentation"];
  return CPCoherceToDictionary(value);
}

- (void)setDocumentation:(NSDictionary*)documentation; {
  [self setBackingStoreValue:documentation forKey:@"documentation"];
}

- (NSDictionary*)platforms; {
  id value = [self backingStoreValueForKey:@"platforms"];
  return CPCoherceToDictionary(value);
}

- (void)setPlatforms:(NSDictionary*)platforms; {
  [self setBackingStoreValue:platforms forKey:@"platforms"];
}

- (NSDictionary*)dependencies; {
  id value = [self backingStoreValueForKey:@"dependencies"];
  return CPCoherceToDictionary(value);
}

- (void)setDependencies:(NSDictionary*)dependencies; {
  [self setBackingStoreValue:dependencies forKey:@"dependencies"];
}

- (BOOL)requiresArc; {
  id value = [self backingStoreValueForKey:@"requires_arc"];
  return [value boolValue];
}

- (void)setRequiresArc:(BOOL)requiresArc; {
  [self setBackingStoreValue:[NSNumber numberWithBool:requiresArc] forKey:@"requires_arc"];
}

- (NSArray*)frameworks; {
  id value = [self backingStoreValueForKey:@"frameworks"];
  return CPCoherceToArray(value);
}

- (void)setFrameworks:(NSArray*)frameworks; {
  [self setBackingStoreValue:frameworks forKey:@"frameworks"];
}

- (NSArray*)weakFrameworks; {
  id value = [self backingStoreValueForKey:@"weak_frameworks"];
  return CPCoherceToArray(value);
}

- (void)setWeakFrameworks:(NSArray*)weakFrameworks; {
  [self setBackingStoreValue:weakFrameworks forKey:@"weak_frameworks"];
}

- (NSArray*)libraries; {
  id value = [self backingStoreValueForKey:@"libraries"];
  return CPCoherceToArray(value);
}

- (void)setLibraries:(NSArray*)libraries; {
  [self setBackingStoreValue:libraries forKey:@"libraries"];
}

- (NSArray*)compilerFlags; {
  id value = [self backingStoreValueForKey:@"compiler_flags"];
  return CPCoherceToArray(value);
}

- (void)setCompilerFlags:(NSArray*)compilerFlags; {
  [self setBackingStoreValue:compilerFlags forKey:@"compiler_flags"];
}

- (NSDictionary*)xcconfig; {
  id value = [self backingStoreValueForKey:@"xcconfig"];
  return CPCoherceToDictionary(value);
}

- (void)setXcconfig:(NSDictionary*)xcconfig; {
  [self setBackingStoreValue:xcconfig forKey:@"xcconfig"];
}

- (NSString*)prefixHeaderContents; {
  return [self backingStoreValueForKey:@"prefix_header_contents"];
}

- (void)setPrefixHeaderContents:(NSString*)prefixHeaderContents; {
  [self setBackingStoreValue:prefixHeaderContents forKey:@"prefix_header_contents"];
}

- (NSString*)prefixHeaderFile; {
  return [self backingStoreValueForKey:@"prefix_header_file"];
}

- (void)setPrefixHeaderFile:(NSString*)prefixHeaderFile; {
  [self setBackingStoreValue:prefixHeaderFile forKey:@"prefix_header_file"];
}

- (NSString*)headerDir; {
  return [self backingStoreValueForKey:@"header_dir"];
}

- (void)setHeaderDir:(NSString*)headerDir; {
  [self setBackingStoreValue:headerDir forKey:@"header_dir"];
}

- (NSString*)headerMappingsDir; {
  return [self backingStoreValueForKey:@"header_mappings_dir"];
}

- (void)setHeaderMappingsDir:(NSString*)headerMappingsDir; {
  [self setBackingStoreValue:headerMappingsDir forKey:@"header_mappings_dir"];
}

- (NSArray*)sourceFiles; {
  id value = [self backingStoreValueForKey:@"source_files"];
  return CPCoherceToArray(value);
}

- (void)setSourceFiles:(NSArray*)sourceFiles; {
  [self setBackingStoreValue:sourceFiles forKey:@"source_files"];
}

- (NSArray*)publicHeaderFiles; {
  id value = [self backingStoreValueForKey:@"public_header_files"];
  return CPCoherceToArray(value);
}

- (void)setPublicHeaderFiles:(NSArray*)publicHeaderFiles; {
  [self setBackingStoreValue:publicHeaderFiles forKey:@"public_header_files"];
}

- (NSArray*)resources; {
  id value = [self backingStoreValueForKey:@"resources"];
  return CPCoherceToArray(value);
}

- (void)setResources:(NSArray*)resources; {
  [self setBackingStoreValue:resources forKey:@"resources"];
}

- (NSArray*)excludeFiles; {
  id value = [self backingStoreValueForKey:@"exclude_files"];
  return CPCoherceToArray(value);
}

- (void)setExcludeFiles:(NSArray*)excludeFiles; {
  [self setBackingStoreValue:excludeFiles forKey:@"exclude_files"];
}

- (NSArray*)preservePaths; {
  id value = [self backingStoreValueForKey:@"preserve_paths"];
  return CPCoherceToArray(value);
}

- (void)setPreservePaths:(NSArray*)preservePaths; {
  [self setBackingStoreValue:preservePaths forKey:@"preserve_paths"];
}

- (NSString*)defaultSubspec; {
  return [self backingStoreValueForKey:@"default_subspec"];
}

- (void)setDefaultSubspec:(NSString*)defaultSubspec; {
  [self setBackingStoreValue:defaultSubspec forKey:@"default_subspec"];
}

@end

