#import <Cocoa/Cocoa.h>

@interface AboutController : NSObject {
  IBOutlet NSWindow *window;
}
-(void) showAbout:(id)sender;
-(void) setWindow:(id)win;
@end