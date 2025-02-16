library;

import 'package:flutter/services.dart';

import 'webview_platform_interface.dart';

class JioWebviewPlatform {
  MethodChannel getWebviewMethodChannel() {
    return WebviewPlatformInterface.instance.getWebviewMethodChannel();
  }

  Future<void> reload() => WebviewPlatformInterface.instance.reload();

  Future<bool> canGoBack() => WebviewPlatformInterface.instance.canGoBack();

  Future<void> goBack() => WebviewPlatformInterface.instance.canGoBack();

  Future<String> getCurrentUrl() =>
      WebviewPlatformInterface.instance.getCurrentUrl();

  Future<void> loadUrl(String url) =>
      WebviewPlatformInterface.instance.loadUrl(url);

  Future<void> loadHtmlAsset(String assetPath) =>
      WebviewPlatformInterface.instance.loadHtmlAsset(assetPath);

  Future<void> loadHtmlString(String htmlString) =>
      WebviewPlatformInterface.instance.loadHtmlString(htmlString);

  Future<void> clearCache() => WebviewPlatformInterface.instance.clearCache();

  Future<void> clearLocalStorage() =>
      WebviewPlatformInterface.instance.clearLocalStorage();

  Future<String> getUserAgent() =>
      WebviewPlatformInterface.instance.getUserAgent();

  Future<void> setUserAgent(String userAgent) =>
      WebviewPlatformInterface.instance.setUserAgent(userAgent);

  Future<String> evaluateJavascript(String script) =>
      WebviewPlatformInterface.instance.evaluateJavascript(script);

  Future<String> runJavaScript(String script) =>
      WebviewPlatformInterface.instance.runJavaScript(script);
}
