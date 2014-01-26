NSStringPropertyTest
====================

NSString Property Test, check what's different with retain and copy on NSString.

`testMutableStrCo` is a NSString, which property is `copy`, and `testMutableStrRe` property is `retain`.

This exmaple show that how property doing when they get the value from a NSMutableString.

-----------
###code:

	NSStringTest *strObj = [[NSStringTest alloc]init];	NSMutableString *someStr = [[NSMutableString alloc]initWithString:@"happy"];
	strObj.testMutableStrCo = someStr;
	strObj.testMutableStrRe = someStr;
	NSLog(@"testMutableStrCo :%@", strObj.testMutableStrCo);
	NSLog(@"testMutableStrRe :%@", strObj.testMutableStrRe);
	[someStr setString:@"no happy"];
	
	NSLog(@"round 2 testMutableStrCo :%@", strObj.testMutableStrCo);
	NSLog(@"round 2 testMutableStrRe :%@", strObj.testMutableStrRe);

###result:

	2014-01-26 15:57:56.159 NSStringTest[7998:303] testMutableStrCo :happy
	2014-01-26 15:57:56.161 NSStringTest[7998:303] testMutableStrRe :happy
	2014-01-26 15:57:56.161 NSStringTest[7998:303] round 2 testMutableStrCo :happy
	2014-01-26 15:57:56.161 NSStringTest[7998:303] round 2 testMutableStrRe :no happy
