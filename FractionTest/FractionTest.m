//#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
	
	// set fraction to 1/3
	//[myFraction setNumerator: 1];
	//[myFraction setDenominator: 3];
	//myFraction.numerator   = 1;
	//myFraction.denominator = 3;
	
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
