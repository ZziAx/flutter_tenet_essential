import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HoverTracker extends StatefulWidget {
  SystemMouseCursor cursor;
  bool enabled;
  final Widget Function(bool isHovered) builder;
  Function? onHovered;
  Function? onLeaved;

  HoverTracker({
    required this.builder,
    this.enabled = true,
    this.cursor = SystemMouseCursors.click,
    this.onHovered,
    this.onLeaved,
  });

  @override
  State<HoverTracker> createState() => _HoverTrackerState();
}

class _HoverTrackerState extends State<HoverTracker> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.builder(false);
    }
    return MouseRegion(
      cursor: widget.cursor,

      onEnter: (_) {
        setState(() => _isHovered = true);
        widget.onHovered?.call();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        widget.onLeaved?.call();
        
      },
      child: widget.builder(_isHovered),
    );
  }
}
