//
//  main.m
//  Payment
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        BOOL payment = YES;
        while (payment) {
            
     //255 unit long array of characters
        char inputChars[255];
    //create a random value generated
        int generateRandom = arc4random_uniform(901)+100;
        
     //message has to be before fgets else it wont show! everything sequential!
     NSLog(@"Thank you for shopping at Acme.com. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        
       
      //limit input to max 255 characters fgets collect user's answer
        fgets(inputChars, 255, stdin);
            
        //convert char to string
       NSString *charToString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
        
     //user enters NO breaks loop.
        if ([charToString isEqualToString:@"quit"]){
            payment = NO;
            break;
        }
            
    //convert the users input to intValue
    int selection =  charToString.intValue;
        
        switch (selection) {
            case 1:{
    PaypalPaymentService* paypalPaymentService = [[PaypalPaymentService alloc]init];
            
    paymentGateway.paymentDelegate = paypalPaymentService;
    [paymentGateway processPaymentAmount:generateRandom];
                
            }
            break;
            case 2:{
    StripePaymentService* stripePaymentService = [[StripePaymentService alloc]init];
                
    paymentGateway.paymentDelegate = stripePaymentService;
    [paymentGateway processPaymentAmount:generateRandom];
            
            }
                break;
            case 3:{
    AmazonPaymentService* amazonPaymentService = [[AmazonPaymentService alloc]init];
                
    paymentGateway.paymentDelegate = amazonPaymentService;
                
    [paymentGateway processPaymentAmount:generateRandom];
            }
                break;
            default:
                NSLog(@"Please select a valid option");
                break;
        }

        

        }
        
}

    return 0;
}
