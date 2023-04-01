import 'package:flutter/material.dart';

class CustomScrollbar extends StatefulWidget {
  final Widget child;
  final double thickness;
  final Color color;
  final EdgeInsets margin;

  CustomScrollbar({
    Key? key,
    required this.child,
    this.thickness = 6.0,
    this.color = Colors.grey,
    this.margin = const EdgeInsets.symmetric(horizontal: 10.0),
  }) : super(key: key);

  @override
  _CustomScrollbarState createState() => _CustomScrollbarState();
}

class _CustomScrollbarState extends State<CustomScrollbar> {
  final ScrollController _controller = ScrollController();
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (!_isDragging)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: widget.margin,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.thickness / 2),
                color: widget.color.withOpacity(0.5),
              ),
              height: widget.thickness,
              child: GestureDetector(
                onHorizontalDragStart: (details) {
                  setState(() {
                    _isDragging = true;
                  });
                },
                onHorizontalDragUpdate: (details) {
                  final position = _controller.position;
                  final maxScrollExtent = position.maxScrollExtent;
                  final dragDelta = details.delta.dx;
                  final singleDelta = maxScrollExtent / context.size!.width;
                  final newOffset = (position.pixels + dragDelta * singleDelta)
                      .clamp(0.0, maxScrollExtent);
                  _controller.jumpTo(newOffset);
                },
                onHorizontalDragEnd: (details) {
                  setState(() {
                    _isDragging = false;
                  });
                },
              ),
            ),
          ),
      ],
    );
  }
}
