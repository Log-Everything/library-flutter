#import "LogeverythingPlugin.h"
#if __has_include(<logeverything/logeverything-Swift.h>)
#import <logeverything/logeverything-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "logeverything-Swift.h"
#endif

@implementation LogeverythingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLogeverythingPlugin registerWithRegistrar:registrar];
}
@end
