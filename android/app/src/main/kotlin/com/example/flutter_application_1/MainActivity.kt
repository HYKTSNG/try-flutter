package com.example.flutter_application_1

import io.flutter.embedding.android.FlutterActivity

import io.flutter.plugins.urllauncher.UrlLauncherPlugin

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
	// 追加
	UrlLauncherPlugin.registerWith(registrarFor("io.flutter.plugins.urllauncher.UrlLauncherPlugin"))
    }
}
