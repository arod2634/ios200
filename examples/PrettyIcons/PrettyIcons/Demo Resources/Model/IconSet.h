#import <Foundation/Foundation.h>

@interface IconSet : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *icons;

+ (NSMutableArray *)iconSets;
- (instancetype)initWithName:(NSString *)name icons:(NSMutableArray *)icons;

@end
