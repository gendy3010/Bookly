import 'package:flutter/material.dart';

import 'Custom App Bar.dart';
import 'CustomBook Details Appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}


