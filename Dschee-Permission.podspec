Pod::Spec.new do |s|
  s.name         = "Dschee-Permission"
  s.module_name  = "Permission"
  s.version      = "2.1.1"
  s.license      = { :type => "MIT" }
  s.homepage     = "https://github.com/Dschee/Permission"
  s.author       = { "Damien" => "damien@delba.io" }
  s.summary      = "A unified API to ask for permissions on iOS"
  s.source       = { :git => "https://github.com/Dschee/Permission.git", :tag => "v#{s.version}" }

  s.weak_framework = 'Speech'

  s.ios.deployment_target = "8.0"

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |co|
    co.source_files = "Source/**/*.{swift, h}"
  end

  s.subspec 'AddressBook' do |ab|
    ab.dependency 'Dschee-Permission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_ADDRESS_BOOK" }
  end

  s.subspec 'Bluetooth' do |bl|
    bl.dependency 'Dschee-Permission/Core'
    bl.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_BLUETOOTH" }
  end

  s.subspec 'Camera' do |cm|
    cm.dependency 'Dschee-Permission/Core'
    cm.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_CAMERA" }
  end

  s.subspec 'Contacts' do |cn|
    cn.dependency 'Dschee-Permission/Core'
    cn.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_CONTACTS" }
  end

  s.subspec 'Events' do |ev|
    ev.dependency 'Dschee-Permission/Core'
    ev.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_EVENTS" }
  end

  s.subspec 'Location' do |lo|
    lo.dependency 'Dschee-Permission/LocationAlways'
    lo.dependency 'Dschee-Permission/LocationWhenInUse'
  end

  s.subspec 'LocationAlways' do |lo|
    lo.dependency 'Dschee-Permission/Core'
    lo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_LOCATION_ALWAYS" }
  end

  s.subspec 'LocationWhenInUse' do |lo|  
    lo.dependency 'Dschee-Permission/Core'
    lo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_LOCATION_WHEN_IN_USE" }
  end

  s.subspec 'Microphone' do |mi|
    mi.dependency 'Dschee-Permission/Core'
    mi.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MICROPHONE" }
  end

  s.subspec 'Motion' do |mo|
    mo.dependency 'Dschee-Permission/Core'
    mo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MOTION" }
  end

  s.subspec 'Notifications' do |no|
    no.dependency 'Dschee-Permission/Core'
    no.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_NOTIFICATIONS" }
  end

  s.subspec 'UserNotifications' do |un|
    un.dependency 'Dschee-Permission/Core'
    un.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_USER_NOTIFICATIONS" }
  end

  s.subspec 'Photos' do |ph|
    ph.dependency 'Dschee-Permission/Core'
    ph.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_PHOTOS" }
  end

  s.subspec 'Reminders' do |re|
    re.dependency 'Dschee-Permission/Core'
    re.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_REMINDERS" }
  end

  s.subspec 'SpeechRecognizer' do |rs|
    rs.dependency 'Dschee-Permission/Core'
    rs.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_SPEECH_RECOGNIZER" }
  end

  s.subspec 'MediaLibrary' do |ml|
    ml.dependency 'Dschee-Permission/Core'
    ml.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MEDIA_LIBRARY" }
  end

  s.subspec 'Siri' do |ab|
    ab.dependency 'Dschee-Permission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_SIRI" }
  end
end
