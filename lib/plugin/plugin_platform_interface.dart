import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_method_channel.dart';

abstract class PluginPlatformInterface extends PlatformInterface {
  /// Constructs a PluginPlatformInterface.
  PluginPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static PluginPlatformInterface _instance = MethodChannelPlugin();

  /// The default instance of [PluginPlatformInterface] to use.
  ///
  /// Defaults to [MethodChannelPlugin].
  static PluginPlatformInterface get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginPlatformInterface] when
  /// they register themselves.
  static set instance(PluginPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  MethodChannel getMethodChannel() {
    throw UnimplementedError('methodChannel() has not been implemented.');
  }

  Future<String?> getPlatformInfo() {
    throw UnimplementedError('platformInfo() has not been implemented.');
  }
}
