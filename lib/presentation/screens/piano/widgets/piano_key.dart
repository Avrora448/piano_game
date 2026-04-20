import 'package:flutter/cupertino.dart';

class PianoKey extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;

  const PianoKey({
    Key? key,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
