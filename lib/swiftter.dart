// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member

import 'dart:ui';

import 'package:flutter/widgets.dart';

// typedef ZStack = Stack;
// typedef VStack = Column;
// typedef HStack = Row;

typedef FunctionWithArguments = dynamic Function(
    List<dynamic> positionalArguments, Map<Symbol, dynamic> namedArguments);

Column VStack([List<Widget> list = const []]) {
  return Column(children: list);
}

Row HStack([List<Widget> list = const []]) {
  return Row(children: list);
}

Stack ZStack([List<Widget> list = const []]) {
  return Stack(children: list);
}

extension WidgetExtension on Widget {
  Padding padding(
      {double all = 8,
      double? left,
      double? right,
      double? top,
      double? bottom}) {
    if (left != null || right != null || top != null || bottom != null) {
      return Padding(
        padding: EdgeInsets.only(
          left: left ?? 0,
          right: right ?? 0,
          top: top ?? 0,
          bottom: bottom ?? 0,
        ),
        child: this,
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(all),
        child: this,
      );
    }
  }

  SizedBox frame({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }

  Expanded expanded() {
    return Expanded(
      child: this,
    );
  }

  @Deprecated("change to color")
  DefaultTextStyle foregroundColor(Color color) {
    return this.color(color);
  }

  DefaultTextStyle color(Color color) {
    TextStyle textStyle = const TextStyle();
    Widget ref = this;

    if (this is DefaultTextStyle) {
      textStyle = (this as DefaultTextStyle).style;
      ref = (this as DefaultTextStyle).child;
    }

    return DefaultTextStyle(
        style: textStyle.copyWith(color: color), child: ref);
  }

  DefaultTextStyle font(TextStyle style) {
    return DefaultTextStyle(style: style, child: this);
  }

  DefaultTextStyle fontSize(double size) {
    TextStyle textStyle = const TextStyle();
    Widget ref = this;

    if (this is DefaultTextStyle) {
      textStyle = (this as DefaultTextStyle).style;
      ref = (this as DefaultTextStyle).child;
    }

    return DefaultTextStyle(
        style: textStyle.copyWith(fontSize: size), child: ref);
  }

  Widget shadow(
      {double radius = 0,
      Color color = const Color.fromARGB(255, 0, 0, 0),
      double x = 0,
      double y = 0}) {
    TextStyle textStyle = const TextStyle();
    Widget ref = this;

    if (this is DefaultTextStyle) {
      textStyle = (this as DefaultTextStyle).style;
      ref = (this as DefaultTextStyle).child;
    }

    return DefaultTextStyle(
      style: textStyle.copyWith(
        shadows: [
          BoxShadow(
            blurRadius: radius,
            color: color,
            offset: Offset(x, y),
          ),
        ],
      ),
      child: ref,
    );
  }

  Opacity opacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: this,
    );
  }

  ImageFiltered blur(double radius) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: radius, sigmaY: radius),
      child: this,
    );
  }
}
