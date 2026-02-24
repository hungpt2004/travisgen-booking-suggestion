import 'package:flutter/material.dart';

extension GapExtension on num {
  SizedBox get wSpace => SizedBox(width: toDouble());
  SizedBox get hSpace => SizedBox(height: toDouble());
}

extension PaddingExtension on num {
  EdgeInsets get pad => EdgeInsets.all(toDouble());
  EdgeInsets get padAll => EdgeInsets.all(toDouble());
  EdgeInsets get padSymmetric => EdgeInsets.symmetric(horizontal: toDouble(), vertical: toDouble());
  EdgeInsets get padOnly => EdgeInsets.only(left: toDouble(), top: toDouble(), right: toDouble(), bottom: toDouble());
}

extension MarginExtension on num {
  EdgeInsets get marAll => EdgeInsets.all(toDouble());
  EdgeInsets get marSymmetric => EdgeInsets.symmetric(horizontal: toDouble(), vertical: toDouble());
  EdgeInsets get marOnly => EdgeInsets.only(left: toDouble(), top: toDouble(), right: toDouble(), bottom: toDouble());
}

extension WidgetExtension on Widget {
  Widget gradientBackground(BuildContext context, {Color? color, Gradient? gradient}) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: gradient, color: color),
      child: this,
    );
  }

  Widget square(double size, {Color? backgroundColor}) {
    return rectangle(size, size, backgroundColor: backgroundColor);
  }

  Widget rectangle(double width, double height, {Color? backgroundColor}) {
    return Container(width: width, height: height, color: backgroundColor, child: this);
  }

  Widget expand({int? flex}) {
    return Expanded(flex: flex ?? 1, child: this);
  }

  Widget container({BoxDecoration? decor, EdgeInsets? pad, EdgeInsets? mar, Color? color}) {
    return Container(padding: pad, margin: mar, decoration: decor, color: decor != null ? null : color, child: this);
  }

  Widget inkTap({
    required void Function()? onTap,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    Color? color,
    Color? splashColor,
    Color? highlightColor,
    Color? hoverColor,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: splashColor,
        highlightColor: highlightColor,
        hoverColor: hoverColor,
        onTap: onTap,
        customBorder: RoundedRectangleBorder(borderRadius: borderRadius),
        child: this,
      ),
    );
  }

  Widget gestureDetector({required void Function()? onTap}) {
    return GestureDetector(onTap: onTap, child: this);
  }

  Widget margAll(double value) => Container(margin: EdgeInsets.all(value), child: this);

  Widget margOnly({double l = 0.0, double t = 0.0, double r = 0.0, double b = 0.0}) => Container(
    margin: EdgeInsets.only(left: l, top: t, right: r, bottom: b),
    child: this,
  );

  Widget margSym({double h = 0.0, double v = 0.0}) => Container(
    margin: EdgeInsets.symmetric(horizontal: h, vertical: v),
    child: this,
  );

  Widget padOnly({double l = 0.0, double t = 0.0, double r = 0.0, double b = 0.0}) => Padding(
    padding: EdgeInsets.only(left: l, top: t, right: r, bottom: b),
    child: this,
  );

  Widget padSym({double h = 0.0, double v = 0.0}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
    child: this,
  );

  Widget padAll(double value) => Padding(padding: EdgeInsets.all(value), child: this);
}
