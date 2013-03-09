//
//  CPAppDelegate.h
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 28/02/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "CPSpecification.h"
#import "KGNoise.h"

@interface CPAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSArrayController *specsArrayController;
@property (weak) IBOutlet NSSearchField *searchField;
@property (weak) IBOutlet WebView *webView;

@property NSArray *sets;
@property CPSpecification *spec;
@property NSString *specAuthors;

@end
