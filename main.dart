import 'package:flutter/material.dart';
import 'package:spotify/album_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




Future<void> main() async {
  var DefaultFirebaseOptions;
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(SpotifyApp());
  }


class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(fontFamily: 'Gotham'),
      home: AlbumScreen(),
    );
  }
  
}