//
//  Loader.h
//  Lesson_5
//
//  Created by Nata Kuznetsova on 24.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property (nonatomic, strong) NSURLSession* session;

-(void) performGetforURL: (NSString*) stringURL
               agruments: (NSDictionary*) agruments
                   block: (void (^) (NSDictionary*, NSError*)) block;

-(void) performPostURL: (NSString*) stringURL
             agruments: (NSDictionary*) agruments
                 block: (void (^) (NSDictionary*, NSError*)) block;

-(NSDictionary*) parserJsonData: (NSData*) data
                          error: (NSError**) error;

-(NSData*) dataWithJson: (NSDictionary*) jsonDictionary
                  error: (NSError**) error;


@end

NS_ASSUME_NONNULL_END
