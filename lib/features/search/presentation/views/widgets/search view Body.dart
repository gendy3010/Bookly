import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Search Result List View.dart';
import 'custom Search textField.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          CustomSearchTextField(),
          const SizedBox(height: 20,),
          Text('Search Result',style: Styles.textStyle18,),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}


