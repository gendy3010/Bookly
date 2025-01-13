import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            )
        ) ,
        enabledBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(14),
        ),
        hintText: 'Search',
        suffixIcon: Opacity(
            opacity: 0.8,
            child: Icon(Icons.search)),
      ),
    );
  }
}
