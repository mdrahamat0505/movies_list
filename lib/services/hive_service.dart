import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_android/path_provider_android.dart';

class HiveService extends GetxService {
  Future<void> onInitForApp() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // DartPluginRegistrant.ensureInitialized();
    // if (Platform.isAndroid) PathProviderAndroid.registerWith();
    Directory appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    await Hive.openBox('logIn');
    await Hive.openBox('UserDetails');

    log('Hive initialized onInitForApp');
  }
}
