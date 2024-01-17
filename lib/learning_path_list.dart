import 'package:flutter/material.dart';
import 'package:sliverlist_and_slivergrid_app/sliver_appbar_delegate.dart';
import 'academy.dart';

class LearningPathList extends StatelessWidget {
  SliverPersistentHeader _header(String text) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        minHeight: 60,
        maxHeight: 150,
        child: Container(
          color: Colors.red[400],
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      pinned: true,
    );
  }

  const LearningPathList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _header('Android Developer'),
        SliverList(
          delegate: SliverChildListDelegate(
            androidPaths.map(_buildTitle).toList(),
          ),
        ),
        _header('iOS Develooper'),
        SliverList(
          delegate: SliverChildListDelegate(
            iosPaths.map(_buildTitle).toList(),
          ),
        ),
        _header('Multi-Platform App Developer'),
        SliverGrid.count(
          crossAxisCount: 2,
          children: flutterPaths.map(_buildTitle).toList(),
        ),
        _header('Front-End Web Developer'),
        SliverGrid.count(
          crossAxisCount: 2,
          children: webPaths.map(_buildTitle).toList(),
        ),
      ],
    );
  }

  Widget _buildTitle(Academy academy) {
    return ListTile(
      title: Text(academy.title),
      subtitle: Text(
        academy.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
      ),
    );
  }
}
