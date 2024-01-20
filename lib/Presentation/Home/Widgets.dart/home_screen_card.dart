import 'package:flutter/cupertino.dart';
import 'package:netflix/Domain/Home/home_top_rated_model/home_top_rated_model.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Container(
        width: size * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
