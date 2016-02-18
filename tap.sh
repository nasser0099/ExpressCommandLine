#!/bin/bash

git clone "$TAP_REPO_URL" "$TAP_DIR"
cd "$TAP_DIR"
cat Formula/swift-express.rb
sed "s/version \"[\.0-9]*\"/version \"${VERSION}\"/g" Formula/swift-express.rb > Formula/swift-express.rb
cat Formula/swift-express.rb
git add Formula/swift-express.rb
git commit -m "Updated swift-express version to ${VERSION}"
git pull
cat Formula/swift-express.rb
cd $OLD_PWD
rm -rf "$TAP_DIR"
echo build done