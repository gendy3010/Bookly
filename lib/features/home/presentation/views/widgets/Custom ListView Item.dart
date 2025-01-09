import 'package:flutter/material.dart';

import '../../../../../core/Utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3 ,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.test,
                ))
        ),
      ),
    );
  }
}
