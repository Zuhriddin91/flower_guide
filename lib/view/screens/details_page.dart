import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }
  AppBar _buildAppBar() =>AppBar(
    actions: [
    ],
  );
}
