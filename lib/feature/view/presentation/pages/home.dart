import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/padding/pad.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/customtext/text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pad(
        child: IText(
          value: "Oluwaseyi Fatunmole",
          fontsize: 5.fsize,
        ),
      ),
    );
  }
}
