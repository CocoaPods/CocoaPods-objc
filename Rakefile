require 'cocoapods-core'
require 'rubygems'
require 'active_support'

#-----------------------------------------------------------------------------#

desc "Runs the specs"
task :specs do
  Dir.chdir('Project') do
  sh "xcodebuild -workspace CocoaPods-objc.xcworkspace -scheme 'Demo' test"
  end
end

desc "Lints the podspec"
task :lint do
  sh 'pod spec lint CocoaPods-ObjC.podspec --local'
end

desc "Generates the Classes/Models/PODModelKeys.m file"
task :generate_proto_models do
  generate_cathegory('CPProtoSpecification', Pod::Specification::DSL.attributes.values)
  generate_cathegory('CPProtoPodfile', podfile_attributes)
  generate_cathegory('CPProtoTargetDefinition', target_definition_attributes)
end


task :default => :specs

#-----------------------------------------------------------------------------#

def target_definition_attributes
  # TODO
  [Pod::Podfile::TargetDefinition::HASH_KEYS, 'name', 'link_with_first_target'].flatten.map do |name|
    attr = StubAttribute.new
    attr.name = name

    if name == 'podspecs' || name == 'dependencies' || name == 'children'
      attr.container = Array
    elsif name == 'build_configurations'
      attr.container = Hash
    end

    if name == 'exclusive' || name == 'inhibit_all_warnings'
      attr.types = [TrueClass, FalseClass]
    end
    attr
  end
end

def podfile_attributes
  Pod::Podfile::HASH_KEYS.map do |name|
    attr = StubAttribute.new
    attr.name = name
    if name == 'target_definitions'
      attr.container = Array
    end
    if name == 'generate_bridge_support' || name == 'set_arc_compatibility_flag'
      attr.types = [TrueClass, FalseClass]
    end
    attr
  end
end

class StubAttribute
  attr_accessor :name
  attr_accessor :container
  attr_accessor :types
end

def generate_cathegory(objc_class ,attributes)
  header = header_for_attributes_category(objc_class, attributes)
  header_path = "Classes/Models/Basic Models/Generated/#{objc_class}.h"
  implementation = implementation_for_attributes_category(objc_class, attributes)
  implementation_path = "Classes/Models/Basic Models/Generated/#{objc_class}.m"
  File.open(header_path, 'w') {|f| f.write(header) }
  File.open(implementation_path, 'w') {|f| f.write(implementation) }
end

#-----------------------------------------------------------------------------#

def header_for_attributes_category(objc_class, attributes)
  <<-EOF
//
//  File generated programmatically by a Rake task.

#import "CPDictionaryBackedObject.h"

#{attributes_keys_declarations(objc_class, attributes)}

@interface #{objc_class} : CPDictionaryBackedObject
#{attributes_declaration(attributes)}
@end

  EOF
end

def attributes_keys_declarations(objc_class, attributes)
  lines = []
  attributes.each do |attribute|
    lines << "extern NSString * const k#{objc_class.gsub('Proto','')}#{attribute.name.to_s.camelize}AttributeKey;"
  end
  lines * "\n"
end

def attributes_declaration(attributes)
  lines = ['']
  attributes.each do |attribute|
    name = attribute.is_a?(String) ? attribute : attribute.name.to_s
    lines << '/**'
    lines << "  The #{name} attribute."
    # lines << "  Inherited: #{attribute.inherited?}."
    # lines << "  Multiplatform: #{attribute.multi_platform?}."
    lines << '*/'
    lines << "- (#{class_for_attribute(attribute)})#{objective_c_name(attribute)};"
    lines << "- (void)set#{objective_c_name(attribute).camelize}:(#{class_for_attribute(attribute)})#{objective_c_name(attribute)};"
    lines << ''
  end
  lines * "\n"
end


#-----------------------------------------------------------------------------#

def implementation_for_attributes_category(objc_class, attributes)
  <<-EOF
//
//  File generated programmatically by a Rake task.

#import "#{objc_class}.h"
#import "CPDictionaryBackedObject+Private.h"

#{attributes_keys_definitions(objc_class, attributes)}

@implementation #{objc_class}
#{attributes_implementation(attributes)}
@end

  EOF
end

def attributes_keys_definitions(objc_class, attributes)
  lines = []
  attributes.each do |attribute|
    lines << "NSString * const k#{objc_class.gsub('Proto','')}#{attribute.name.to_s.camelize}AttributeKey = @\"#{attribute.name}\";"
  end
  lines * "\n"
end

def attributes_implementation(attributes)
  lines = ['']

  attributes.each do |attribute|
    entry = <<-EOE
- (#{class_for_attribute(attribute)})#{objective_c_name(attribute)}; {
  #{getter_body(attribute)}
}

- (void)set#{objective_c_name(attribute).camelize}:(#{class_for_attribute(attribute)})#{objective_c_name(attribute)}; {
  #{setter_body(attribute)}
}
    EOE
    lines << entry
  end
  lines * "\n"
end

def getter_body(attribute)
  lines = []
  case class_for_attribute(attribute)
  when 'NSArray*'
    lines << "id value = [self backingStoreValueForKey:@\"#{attribute.name}\"];"
    lines << 'return CPCoherceToArray(value);'
  when 'NSDictionary*'
    lines << "id value = [self backingStoreValueForKey:@\"#{attribute.name}\"];"
    lines << 'return CPCoherceToDictionary(value);'
  when 'BOOL'
    lines << "id value = [self backingStoreValueForKey:@\"#{attribute.name}\"];"
    lines << 'return [value boolValue];'
  else
    lines << "return [self backingStoreValueForKey:@\"#{attribute.name}\"];"
  end
  lines * "\n  "
end

def setter_body(attribute)
  lines = []
  if class_for_attribute(attribute) == 'BOOL'
    lines << "[self setBackingStoreValue:[NSNumber numberWithBool:#{objective_c_name(attribute)}] forKey:@\"#{attribute.name}\"];"
  else
    lines << "[self setBackingStoreValue:#{objective_c_name(attribute)} forKey:@\"#{attribute.name}\"];"
  end
  lines * "\n  "
end

def objective_c_name(attribute)
  name = case attribute.name
  when :description
    'description_attr'
  else
    attribute.name.to_s
  end
  name.to_s.camelize(:lower)
end

def class_for_attribute(attribute)
  case attribute.container.to_s
  when 'Array'
    'NSArray*'
  when 'Hash'
    'NSDictionary*'
  else
    if attribute.types == [TrueClass, FalseClass]
      'BOOL'
    else
    'NSString*'
    end
  end
end

