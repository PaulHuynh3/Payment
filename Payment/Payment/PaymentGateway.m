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
    // show whose paying
    NSLog(@"Gateway");
    //if they return yes that they can process payment it will go to them
    if ([self.paymentDelegate canProcessPayment]){
        //no number set as we are using payment classes below so that this can be used anywhere
        
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"%@ was declined",self.paymentDelegate);
    }
       


}



@end
