import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'webview_method_channel.dart';

/// Abstract base class for the Webview platform interface.
abstract class WebviewPlatformInterface extends PlatformInterface {
  /// Constructs a WebviewPlatformInterface.
  WebviewPlatformInterface({MethodChannel? customMethodChannel})
      : methodChannel = customMethodChannel ??
            const MethodChannel('com.jiocoders/jio_webview_0'),
        super(token: _token);

  static final Object _token = Object();

  static WebviewPlatformInterface _instance = MethodChannelWebview();

  /// The default instance of [WebviewPlatformInterface] to use.
  ///
  /// Defaults to [MethodChannelJioWebview].
  static WebviewPlatformInterface get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [JioWebviewPlatform] when
  /// they register themselves.
  static set instance(WebviewPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// The method channel used to interact with the native platform.
  final MethodChannel methodChannel;

  MethodChannel getWebviewMethodChannel() {
    throw UnimplementedError(
        'webviewMethodChannel() has not been implemented.');
  }

  Future<void> reload() =>
      throw UnimplementedError('reload() has not been implemented.');

  Future<bool> canGoBack() =>
      throw UnimplementedError('canGoBack() has not been implemented.');

  Future<void> goBack() =>
      throw UnimplementedError('goBack() has not been implemented.');

  Future<String> getCurrentUrl() =>
      throw UnimplementedError('getCurrentUrl() has not been implemented.');

  Future<void> loadUrl(String url) =>
      throw UnimplementedError('loadUrl(url) has not been implemented.');

  Future<void> loadHtmlAsset(String assetPath) => throw UnimplementedError(
      'loadHtmlAsset(assetPath) has not been implemented.');

  Future<void> loadHtmlString(String htmlString) => throw UnimplementedError(
      'loadHtmlString(htmlString) has not been implemented.');

  Future<void> clearCache() =>
      throw UnimplementedError('clearCache() has not been implemented.');

  Future<void> clearLocalStorage() =>
      throw UnimplementedError('clearLocalStorage() has not been implemented.');

  Future<String> getUserAgent() =>
      throw UnimplementedError('getUserAgent() has not been implemented.');

  Future<void> setUserAgent(String userAgent) => throw UnimplementedError(
      'setUserAgent(userAgent) has not been implemented.');

  Future<String> evaluateJavascript(String script) => throw UnimplementedError(
      'evaluateJavascript(script) has not been implemented.');

  Future<String> runJavaScript(String script) => throw UnimplementedError(
      'runJavaScript(script) has not been implemented.');
}
