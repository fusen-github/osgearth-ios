#!/bin/sh

#  build_osg_earth_ios.sh
#  FSDemo01
#
#  Created by workpc on 2020/9/24.
#  Copyright © 2020 workpc. All rights reserved.


# 相对路径
#export Third_Path=../../../../3rdParty
#
#export OSG_Path=../OpenSceneGraph

#绝对路径
export Third_Path=/Users/workpc/Documents/FSosgEarth/fsosgearth/3rdParty

export OSG_Path=/Users/workpc/Documents/FSosgEarth/fsosgearth/OpenSceneGraph


cmake ./ -G Xcode -DOSG_BUILD_PLATFORM_IPHONE:BOOL=ON \
-DIPHONE_ENABLE_BITCODE:BOOL=OFF \
-DOSG_DIR:PATH="$OSG_Path" \
-DIPHONE_SDKVER="13.6" \
-DIPHONE_VERSION_MIN="10.0" \
-DOSGEARTH_BUILD_PLATFORM_IPHONE:BOOL=ON \
-DCURL_INCLUDE_DIR:PATH="$Third_Path/curl-ios-device/include" \
-DCURL_LIBRARY:PATH="$Third_Path/curl-ios-device/lib/libcurl.a" \
-DGDAL_INCLUDE_DIR:PATH="$Third_Path/gdal-ios-device/include" \
-DGDAL_LIBRARY:PATH="$Third_Path/gdal-ios-device/lib/libgdal.a" \
-DGEOS_INCLUDE_DIR:PATH="$Third_Path/geos-ios-device/include/source/headers" \
-DGEOS_LIBRARY:PATH="$Third_Path/geos-ios-device/lib/libGEOS_3.2.a" \
-DPROJ_LIBRARY:PATH="$Third_Path/proj4-ios-device/lib/libproj.a" \
-DFREETYPE_LIBRARY:PATH="$Third_Path/freetype-ios-universal/lib/libFreetype2.a" \
-DPNG_LIBRARY:PATH="$Third_Path/png-ios-device/lib/libpng.a" \
-DOSGEARTH_BUILD_APPLICATION_BUNDLES:BOOL=OFF \
-DDYNAMIC_OSGEARTH:BOOL=OFF \
-DOSGEARTH_USE_QT:BOOL=OFF \
-DOPENTHREADS_LIBRARY:PATH="$OSG_Path/lib/libOpenThreadsd.a" \
-DOSGDB_LIBRARY:PATH="$OSG_Path/lib/libosgDBd.a" \
-DOSGFX_LIBRARY:PATH="$OSG_Path/lib/libosgFXd.a" \
-DOSGGA_LIBRARY:PATH="$OSG_Path/lib/libosgGAd.a" \
-DOSGMANIPULATOR_LIBRARY:PATH="$OSG_Path/lib/libosgManipulatord.a" \
-DOSGSHADOW_LIBRARY:PATH="$OSG_Path/lib/libosgShadowd.a" \
-DOSGSIM_LIBRARY:PATH="$OSG_Path/lib/libosgSimd.a" \
-DOSGTERRAIN_LIBRARY:PATH="$OSG_Path/lib/libosgTerraind.a" \
-DOSGTEXT_LIBRARY:PATH="$OSG_Path/lib/libosgTextd.a" \
-DOSGUTIL_LIBRARY:PATH="$OSG_Path/lib/libosgUtild.a" \
-DOSGVIEWER_LIBRARY:PATH="$OSG_Path/lib/libosgViewerd.a" \
-DOSGWIDGET_LIBRARY:PATH="$OSG_Path/lib/libosgWidgetd.a" \
-DOSG_LIBRARY:PATH="$OSG_Path/lib/libosgd.a" \
-DOSGPARTICLE_LIBRARY:PATH="$OSG_Path/lib/libosgParticled.a"


