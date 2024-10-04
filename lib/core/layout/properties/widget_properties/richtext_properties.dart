import 'package:flutter/material.dart';

class RichTextDto {

String leadingText;

String trailingtext;

TextStyle? leadingStyle;

TextStyle? trailingStyle;

RichTextDto(this.leadingText, this.trailingtext,{this.leadingStyle, this.trailingStyle});

}