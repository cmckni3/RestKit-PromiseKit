Pod::Spec.new do |s|
  s.name                  = 'RestKit-PromiseKit'
  s.version               = '0.3.0'
  s.summary               = 'RestKit category for PromiseKit'
  s.description           = <<-DESC
                               Wrapper for the RKObjectManager class to
                               return a PromiseKit promise.

                               Promises clean up the structure of code and
                               provide better data flow and error handling
                               especially when using asynchronous methods.
                               DESC
  s.homepage              = 'https://github.com/cmckni3/RestKit-PromiseKit'
  s.license               = { type: 'MIT', file: 'MIT-LICENSE' }
  s.author                = { 'Chris McKnight' => 'cmckni3@gmail.com' }
  s.social_media_url      = 'https://twitter.com/cmckni3'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  s.prefix_header_contents = <<-EOS
#import <Availability.h>
#define _AFNETWORKING_PIN_SSL_CERTIFICATES_
#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
  #import <Security/Security.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
  #import <Security/Security.h>
#endif
EOS
  s.source                = {
    git: 'https://github.com/cmckni3/RestKit-PromiseKit.git',
    tag: '0.3.0'
  }
  s.source_files          = 'RestKit-PromiseKit'
  s.requires_arc          = true
  s.dependency 'PromiseKit', '~> 1.5'
  s.dependency 'RestKit', '~> 0.20'
end
