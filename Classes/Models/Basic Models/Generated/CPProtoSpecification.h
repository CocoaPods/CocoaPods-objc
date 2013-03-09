//
//  File generated programmatically by a Rake task.

#import "CPDictionaryBackedObject.h"

extern NSString * const kCPSpecificationNameAttributeKey;
extern NSString * const kCPSpecificationVersionAttributeKey;
extern NSString * const kCPSpecificationAuthorsAttributeKey;
extern NSString * const kCPSpecificationLicenseAttributeKey;
extern NSString * const kCPSpecificationHomepageAttributeKey;
extern NSString * const kCPSpecificationSourceAttributeKey;
extern NSString * const kCPSpecificationSummaryAttributeKey;
extern NSString * const kCPSpecificationDescriptionAttributeKey;
extern NSString * const kCPSpecificationScreenshotsAttributeKey;
extern NSString * const kCPSpecificationDocumentationAttributeKey;
extern NSString * const kCPSpecificationPlatformsAttributeKey;
extern NSString * const kCPSpecificationDependenciesAttributeKey;
extern NSString * const kCPSpecificationRequiresArcAttributeKey;
extern NSString * const kCPSpecificationFrameworksAttributeKey;
extern NSString * const kCPSpecificationWeakFrameworksAttributeKey;
extern NSString * const kCPSpecificationLibrariesAttributeKey;
extern NSString * const kCPSpecificationCompilerFlagsAttributeKey;
extern NSString * const kCPSpecificationXcconfigAttributeKey;
extern NSString * const kCPSpecificationPrefixHeaderContentsAttributeKey;
extern NSString * const kCPSpecificationPrefixHeaderFileAttributeKey;
extern NSString * const kCPSpecificationHeaderDirAttributeKey;
extern NSString * const kCPSpecificationHeaderMappingsDirAttributeKey;
extern NSString * const kCPSpecificationSourceFilesAttributeKey;
extern NSString * const kCPSpecificationPublicHeaderFilesAttributeKey;
extern NSString * const kCPSpecificationResourcesAttributeKey;
extern NSString * const kCPSpecificationExcludeFilesAttributeKey;
extern NSString * const kCPSpecificationPreservePathsAttributeKey;
extern NSString * const kCPSpecificationDefaultSubspecAttributeKey;

@interface CPProtoSpecification : CPDictionaryBackedObject

/**
  The name attribute.
*/
- (NSString*)name;
- (void)setName:(NSString*)name;

/**
  The version attribute.
*/
- (NSString*)version;
- (void)setVersion:(NSString*)version;

/**
  The authors attribute.
*/
- (NSString*)authors;
- (void)setAuthors:(NSString*)authors;

/**
  The license attribute.
*/
- (NSDictionary*)license;
- (void)setLicense:(NSDictionary*)license;

/**
  The homepage attribute.
*/
- (NSString*)homepage;
- (void)setHomepage:(NSString*)homepage;

/**
  The source attribute.
*/
- (NSDictionary*)source;
- (void)setSource:(NSDictionary*)source;

/**
  The summary attribute.
*/
- (NSString*)summary;
- (void)setSummary:(NSString*)summary;

/**
  The description attribute.
*/
- (NSString*)descriptionAttr;
- (void)setDescriptionAttr:(NSString*)descriptionAttr;

/**
  The screenshots attribute.
*/
- (NSArray*)screenshots;
- (void)setScreenshots:(NSArray*)screenshots;

/**
  The documentation attribute.
*/
- (NSDictionary*)documentation;
- (void)setDocumentation:(NSDictionary*)documentation;

/**
  The platforms attribute.
*/
- (NSDictionary*)platforms;
- (void)setPlatforms:(NSDictionary*)platforms;

/**
  The dependencies attribute.
*/
- (NSDictionary*)dependencies;
- (void)setDependencies:(NSDictionary*)dependencies;

/**
  The requires_arc attribute.
*/
- (BOOL)requiresArc;
- (void)setRequiresArc:(BOOL)requiresArc;

/**
  The frameworks attribute.
*/
- (NSArray*)frameworks;
- (void)setFrameworks:(NSArray*)frameworks;

/**
  The weak_frameworks attribute.
*/
- (NSArray*)weakFrameworks;
- (void)setWeakFrameworks:(NSArray*)weakFrameworks;

/**
  The libraries attribute.
*/
- (NSArray*)libraries;
- (void)setLibraries:(NSArray*)libraries;

/**
  The compiler_flags attribute.
*/
- (NSArray*)compilerFlags;
- (void)setCompilerFlags:(NSArray*)compilerFlags;

/**
  The xcconfig attribute.
*/
- (NSDictionary*)xcconfig;
- (void)setXcconfig:(NSDictionary*)xcconfig;

/**
  The prefix_header_contents attribute.
*/
- (NSString*)prefixHeaderContents;
- (void)setPrefixHeaderContents:(NSString*)prefixHeaderContents;

/**
  The prefix_header_file attribute.
*/
- (NSString*)prefixHeaderFile;
- (void)setPrefixHeaderFile:(NSString*)prefixHeaderFile;

/**
  The header_dir attribute.
*/
- (NSString*)headerDir;
- (void)setHeaderDir:(NSString*)headerDir;

/**
  The header_mappings_dir attribute.
*/
- (NSString*)headerMappingsDir;
- (void)setHeaderMappingsDir:(NSString*)headerMappingsDir;

/**
  The source_files attribute.
*/
- (NSArray*)sourceFiles;
- (void)setSourceFiles:(NSArray*)sourceFiles;

/**
  The public_header_files attribute.
*/
- (NSArray*)publicHeaderFiles;
- (void)setPublicHeaderFiles:(NSArray*)publicHeaderFiles;

/**
  The resources attribute.
*/
- (NSArray*)resources;
- (void)setResources:(NSArray*)resources;

/**
  The exclude_files attribute.
*/
- (NSArray*)excludeFiles;
- (void)setExcludeFiles:(NSArray*)excludeFiles;

/**
  The preserve_paths attribute.
*/
- (NSArray*)preservePaths;
- (void)setPreservePaths:(NSArray*)preservePaths;

/**
  The default_subspec attribute.
*/
- (NSString*)defaultSubspec;
- (void)setDefaultSubspec:(NSString*)defaultSubspec;

@end

