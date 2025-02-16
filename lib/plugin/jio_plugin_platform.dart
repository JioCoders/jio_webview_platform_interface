library;

import 'package:flutter/services.dart';

import 'plugin_platform_interface.dart';

class JioPluginPlatform {
  Future<String?> getPlatformInfo() {
    return PluginPlatformInterface.instance.getPlatformInfo();
  }

  MethodChannel getMethodChannel() {
    return PluginPlatformInterface.instance.getMethodChannel();
  }
}
