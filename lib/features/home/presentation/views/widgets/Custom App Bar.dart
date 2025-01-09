import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/assets.dart';

class FeaturedAppBar extends StatelessWidget {
  const FeaturedAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(AssetsData.logo,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search,size: 30,)),
        ],
      ),
    );
  }
}
