//
//  PaypalPaymentService.m
//  Payment
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    // gives random number everytime
 int number = arc4random_uniform(901)+100;
    
    NSLog(@"Your paypal total is: %i",number);
    
}

// order doesnt matter in confined methods
-(BOOL)canProcessPayment{

 int number = arc4random_uniform(2);
    
    if(number == 1){
        return YES;
    } else{
        //if take out else statement in payment gateway this nslog will pop up...
        NSLog(@"PAYPAL DOESNT ACCEPT");
        return NO;
    
    }
    
}


@end
