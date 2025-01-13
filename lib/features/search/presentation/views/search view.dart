import 'package:bookly_app/features/search/presentation/views/widgets/search%20view%20Body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchviewBody(),
      ),
    );
  }
}
