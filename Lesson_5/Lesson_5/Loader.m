//
//  Loader.m
//  Lesson_5
//
//  Created by Nata Kuznetsova on 24.10.2023.
//

#import "Loader.h"

@implementation Loader

-(NSURLSession*) session {
    if (!_session) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        configuration.HTTPAdditionalHeaders = @{
            @"Content-Type": @"application/json",
            @"Accept": @"application/json",
            @"User-Agent": @"Iphone15PRO"
        };
        _session = [NSURLSession sessionWithConfiguration: configuration];
    }
    return _session;
}


- (void) performGetforURL:(NSString *)stringURL agruments:(NSDictionary *)agruments block:( void (^)(NSDictionary *, NSError *))block {
    NSURLComponents *urlComponents = [NSURLComponents componentsWithString: stringURL];
    NSURL *url = urlComponents.URL;
    if (agruments) {
        NSMutableArray <NSURLQueryItem *> *queryInems = [NSMutableArray new];
        for (NSString *key in agruments.allKeys) {
            [queryInems addObject: [NSURLQueryItem queryItemWithName: key value: agruments[key]]];
        }
        urlComponents.queryItems = [queryInems copy];
    }
    NSURLSessionDataTask *dataTask = [ self.session dataTaskWithURL: url
                                                  completionHandler:^(NSData *data,
                                                                      NSURLResponse *response,
                                                                      NSError *error) {
        if (error) {
            block(nil, error);
            return;
        }
        NSError *parsingError;
        NSDictionary *dataDictionary = [self parserJsonData: data error: &parsingError];
        
        if (parsingError){
            block(nil, error);
            return;
        }
        block(dataDictionary, nil);
    }];
    [dataTask resume];
    }


- (void) performPostURL:(NSString *)stringURL
            agruments:(NSDictionary *)agruments
            block:(void (^)(NSDictionary *, NSError *))block {
        NSURLComponents *urlComponents = [NSURLComponents componentsWithString: stringURL];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: urlComponents];
    request.HTTPMethod = @"POST";
    if (agruments){
        NSDate *body = [self dataWithJson: agruments error: nil];
        request.HTTPBody = body;
    }
    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request
                                                     completionHandler:^(NSData *data,
                                                                         NSURLResponse *response,
                                                                         NSError *error) {
        if (error) {
            block(nil, error);
            return;
    }
        NSError *parsingError;
        NSDictionary *dictionary = [self parserJsonData: data error: &parsingError];
        
        if(parsingError){
            block(nil, parsingError);
            return;
        }
        block(dictionary, nil);
    }];
    [dataTask resume];
    }
   
#pragma mark - Private Methods

-(NSDictionary*) parserJsonData: (NSData*) data error: (NSError**) error {
    return [NSJSONSerialization JSONObjectWithData: data options: kNilOptions error: error];
    
}

-(NSData*) dataWithJson: (NSDictionary*) jsonDictionary error: (NSError**) error {
    return [NSJSONSerialization dataWithJSONObject: jsonDictionary options: kNilOptions error: error];
}

    
@end
