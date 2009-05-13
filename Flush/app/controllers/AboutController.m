#import "AboutController.h"

@implementation AboutController

-(void)showAbout:(id)sender {
  [window makeKeyAndOrderFront:self];
}

-(void)setWindow:(id)win {
  window = [win retain];
}

@end

void Init_AboutController() {}