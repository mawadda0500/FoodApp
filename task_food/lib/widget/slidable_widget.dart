import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task_food/configuration/theme.dart';

enum SlidableActionCho { delete, favorite }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableActionCho action, BuildContext context) onDismissed;

  const SlidableWidget({
    required this.child,
    required this.onDismissed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: child,
      endActionPane: ActionPane(
        motion: ScrollMotion(key: key),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            color: Peletta.primarySwatch,
            child: GestureDetector(
              onTap: () => onDismissed(SlidableActionCho.favorite, context),
              child: Container(
                height: 45,
                width: 45,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Peletta.firstWhite,
                  size: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            color: Peletta.primarySwatch,
            child: GestureDetector(
              onTap: () => onDismissed(SlidableActionCho.delete, context),
              child: Container(
                height: 45,
                width: 45,
                child: Icon(
                  CupertinoIcons.delete,
                  color: Peletta.firstWhite,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
