//
//  Fraction.h
//  FractionTest
//
//  Created by Arvid Warnecke on 06.11.09.
//  Copyright 2009 Berenberg Bank Joh. Berenberg, Gossler & Co. KG. All rights reserved.
//

#import <Foundation/Foundation.h>


// The Fraction class
@interface Fraction : NSObject {
	int numerator;
	int denominator;
}

@property int numerator, denominator;

-(void)		print;
/*
-(void)		setNumerator: (int) n;
-(void)		setDenominator: (int) d;
-(int)		numerator;
-(int)		denominator;
*/
-(void)		setTo: (int) n over: (int) d;
-(double)	convertToNum;
-(void)		add: (Fraction *) f;
-(void)		reduce;
@end
