import 'package:flutter/cupertino.dart';

class SearchScreenTitleWidget extends StatelessWidget {
  final String title;
  const SearchScreenTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    );
  }
}
