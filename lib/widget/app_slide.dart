import 'package:flutter/material.dart';

enum SlideDirection { left, right, up, down }

class AppSlide extends StatelessWidget {
  /// Giá trị dùng để tạo [ValueKey] tự động khi [child] không có key.
  /// Nếu `child` đã có key riêng thì không cần truyền [value].
  final Object? value;

  /// Widget hiển thị (nên có `key` duy nhất).
  final Widget child;

  /// Hướng slide vào của widget mới.
  final SlideDirection direction;

  /// Duration cho enter animation (widget mới trượt vào).
  final Duration duration;

  /// Duration cho exit animation (widget cũ trượt ra), mặc định ngắn hơn enter.
  final Duration? reverseDuration;

  /// Curve áp dụng cho animation.
  final Curve curve;

  /// Mức độ dịch chuyển slide (0.0 – 1.0, tương đối với kích thước widget).
  final double offset;

  const AppSlide({
    super.key,
    this.value,
    required this.child,
    this.direction = SlideDirection.left,
    this.duration = const Duration(milliseconds: 380),
    this.reverseDuration,
    this.curve = Curves.easeOutCubic,
    this.offset = 0.15,
  });

  Offset _beginOffset() {
    return switch (direction) {
      SlideDirection.left => Offset(offset, 0),
      SlideDirection.right => Offset(-offset, 0),
      SlideDirection.up => Offset(0, offset),
      SlideDirection.down => Offset(0, -offset),
    };
  }

  @override
  Widget build(BuildContext context) {
    // Nếu child chưa có key, tự wrap bằng ValueKey(value)
    final effectiveChild = (value != null && child.key == null)
        ? KeyedSubtree(key: ValueKey(value), child: child)
        : child;

    return AnimatedSwitcher(
      duration: duration,
      reverseDuration: reverseDuration ?? Duration(milliseconds: (duration.inMilliseconds * 0.75).round()),
      transitionBuilder: (child, animation) {
        final curved = CurvedAnimation(parent: animation, curve: curve);
        return FadeTransition(
          opacity: curved,
          child: SlideTransition(
            position: Tween<Offset>(begin: _beginOffset(), end: Offset.zero).animate(curved),
            child: child,
          ),
        );
      },
      layoutBuilder: (currentChild, previousChildren) => Stack(
        alignment: Alignment.centerLeft,
        children: [...previousChildren, if (currentChild != null) currentChild],
      ),
      child: effectiveChild,
    );
  }
}
