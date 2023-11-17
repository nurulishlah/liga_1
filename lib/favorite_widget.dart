import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          liked = liked ? false : true;
        });
      },
      icon: liked
          ? const Icon(Icons.thumb_up)
          : const Icon(Icons.thumb_up_alt_outlined),
    );
  }
}
