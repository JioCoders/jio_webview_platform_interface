import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'webview_platform_interface.dart';

/// An implementation of [WebviewPlatform] that uses method channels.
class MethodChannelWebview extends WebviewPlatformInterface {
  MethodChannelWebview({super.customMethodChannel});

  /// The method channel used to interact with the native platform.
  @override
  @visibleForTesting
  MethodChannel getWebviewMethodChannel() => super.methodChannel;

  @override
  Future<void> reload() async => methodChannel.invokeMethod('reload');

  @override
  Future<bool> canGoBack() async =>
      await methodChannel.invokeMethod('canGoBack') ?? false;

  @override
  Future<void> goBack() async => methodChannel.invokeMethod('goBack');

  @override
  Future<String> getCurrentUrl() async =>
      await methodChannel.invokeMethod('getCurrentUrl') ?? '';

  @override
  Future<void> loadUrl(String url) async {
    debugPrint('load-------');
    methodChannel.invokeMethod('loadUrl', {'url': url});
  }

  @override
  Future<void> loadHtmlAsset(String assetPath) async =>
      methodChannel.invokeMethod('loadHtmlAsset', {'assetPath': assetPath});

  @override
  Future<void> loadHtmlString(String htmlString) async =>
      methodChannel.invokeMethod('loadHtmlString', {'htmlString': htmlString});

  @override
  Future<void> clearCache() async => methodChannel.invokeMethod('clearCache');

  @override
  Future<void> clearLocalStorage() async =>
      methodChannel.invokeMethod('clearLocalStorage');

  @override
  Future<String> getUserAgent() async =>
      await methodChannel.invokeMethod('getUserAgent') ?? '';

  @override
  Future<void> setUserAgent(String userAgent) async =>
      methodChannel.invokeMethod('setUserAgent', {'userAgent': userAgent});

  @override
  Future<String> evaluateJavascript(String script) async =>
      await methodChannel
          .invokeMethod('evaluateJavaScript', {'script': script}) ??
      '';

  @override
  Future<String> runJavaScript(String script) async =>
      await methodChannel.invokeMethod('runJavaScript', {'script': script}) ??
      '';
}
