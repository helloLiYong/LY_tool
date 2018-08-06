

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface lY_DeviceTool : NSObject

/**
 获取设备版本号
 */
+ (NSString *)getDeviceName ;

/**
 获取电池电量

 */
+(CGFloat)getBatteryLevel;


/**
 通用唯一识别码UUID
 */
+ (NSString *)getUUID;


/**
 获取当前设备IP
 */
+ (NSString *)getDeviceIPAdress;

/**
 获取总内存大小
 */
+ (long long)getTotalMemorySize;

/**
 获取当前可用内存
 */
+ (long long)getAvailableMemorySize;

/**
 获取精准电池电量
 */

+ (CGFloat)getCurrentBatteryLevel;

/**
 获取电池当前的状态，共有4种状态
 */
+ (NSString *) getBatteryState;

/**
 获取当前语言
 */
+ (NSString *)getDeviceLanguage;
@end
