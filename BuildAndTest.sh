#!/bin/bash

DERIVED_DATA_PATH="$(pwd)/derived_data.noindex"
BUILD_RESULTS_PATH="$DERIVED_DATA_PATH/build-results"

rm -rf $XCODEBUILD_LOG
rm -rf $DERIVED_DATA_PATH

xcodebuild -workspace Workspace.xcworkspace \
        -scheme "AllInOneTests" \
        -sdk iphonesimulator \
        -derivedDataPath "$DERIVED_DATA_PATH" \
        -resultBundlePath $BUILD_RESULTS_PATH \
        -destination "platform=iOS Simulator,OS=16.4,name=iPhone SE (3rd generation)" \
        ONLY_ACTIVE_ARCH="NO" \
        ARCHS="arm64" \
        build-for-testing

mv $DERIVED_DATA_PATH/Build/Products/*.xctestrun $DERIVED_DATA_PATH/Build/Products/testrun.xctestrun

xcodebuild test-without-building \
  -xctestrun "$DERIVED_DATA_PATH/Build/Products/testrun.xctestrun" \
  -resultBundleVersion "3" \
  -sdk "iphonesimulator" \
  -derivedDataPath $DERIVED_DATA_PATH \
  -resultBundlePath "$DERIVED_DATA_PATH/unit-test-results" \
  -destination "platform=iOS Simulator,OS=16.4,name=iPhone SE (3rd generation)" \

exit $TEST_OUTPUT
