Pod::Spec.new do |s|
  s.name             = "Apprack"
  s.version          = "1.1.1"
  s.summary          = "Apprack provides screens for settings, terms of use, privacy policy, release notes, imprints, support …"
  s.description      = "Apprack generates your landing page, helps you to become legally compliant and supports you with user engagement. The SDK allows you to keep focusing on your core business by taking over all the screens you need, but don't want to spend time working on (such as screens for terms of use, privacy policy, release notes, settings, support …)"
  s.homepage         = "https://apprack.io"
  s.license          = 'All Rights reserved.'
  s.author           = { "apprack" => "hello@apprack.io" }
  s.source           = { :git => "https://github.com/apprack/apprack-ios-sdk.git", :tag => s.version }

  s.platform     = :ios, '9.3'
  s.requires_arc = true

  s.source_files        = 'Framework/APRFramework-Release-iphoneuniversal/APRFramework.framework/Headers/*.h'
  s.public_header_files = 'Framework/APRFramework-Release-iphoneuniversal/APRFramework.framework/Headers/*.h'
  s.vendored_frameworks = 'Framework/APRFramework-Release-iphoneuniversal/APRFramework.framework'

  s.frameworks = 'UIKit', 'StoreKit'
end
