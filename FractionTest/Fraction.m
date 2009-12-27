//
//  Fraction.m
//  FractionTest
//
//  Created by Arvid Warnecke on 06.11.09.
//  Copyright 2009 Berenberg Bank Joh. Berenberg, Gossler & Co. KG. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
	printf("%i/%i", numerator, denominator); 
}
/*
-(void) setNumerator: (int) n { 
	numerator = n;
}	
-(void) setDenominator: (int) d {
	denominator = d;
}
-(int) numerator {
	return numerator;
}
-(int) denominator {
	return denominator;
} 
*/
-(void)	setTo: (int) n over: (int) d {
	numerator = n;
	denominator = d;
}

-(double) convertToNum {
	if (denominator != 0) 
		return (double) numerator / denominator;
	else 
		return 1.0;
}

-(void) add:(Fraction *) f {
	// To add two fractions
	// a/b + c/d = ((a*d) + (b*c)) / (b*d)
	
	numerator = numerator * f.denominator + denominator * f.numerator;
	denominator = denominator * f.denominator;
	
	// reduce the target fraction
	[self reduce];
}

-(void) reduce {
	int u = numerator;
	int v = denominator;
	int temp;
	
	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	
	numerator /= u;
	denominator /= u;
}
@end
