//
//  CPSpecificationTests.m
//  CocoaPods-Core
//
//  Created by Fabio Pelosin on 01/03/13.
//  Copyright (c) 2013 CocoaPods. MIT License.
//

#import "CPTestsHelper.h"
#import "CPSpecification.h"

CPSpecification* spec() {
  NSString *yaml = yamlFixture(@"AFNetworking.podspec.yaml");
  return [[CPSpecification alloc] initWithYAML:yaml];
}

CPSpecification* specWithDictionary(NSDictionary*dictionary) {
  return [[CPSpecification alloc] initWithDictionary:dictionary];
}

//------------------------------------------------------------------------------

SpecBegin(CPSpecification)

describe(@"Specification", ^{

  describe(@"In general", ^{

    it (@"returns the name", ^{
      expect(spec().name).to.equal(@"AFNetworking");
    });

    it (@"returns the version", ^{
      expect(spec().version).to.equal(@"1.1.0");
    });

    it (@"returns the authors", ^{
      NSDictionary *expected = @{ @"Mattt Thompson": @"m@mattt.me", @"Scott Raymond": @"sco@gowalla.com" };
      expect(spec().authors).to.equal(expected);
    });

    it (@"returns the license", ^{
      expect(spec().licenseType).to.equal(@"MIT");
    });

    it (@"returns the homepage", ^{
      expect(spec().homepage).to.equal(@"https://github.com/AFNetworking/AFNetworking");
    });

    it (@"returns the remote source", ^{
      NSDictionary *expected = @{ @"git": @"https://github.com/AFNetworking/AFNetworking.git", @"tag": @"1.1.0" };
      expect(spec().source).to.equal(expected);
    });

    it (@"returns the summary", ^{
      expect(spec().summary).to.equal(@"A delightful iOS and OS X networking framework.");
    });

    it (@"returns the description", ^{
      expect(spec().descriptionAttr).to.beNil();
    });

    xit(@"returns the screenshots links", ^{
    });

    xit(@"returns the documentation settings", ^{
    });

    //----------------

    it (@"returns the source files patterns", ^{
      expect(spec().sourceFiles).to.equal(@[@"AFNetworking"]);
    });

    xit(@"returns the public headers patterns", ^{
    });

    xit(@"returns the resources patterns", ^{
    });

    xit(@"returns the patterns of the files to exclude", ^{
    });

    xit(@"returns the preserve path patterns", ^{
    });

    //----------------

    xit(@"returns the dependencies", ^{
    });

    xit(@"returns the subspecs", ^{
    });

    xit(@"returns the default subspec", ^{
    });

    //----------------

    it (@"returns whether it requires arc", ^{
      expect(spec().requiresArc).to.beTruthy();
    });

    xit(@"returns the frameworks", ^{
    });

    xit(@"returns the weakFrameworks", ^{
    });

    xit(@"returns the libraries", ^{
    });

    xit(@"returns the compilerFlags", ^{
    });

    xit(@"returns the xcconfig", ^{
    });

    it (@"returns the contents of the prefix header", ^{
      expect(spec().prefixHeaderContents).to.contain(@"#import <Availability.h>");
    });

    xit(@"returns the path of the file to inject in the prefix header", ^{
    });

    xit(@"returns the dir to use for the headers", ^{
    });

    xit(@"returns the dir from which to preserve the headers file structure", ^{
    });

    //----------------


    it (@"returns the supported platforms", ^{
      NSDictionary *expected = @{ @"ios": @"5.0", @"osx": @"10.7" };
      expect(spec().platforms).to.equal(expected);
    });

    it (@"returns the ios hash", ^{
      NSDictionary *expected = @{ @"frameworks": @[@"MobileCoreServices", @"SystemConfiguration"] };
      expect(spec().iosAttributes).to.equal(expected);
    });

    it (@"returns the osx hash", ^{
      NSDictionary *expected = @{ @"frameworks": @[@"CoreServices", @"SystemConfiguration"] };
      expect(spec().osxAttributes).to.equal(expected);
    });

  });

  //----------------------------------------------------------------------------

  describe(@"Initialization from a dictionary", ^{

    xit(@"handles authors expressed as a string", ^{
    });

    xit(@"handles authors expressed as an array", ^{
    });

    xit(@"handles authors expressed as a dictionary", ^{
    });

    xit(@"TODO handles all the conversion to object", ^{
    });

  });

  //----------------------------------------------------------------------------

  describe(@"Serialization to a dictionary a dictionary", ^{

    xit(@"TODO handles all the conversion to dictionary", ^{
    });

    xit (@"can be converted back to a dictionary", ^{
      NSString *yaml = yamlFixture(@"AFNetworking.podspec.yaml");
      NSDictionary *expected = CPDecodeYAMLString(yaml)[0];
      NSDictionary *actual = [spec() dictionaryRepresentation];
      expect(actual).to.equal(expected);
    });
    
  });

  //----------------------------------------------------------------------------

});

SpecEnd

