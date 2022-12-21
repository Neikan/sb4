// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_keys_scroll/consts/data.dart';
import 'package:list_view_keys_scroll/consts/enums.dart';
import 'package:list_view_keys_scroll/screens/screen_tab_images/components/tab_image.dart';

class TabImages extends StatelessWidget {
  final TabImagesEnum tab;

  const TabImages({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _images = imagesData[tab]!;

    return Scaffold(
      body: ListView.builder(
        key: PageStorageKey(tab.name),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: _images.length,
        itemBuilder: (_, index) => TabImage(
          image: _images[index],
          isLast: _images.length == index + 1,
        ),
      ),
    );
  }
}
