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

##Credits

Work inspired by reading [Peeking Inside App Bundles][piab] by [Nick Arnott][na].

##License

Licensed under the [UNLICENSE][unlicense]. See accompanying UNLICENSE file.

[na]: tehnoir
[piab]: http://www.neglectedpotential.com/2012/07/peeking-inside-app-bundles/
[unlicense]: http://unlicense.org/
