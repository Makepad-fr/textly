#import "TextlyPlugin.h"
#if __has_include(<textly/textly-Swift.h>)
#import <textly/textly-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "textly-Swift.h"
#endif

@implementation TextlyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTextlyPlugin registerWithRegistrar:registrar];
}
@end
