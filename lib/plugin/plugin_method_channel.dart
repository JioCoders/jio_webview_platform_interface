import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_platform_interface.dart';

/// An implementation of [JioWebviewPlatform] that uses method channels.
class MethodChannelPlugin extends PluginPlatformInterface {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('com.jiocoders/jio_webview');

  @override
  MethodChannel getMethodChannel() {
    return methodChannel;
  }

  @override
  Future<String?> getPlatformInfo() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformInfo');
    return version;
  }
}
