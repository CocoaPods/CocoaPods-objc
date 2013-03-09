test:
	cd Project; bundle install
	cd Project; pod install
	cd Project; sh xcodebuild -workspace CocoaPods-objc.xcworkspace -scheme 'Demo' test
