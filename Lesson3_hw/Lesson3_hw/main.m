//
//  main.m
//  Lesson3_hw
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor preparePill];
    }
    return 0;
}
