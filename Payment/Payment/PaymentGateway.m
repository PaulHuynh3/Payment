//
//  PaymentGateway.m
//  Payment
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Gateway");
    //no number set as we are using payment classes below so that this can be used anywhere
    [self.paymentDelegate processPaymentAmount:amount];
    
    if([self.paymentDelegate canProcessPayment:YES]){
        
    
    }
}



@end
