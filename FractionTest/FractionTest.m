//#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction = [[Fraction alloc] init];
    
	// set fraction to 1/3
	//[myFraction setNumerator: 1];
	//[myFraction setDenominator: 3];
	//myFraction.numerator   = 1;
	//myFraction.denominator = 3;
	
	[myFraction setTo:100 over:200];
	
	// display the fraction
	printf("The value of myFraction is: ");
	[myFraction print];

	[myFraction release];
    [pool drain];
    return 0;
}
