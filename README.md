#GSKeychain – a simple Objective-C wrapper around the iOS keychain

This project provides a simple, `NSUserDefaults`-style interface over the 
iOS keychain.

This is currently work in progress.

#Sample usage

```objective-c
// Store a secret
[[GSKeychain systemKeychain] setSecret:@"t0ps3kr1t" forKey:@"myAccessToken"];

// Fetch a secret
NSString *secret = [[GSKeychain systemKeychain] secretForKey:@"myAccessToken"];

// Delete a secret
[[GSKeychain systemKeychain] removeSecretForKey:@"myAccessToken"];
```

#Adding to your project

##Drag and drop

1. Drag `GSKeychain.h` and `GSKeychain.m` into your project
2. Add Security.framework to **Link Binary With Libraries** in your target settings in Xcode
3. `import "GSKeychain.h"` where appropriate

GSKeychain uses ARC. If your project doesn't use ARC you could enable it for
these files, or use GSArchive as a static library instead.

##As a static library

1. Download the project and build it
2. Drag libGSKeychain.a and GSKeychain.h into your project
3. Add Security.framework to **Link Binary With Libraries** in your target settings in Xcode
4. `import "GSKeychain.h"` where appropriate

#Credits

Work inspired by reading [Peeking Inside App Bundles][piab] by [Nick Arnott][na].

#License

[![Creative Commons License][cc-by-30-icon]][cc-by-30]

This work is licensed under a [Creative Commons Attribution 3.0 Unported License][cc-by-30].

You're free to use this code in any project, including commercial. Please include the following text somewhere suitable, e.g. your app's About screen:

**Uses GSKeychain by Simon Whitaker**

[na]: http://twitter.com/tehnoir
[piab]: http://www.neglectedpotential.com/2012/07/peeking-inside-app-bundles/
[cc-by-30-icon]: http://i.creativecommons.org/l/by/3.0/88x31.png
[cc-by-30]: http://creativecommons.org/licenses/by/3.0/