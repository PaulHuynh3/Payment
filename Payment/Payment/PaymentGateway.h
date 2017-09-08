//
//  PaymentGateway.h
//  Payment
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment; 

@end

@interface PaymentGateway : NSObject

@property (weak,nonatomic) id<PaymentDelegate>paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;




@end
