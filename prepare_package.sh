#!/bin/sh

# Opiniated shell script to update version and checksum information for a binary target in a Swift Package
# Script assumes that a Swift Package has
# - a statement `let version = "<version>"`
# - only 1 binary target

# also the paths and naming pattern of the zip file is hard-coded so the shell script needs to be adjusted for other packages

# Check for arguments
if [ $# -eq 0 ]; then
    echo "No arguments provided. First argument has to be version, e.g. '1.8.1'"
    exit 1
fi
# assuming this script is executed from directory which contains Package.Swift
# take version (e.g. 1.8.1) as argument
NEW_VERSION=$1
FRAMEWORK_NAME=$2
echo $NEW_VERSION
echo $FRAMEWORK_NAME
echo "curl -H 'Cache-Control: no-cache' -L -O https://github.com/litoarias/NetworkModule/releases/download/$NEW_VERSION/$FRAMEWORK_NAME.xcframework.zip"
# download new zip file
curl -H 'Cache-Control: no-cache' -L -O https://github.com/litoarias/NetworkModule/releases/download/$NEW_VERSION/$FRAMEWORK_NAME.xcframework.zip
# calculate new checksum
NEW_CHECKSUM=$(swift package compute-checksum $FRAMEWORK_NAME.xcframework.zip)
# print out new shasum for convenience reasons
echo "New checksum is $NEW_CHECKSUM"
# replace name module information in package manifest
sed -E -i '' 's/let moduleName = ".+"/let moduleName = "'$FRAMEWORK_NAME\"/ Package.swift
# replace version information in package manifest
sed -E -i '' 's/let version = ".+"/let version = "'$NEW_VERSION\"/ Package.swift
# replace checksum information in package manifest
sed -E -i '' 's/checksum: ".+"/checksum: "'$NEW_CHECKSUM\"/ Package.swift
# print out package manifes for convenience reasons
cat Package.swift
# delete downloaded zip file
rm $FRAMEWORK_NAME.xcframework.zip
#git commit and push
git add . 
git commit -m "New $FRAMEWORK_NAME version $NEW_VERSION"
git push
# Releasing the new version
gh release create "$NEW_VERSION" --generate-notes
