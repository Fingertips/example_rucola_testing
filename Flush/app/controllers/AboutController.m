#import "AboutController.h"

@implementation AboutController
-(void)showAbout:(id)sender {
  [window makeKeyAndOrderFront:self];
}
@end

void Init_AboutController() {}