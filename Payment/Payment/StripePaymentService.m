//
//  StripePaymentService.m
//  Payment
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)amount{


        
    int number = arc4random_uniform(901)+100;
        
    NSLog(@"Your stripe total is: %i",number);
        
    
    
}

-(BOOL)canProcessPayment{
    
    int number = arc4random_uniform(2);
    
    if(number == 1){
        return YES;
    } else{
        return NO;
        
    }
    
}

@end
