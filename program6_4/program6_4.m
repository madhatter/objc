#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int number_to_test, remainder;
	
	printf("Enter your number to be test:");
	scanf("%i", &number_to_test);
	
	remainder = number_to_test % 2;
	
	if (remainder == 0) {
		printf("The number is even.\n");	
	}	
	else { 
		printf("The number is odd.\n");
	}
	
    [pool drain];
    return 0;
}
