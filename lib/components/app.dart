// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_keys_scroll/screens/screen_tab_images/screen_tab_images.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenTabImages(),
    );
  }
}
