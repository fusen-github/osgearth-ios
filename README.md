

osgEarth for ios 编译说明

一、下载源代码
1.终端执行fs_prepare_for_build.sh 脚本下载对应版本的源代码，等待自动解压

二、编译OpenSceneGraph
1.终端cd进去到OpenSceneGraph目录
2.打开fs_build_osg_ios.sh
3.修改DIPHONE_SDKVER字段为当前xocod对应的sdk_version （eg：xcode 11.6的sdk_version是13.6）
4.DIPHONE_VERSION_MIN为支持的最小iOS系统版本，默认是10.0， 可以修改
5.执行fs_build_osg_ios.sh脚本编译osg工程，等待编译成功
6.打开OpenSceneGraph.xcodeproj工程文件
7.Automatically Create Schemes
8.配置bundle identifier 和开发证书
9.选择ALL_BUILD Target,  连接真机设备,  开启编译，等待完成
10.
备注：中间可能会遇到编译报错
解决：当某个target编译报错时，单独编译该target，再次编译ALL_BUILD  target

三、编译osgearth
1.打开osgearth/CMakeLists.txt
2.修改IPHONE_SDKVER为当前xocod对应的sdk_version （eg：xcode 11.6的sdk_version是13.6）
3.修改IPHONE_VERSION_MIN为最小支持的版本号， 默认7.0， 建议改成10.0
4.
