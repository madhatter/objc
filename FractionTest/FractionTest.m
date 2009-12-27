//#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
	
	[aFraction setTo:1 over:4];
	[bFraction setTo:1 over:2];
	
	// display the fraction
	[aFraction print];
	printf("+");
	[bFraction print];
	printf("=");
	
	[aFraction add:bFraction];
	[aFraction print];
	
	[aFraction release];
	[bFraction release];	
    [pool drain];
    return 0;
}
