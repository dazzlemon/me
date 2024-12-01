import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:me/blog/body.dart';

@RoutePage()
class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) => const Body();
}
