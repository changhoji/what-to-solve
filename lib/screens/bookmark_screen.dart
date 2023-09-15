import 'package:flutter/material.dart';
import 'package:whattosolve/widgets/appbars/user_appbar.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UserAppBar(),
    );
  }
}