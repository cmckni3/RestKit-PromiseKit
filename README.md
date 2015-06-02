# RestKit-PromiseKit

Wrapper for the RKObjectManager class to return a PromiseKit promise.

Promises clean up the structure of code and provide better data flow
and error handling especially when using asynchronous methods.

## Requirements
* [RestKit 0.20.x](https://github.com/RestKit/RestKit)
* [PromiseKit 1.x](https://github.com/mxcl/PromiseKit)


### Supported Platforms
* iOS 6.0+
* OS X 10.7+

## Installation

### Install via [cocoapods](https://github.com/cocoapods/cocoapods)

* Add the library to `Podfile`
  ```ruby
  platform :ios, '6.0'

  pod 'RestKit-PromiseKit'
  ```

* Install pod
   ```bash
   pod install
   ```

### Manual

* Drop `RKObjectManager+PromiseKit.h`, `RKObjectManager+PromiseKit.m`
and `RestKit-PromiseKit.h` into an XCode project with RestKit
and set the appropriate targets.

## Usage

### Import the category

* Manual install
  ```objective-c
  #import "RestKit-PromiseKit.h"
  ```

* Cocoapods install
  ```objective-c
  #import <RestKit-PromiseKit/RestKit-PromiseKit.h>
  ```

### Call a typical HTTP method on an instance of `RKObjectManager` and use the resulting promise.
  ```objective-c
  [[RKObjectManager sharedManager] getObjectsAtPath:@"/articles" parameters:nil];
  ```

## License

[RestKit-PromiseKit](https://github.com/cmckni3/RestKit-PromiseKit) is licensed under the MIT license. Please see the [license](MIT-LICENSE) for more information.

## TODO

* Refactor to DRY up the code
* Research a different method for wrapping RestKit with a promise
* Adds promises to other RestKit features such as pagination

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

