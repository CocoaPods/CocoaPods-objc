//
//  CPAppDelegate.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 28/02/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import "CPAppDelegate.h"
#import "DSUnixTaskSubProcessManager.h"
#import "CPManager.h"

#import <ReactiveCocoa.h>
#import <EXTScope.h>


//------------------------------------------------------------------------------

@interface CPAppDelegate () <NSTextFieldDelegate> @end

//------------------------------------------------------------------------------

@implementation CPAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  [[DSUnixTaskSubProcessManager sharedManager] setLoggingEnabled:TRUE];  
  [self setupCocoaPods];
  [self setupUserInterface];
}

/*
 Loads the sets (directly from the disk) and the search information 
 (through the REPL).
 */
- (void)setupCocoaPods;
{
  CPManager *manager = [CPManager sharedManager];
  [manager handShakeWithSuccess:^(NSString *executableVersion) {
    NSLog(@"handShake: %@", executableVersion);
  } failure:^(NSError *error) {
    [[NSAlert alertWithError:error] runModal];
  }];
  [self setSets:[manager loadSets]];
  [manager loadSearchInformation];
}

/*
 Just binding the selection and the search field.
 */
- (void)setupUserInterface;
{
  NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
  [self.specsArrayController setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];

  @weakify(self);
  [RACAble(self.specsArrayController.selectedObjects) subscribeNext:^(NSArray *selection) {
    @strongify(self)
    [self _selectionDidChange];
  }];

  [self.searchField setDelegate:self];
}

//------------------------------------------------------------------------------
#pragma mark - Private helpers
//------------------------------------------------------------------------------

/**
 Updates the view for the Pod.
*/
- (void)_selectionDidChange {
  if (self.specsArrayController.selectedObjects.count == 0) {
    return;
  }

  CPSet *set = self.specsArrayController.selectedObjects[0];
  NSString *specPath = [set representativeSpecificationPath];
  @weakify(self);
  [[CPManager sharedManager] loadSpecificationWithPath:specPath block:^(CPSpecification *spec) {
    @strongify(self)
    NSString *html = fullHTMLForObject([spec dictionaryRepresentation]);
    [[self.webView mainFrame] loadHTMLString:html baseURL:nil];
  }];
}

- (void)controlTextDidChange:(NSNotification *)notification {
  [self _searchDidChange];
}

- (void)_searchDidChange {

  NSString *searchKey = [self.searchField.stringValue lowercaseString];
  if (![searchKey isEqualToString:@""]) {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(CPSet *set, NSDictionary *bindings) {
      if (set.name && [[set.name lowercaseString] rangeOfString:searchKey].location != NSNotFound) {
        return true;
      }

      if (set.summary && [[set.summary lowercaseString] rangeOfString:searchKey].location != NSNotFound) {
        return true;
      }

      if (set.description && [[set.description lowercaseString] rangeOfString:searchKey].location != NSNotFound) {
        return true;
      }

      if (set.authors && [[[set.authors componentsJoinedByString:@" "]lowercaseString] rangeOfString:searchKey].location != NSNotFound) {
        return true;
      }
      
      return false;
    }];
    [self.specsArrayController setFilterPredicate:predicate];
  } else {
    [self.specsArrayController setFilterPredicate:nil];
  }
}

//------------------------------------------------------------------------------
#pragma mark - Not interesting
//------------------------------------------------------------------------------

NSString* fullHTMLForObject(id object)
{
  NSMutableString *result = [NSMutableString new];
  [result appendString:@"<!DOCTYPE html>"];
  [result appendString:@"<html>"];
  [result appendString:@"<head>"];
  [result appendString:@"<link href='http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css' rel='stylesheet'>"];
  [result appendString:@"<style>"];
  [result appendString:@"body {margin-top:40px;}"];
  [result appendString:@"#container {margin-left:40px;}"];
  [result appendString:@"</style>"];
  [result appendString:@"</head>"];
  [result appendString:@"<body>"];
  [result appendString:@"<div class=\"container\">"];
  [result appendString:objectToHTML(object)];
  [result appendString:@"</div>"];
  [result appendString:@"</body>"];
  [result appendString:@"</html>"];
  return result;
}

NSString* objectToHTML(id object)
{
  NSString *result;

  if ([object isKindOfClass:[NSString class]]) {
    if ([object hasPrefix:@"http"]) {
      result = [NSString stringWithFormat:@"<a href='%@'>%@</a>", object, object];

    } else {
      result = object;
    }
  }
  else if ([object isKindOfClass:[NSArray class]]) {
    NSMutableString *listItems = [NSMutableString new];
    [(NSArray*)object enumerateObjectsUsingBlock:^(id entry, NSUInteger idx, BOOL *stop) {
      [listItems appendFormat:@"<li>%@</li>", objectToHTML(entry)];
    }];
    result = [NSString stringWithFormat:@"<ul>%@</ul>", listItems];
  } else if ([object isKindOfClass:[NSDictionary class]]) {
    NSMutableString *entries = [NSMutableString new];
    [(NSDictionary*)object enumerateKeysAndObjectsUsingBlock:^(id key, id entry, BOOL *stop) {
      [entries appendFormat:@"<p><b>%@</b>: %@</p>",objectToHTML(key), objectToHTML(entry)];
    }];
    result = [NSString stringWithFormat:@"<ul>%@</ul>", entries];
  } else if ([object respondsToSelector:@selector(toDictionary)]) {
    result = objectToHTML([object dictionaryRepresentation]);
  } else if (object != [NSNull null]) {
    result = [object setDescription];
  }
  return result;
};


@end
