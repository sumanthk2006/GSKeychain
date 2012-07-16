#GSKeychain – a simple Objective-C wrapper around the iOS keychain

This project provides a simple, `NSUserDefaults`-style interface over the 
iOS keychain.

This is currently work in progress.

##Sample usage

```objective-c
// Store a secret
[[GSKeychain systemKeychain] setSecret:@"t0ps3kr1t" forKey:@"myAccessToken"];

// Fetch a secret
NSString * secret = [[GSKeychain systemKeychain] secretForKey:@"myAccessToken"];

// Delete a secret
NSString * secret = [[GSKeychain systemKeychain] removeSecretForKey:@"myAccessToken"];
```
