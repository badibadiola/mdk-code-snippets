#import "device.h"

@implementation Device

-(void) print {
	printf ("Device: %s\n", [name UTF8String]);
}

- (Device *) initWithName: (NSString *) n {

	if (! [super init]) 
		return nil;

	name = [[NSString alloc] initWithString: n];

	return self;
}

- (void) dealloc {
	printf ("Desotrying object...\n");
	[name release];
	[super dealloc];
}

@end

