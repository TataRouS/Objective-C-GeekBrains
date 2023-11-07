//
//  SecondViewController.h
//  Lesson_5(2)
//
//  Created by Nata Kuznetsova on 02.11.2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *text1;

@property (weak, nonatomic) IBOutlet UITextField *text2;

- (IBAction)submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
