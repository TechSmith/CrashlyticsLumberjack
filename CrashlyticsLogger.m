//
//  CrashlyticsLogger.m
//
//  Created by Simons, Mike on 5/16/13.
//  Copyright (c) 2013 TechSmith. All rights reserved.
//

#import "CrashlyticsLogger.h"
#import <Crashlytics/Crashlytics.h>

@implementation CrashlyticsLogger

-(void) logMessage:(DDLogMessage *)logMessage
{
   NSString *logMsg = logMessage->logMsg;
   
	if (formatter)
	{
		logMsg = [formatter formatLogMessage:logMessage];
   }
   
	if (logMsg)
	{
      CLSLog(@"%@",logMsg);
   }
}



@end
