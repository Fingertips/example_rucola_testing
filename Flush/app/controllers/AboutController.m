#import "AboutController.h"

@implementation AboutController

-(void)showAbout:(id)sender {
  [window makeKeyAndOrderFront:self];
}

-(void)setWindow:(id)w {
  window = [w retain];
}

@end

void Init_AboutController() {}