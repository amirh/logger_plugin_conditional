package com.example.logger_plugin_conditional;

import android.util.Log;

import java.util.Map;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** LoggerPluginConditionalPlugin */
public class LoggerPluginConditionalPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "logger_plugin");
    channel.setMethodCallHandler(new LoggerPluginConditionalPlugin());
  }

  @SuppressWarnings("unchecked")
  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("log")) {
      Map<String, Object> args = (Map<String, Object>) call.arguments;
      Log.d((String) args.get("tag"), (String)args.get("message"));
      result.success(null);
    } else {
      result.notImplemented();
    }
  }
}
