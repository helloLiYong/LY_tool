

#import "lY_tuYaView.h"
@interface lY_tuYaView()
@property (strong, nonatomic) NSMutableArray *paths;


@end
@implementation lY_tuYaView
-(instancetype)init{
    if (self = [super init]) {
        self.tuYaWidth = 3;
    }
    return self;

}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSMutableArray *)paths
{
    if (_paths == nil) {
        _paths = [NSMutableArray array];
    }
    return _paths;
}
-(void)upStep{
    [self.paths removeLastObject];
    [self setNeedsDisplay];
}
-(void)reDraw{
    [self.paths removeAllObjects];
    [self setNeedsDisplay];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = self.tuYaWidth;

    UITouch *touch = [touches anyObject];
    [path moveToPoint:[touch locationInView:self]];
    [self.paths addObject:path];
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIBezierPath *path = [self.paths lastObject];
    UITouch *touch = [touches anyObject];
    [path addLineToPoint:[touch locationInView:self]];

    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesMoved:touches withEvent:event];
}
- (void)drawRect:(CGRect)rect
{
    for (UIBezierPath *path in self.paths) {
        [path stroke];
    }
}
@end
