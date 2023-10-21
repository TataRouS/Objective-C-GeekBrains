//
//  Doctor.h
//  Lesson3_hw
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void) preparePill;

@end

NS_ASSUME_NONNULL_END
