//
//  File generated programmatically by a Rake task.

#import "CPDictionaryBackedObject.h"

extern NSString * const kCPPodfileTargetDefinitionsAttributeKey;
extern NSString * const kCPPodfileWorkspaceAttributeKey;
extern NSString * const kCPPodfileGenerateBridgeSupportAttributeKey;
extern NSString * const kCPPodfileSetArcCompatibilityFlagAttributeKey;

@interface CPProtoPodfile : CPDictionaryBackedObject

/**
  The target_definitions attribute.
*/
- (NSArray*)targetDefinitions;
- (void)setTargetDefinitions:(NSArray*)targetDefinitions;

/**
  The workspace attribute.
*/
- (NSString*)workspace;
- (void)setWorkspace:(NSString*)workspace;

/**
  The generate_bridge_support attribute.
*/
- (BOOL)generateBridgeSupport;
- (void)setGenerateBridgeSupport:(BOOL)generateBridgeSupport;

/**
  The set_arc_compatibility_flag attribute.
*/
- (BOOL)setArcCompatibilityFlag;
- (void)setSetArcCompatibilityFlag:(BOOL)setArcCompatibilityFlag;

@end

