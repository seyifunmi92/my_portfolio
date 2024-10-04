import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/properties/widget_properties/richtext_properties.dart';


class MultipleTexts extends StatelessWidget {
  RichTextDto? richTextDto;

  MultipleTexts({super.key, required this.richTextDto});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          richTextDto!.leadingText,
          style: richTextDto!.leadingStyle,
        ),
        Text(
          richTextDto!.trailingtext,
          style: richTextDto!.trailingStyle,
        ),
      ],
    );
  }
}
