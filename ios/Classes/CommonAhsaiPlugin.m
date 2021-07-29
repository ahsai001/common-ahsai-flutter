#import "CommonAhsaiPlugin.h"
#if __has_include(<common_ahsai/common_ahsai-Swift.h>)
#import <common_ahsai/common_ahsai-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "common_ahsai-Swift.h"
#endif

@implementation CommonAhsaiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCommonAhsaiPlugin registerWithRegistrar:registrar];
}
@end
