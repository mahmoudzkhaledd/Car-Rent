import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'GeneralWidgets/AppText.dart';

import 'Shared/AppReposetory.dart';

import 'services/GeneralServices/NotificationService.dart';
import 'services/GeneralServices/StorageService.dart';

Future<void> handelMsgs(RemoteMessage message) async {
  //print(message.data);
}

Future<void> configs() async {
  AppText.defaultLanguage = TextLanguage.english;
  await StorageServices.instance.initPrefs();

  await AppRepository.getCountries();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.requestPermission();
  FirebaseMessaging.onMessage.listen((event) {
    NotifiactionServices.instance.sendNotification(
      event.notification!.title!,
      event.notification!.body!,
    );
  });
  FirebaseMessaging.onBackgroundMessage(handelMsgs);
  await NotifiactionServices.instance.init();
}
