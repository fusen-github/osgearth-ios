#!/bin/sh

#  build_osg_ios.sh
#  FSDemo01
#
#  Created by workpc on 2020/9/24.
#  Copyright © 2020 workpc. All rights reserved.


export THIRDPARTY_PATH="../../../../3rdParty"


cmake ./ -G Xcode -DOSG_BUILD_PLATFORM_IPHONE:BOOL=ON \
-DIPHONE_SDKVER="13.6" \
-DIPHONE_VERSION_MIN="10.0" \
-DOPENGL_PROFILE:STRING=GLES3 \
-DOSG_CPP_EXCEPTIONS_AVAILABLE:BOOL=ON \
-DBUILD_OSG_APPLICATIONS:BOOL=OFF \
-DBUILD_OSG_EXAMPLES:BOOL=ON \
-DOSG_WINDOWING_SYSTEM:STRING=IOS \
-DOSG_DEFAULT_IMAGE_PLUGIN_FOR_OSX="imageio" \
-DDYNAMIC_OPENSCENEGRAPH:BOOL=OFF \
-DDYNAMIC_OPENTHREADS:BOOL=OFF \
-DCURL_INCLUDE_DIR:PATH="$THIRDPARTY_PATH/curl-ios-device/include" \
-DCURL_LIBRARY:PATH="$THIRDPARTY_PATH/curl-ios-device/lib/libcurl.a" \
-DFREETYPE_INCLUDE_DIR_freetype2:PATH="$THIRDPARTY_PATH/freetype-ios-universal/include/freetype" \
-DFREETYPE_INCLUDE_DIR_ft2build:PATH="$THIRDPARTY_PATH/freetype-ios-universal/include" \
-DFREETYPE_LIBRARY:PATH="$THIRDPARTY_PATH/freetype-ios-universal/lib/libFreetype2.a" \
-DTIFF_INCLUDE_DIR:PATH="$THIRDPARTY_PATH/tiff-ios-device/include" \
-DTIFF_LIBRARY:PATH="$THIRDPARTY_PATH/tiff-ios-device/lib/libtiff.a" \
-DGDAL_INCLUDE_DIR:PATH="${THIRDPARTY_PATH}/gdal-ios-device/include" \
-DGDAL_LIBRARY:PATH="${THIRDPARTY_PATH}/gdal-ios-device/lib/libgdal.a"
