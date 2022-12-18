// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_keys_scroll/components/app_header.dart';
import 'package:list_view_keys_scroll/consts/enums.dart';
import 'package:list_view_keys_scroll/screens/screen_tab_images/components/tab_images.dart';

class ScreenTabImages extends StatelessWidget {
  const ScreenTabImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabImagesEnum.values.length,
      child: Scaffold(
        appBar: AppHeader(
          tabs: [
            Tab(
              text: 'Мои фото',
            ),
            Tab(
              text: 'Галерея',
            ),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              TabImages(tab: TabImagesEnum.MY_PHOTOS),
              TabImages(tab: TabImagesEnum.GALARY),
            ],
          ),
        ),
      ),
    );
  }
}
