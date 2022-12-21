// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:transparent_image/transparent_image.dart';

final _color = Colors.grey.shade300;

class TabImage extends StatelessWidget {
  final String image;
  final bool isLast;

  const TabImage({
    Key? key,
    required this.image,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _decoration = BoxDecoration(
      border: Border(
        bottom: isLast ? BorderSide.none : BorderSide(color: _color),
      ),
    );

    return Container(
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: image,
          imageErrorBuilder: _buildImageError,
        ),
      ),
      decoration: _decoration,
      height: 200,
    );
  }

  Widget _buildImageError(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) =>
      Container(
        width: 36,
        height: 36,
        child: Icon(
          Icons.image_not_supported_outlined,
          color: _color,
        ),
      );
}
