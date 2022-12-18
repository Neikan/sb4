// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_keys_scroll/consts/data.dart';
import 'package:list_view_keys_scroll/consts/enums.dart';

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
        itemBuilder: (_, index) => Image.network(_images[index]),
      ),
    );
  }
}
