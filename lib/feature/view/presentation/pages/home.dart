import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/widgetextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/contextextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/base/padding/pad.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/customtext/text.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/customtext/richtext.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/base/base_container/scaffold_gradient.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/properties/widget_properties/richtext_properties.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/properties/widget_properties/scaffold_gradientprops.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: ScaffoldGradient(
              props: ScaffoldGradientProperties(
        child: Pad(
          child: Column(
            children: [
              20.h.spaceH,

              ///texts in safe area
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///first widget
                  MultipleTexts(richTextDto: RichTextDto("Oluwaseyi".toUpperCase(), "Fatunmole".toUpperCase(), leadingStyle: TextStyle(fontFamily: "mont", fontSize: 30.fsize, color: Colors.white70), trailingStyle: TextStyle(fontFamily: "mont", fontSize: 30.fsize, color: Colors.white))),

                  ///second widget
                  SizedBox(
                    width: context.deviceWidth / 4.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IText(value: "About"),
                        IText(value: "Skills"),
                        IText(value: "Projects"),
                      ],
                    ),
                  ),

                  ///third widget
                  SizedBox(
                    width: context.deviceWidth / 4.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IText(value: "Linkedin"),
                          ],
                        ),
                        Row(
                          children: [
                            IText(value: "Github"),
                          ],
                        ),
                        Row(
                          children: [
                            IText(value: "Contact me"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )));
}
