#!/bin/bash

if ["${Var}" = ""];then
	xcode_version=$1
else
	xcode_version=""
fi

path1="/Applications/Xcode${xcode_version}.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Specifications/"
path2="/Applications/Xcode${xcode_version}.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/Xcode/Specifications/"
path3="/Applications/Xcode${xcode_version}.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/Framework\ \&\ Library/"

sudo cp -r iPhoneOSProductTypes.xcspec "$path1"
sudo cp -r iPhoneOSPackageTypes.xcspec "$path1"
sudo cp -r iPhone\ Simulator\ PackageTypes.xcspec  "$path2"
sudo cp -r iPhone\ Simulator\ ProductTypes.xcspec  "$path2"
sudo cp -r Cocoa\ Touch\ Dynamic\ Library.xctemplate  "$path3"
sudo cp -r Cocoa\ Touch\ Static\ Library.xctemplate "$path3"



