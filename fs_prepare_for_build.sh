#!/bin/sh

#  1_dload_osg.sh
#  FSDemo01
#
#  Created by workpc on 2020/9/24.
#  Copyright © 2020 workpc. All rights reserved.

### 下载相关工程

#1.如果OSG工程不存在，就下载OSG工程
OSG_VERSION=3.6.5
OSG_PACKAGE_NAME=OpenSceneGraph-${OSG_VERSION}.tar.gz
OSG_DOWNLOAD_URL=https://github.com/openscenegraph/OpenSceneGraph/archive/${OSG_PACKAGE_NAME}
OSG_PROJ_DIR=OpenSceneGraph

# 工程目录不存在 -> 解压/下载后解压
if [ ! -e $OSG_PROJ_DIR ]; then
    # 压缩包不存在 -> 下载
    if [ ! -e ${OSG_PACKAGE_NAME} ]; then
        echo "没有找到${OSG_PACKAGE_NAME}，准备下载..."
        wget ${OSG_DOWNLOAD_URL} -O ${OSG_PACKAGE_NAME}
        echo "下载完成..."
    fi

    # 解压
    echo "解压中..."
    tar -xzf ${OSG_PACKAGE_NAME}
    # 转移到指定目录
    mv "${OSG_PROJ_DIR}-${OSG_PROJ_DIR}-${OSG_VERSION}" "${OSG_PROJ_DIR}"
    echo "解压完成..."
fi

# 编译osg的脚本文件
OSG_SHELL_SOURCE_PATH=./fs_build_osg_ios.sh
OSG_SHELL_TARGET_PATH=./${OSG_PROJ_DIR}/${OSG_SHELL_SOURCE_PATH}
# 脚本文件不存在，执行拷贝
if [ ! -e ${OSG_SHELL_TARGET_PATH} ]; then
    echo "执行拷贝osg编译脚本"
    cp -p ${OSG_SHELL_SOURCE_PATH} ${OSG_SHELL_TARGET_PATH}
fi



#2.如果OSG_EARTH工程不存在，就下载OSG_EARTH工程
EARTH_VERSION=2.10.2
EARTH_PACKAGE_NAME=osgearth-${EARTH_VERSION}.tar.gz
EARTH_DOWNLOAD_URL=https://github.com/gwaldron/osgearth/archive/${EARTH_PACKAGE_NAME}
EARTH_PROJ_DIR=osgearth

# 工程目录不存在 -> 解压/下载后解压
if [ ! -e $EARTH_PROJ_DIR ]; then
    # 压缩包不存在 -> 下载
    if [ ! -e ${EARTH_PACKAGE_NAME} ]; then
        echo "没有找到${EARTH_PACKAGE_NAME}，准备下载..."
        wget ${EARTH_DOWNLOAD_URL} -O ${EARTH_PACKAGE_NAME}
        echo "下载完成..."
    fi

    # 解压
    echo "解压中..."
    tar -xzf ${EARTH_PACKAGE_NAME}
    # 转移到指定目录
    mv "${EARTH_PROJ_DIR}-${EARTH_PROJ_DIR}-${EARTH_VERSION}" "${EARTH_PROJ_DIR}"
    echo "解压完成..."
fi

# 编译osg_earth的脚本文件
EARTH_SHELL_SOURCE_PATH=./fs_build_osg_earth_ios.sh
EARTH_SHELL_TARGET_PATH=./${EARTH_PROJ_DIR}/${EARTH_SHELL_SOURCE_PATH}
# 脚本文件不存在，执行拷贝
if [ ! -e ${EARTH_SHELL_TARGET_PATH} ]; then
    echo "执行拷贝osg_earth编译脚本"
    cp -p ${EARTH_SHELL_SOURCE_PATH} ${EARTH_SHELL_TARGET_PATH}
fi

echo "工程包准备完成"

