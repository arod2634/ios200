#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RatingType) {
  RatingTypeUnrated,
  RatingTypeUgly,
  RatingTypeOK,
  RatingTypeNice,
  RatingTypeAwesome
};

@interface Icon : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *subtitle;
@property (strong, nonatomic) UIImage *image;
@property (assign) RatingType rating;

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle imageName:(NSString *)imageName;

@end
