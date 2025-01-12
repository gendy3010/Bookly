import 'package:flutter/cupertino.dart';

import 'custom BookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return CustomBookImage();
          },
        ),
      ),
    );
  }
}
