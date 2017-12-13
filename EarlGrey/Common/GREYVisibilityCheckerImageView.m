//
// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "GREYVisibilityCheckerImageView.h"

@implementation GREYVisibilityCheckerImageView

// Workaround for adding it as a subview to UIVisualEffectView.
// We disassembled UIKit, found a way to avoid this assertion:
// <UIImageView: 0x7fe1da7a1d10; frame = (0 0; 375 667); userInteractionEnabled = NO; layer = <CALayer: 0x608000620700>> - (null) has been added as a subview to <UIVisualEffectView: 0x7fe1da505230; frame = (0 0; 375 667); layer = <CALayer: 0x604000825100>>. Do not add subviews directly to the visual effect view itself, instead add them to the -contentView.

- (BOOL)isKindOfClass:(Class)aClass {
    if (aClass == NSClassFromString(@"_UIVisualEffectImageView")) {
        return true;
    } else {
        return [super isKindOfClass:aClass];
    }
}


@end
