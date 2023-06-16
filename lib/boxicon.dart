

import 'package:class16/boxstate.dart';
import 'package:flutter/material.dart';

class BoxIcon extends StatelessWidget {
  final boxstate;
  const BoxIcon({super.key, required this.boxstate});

  @override
  Widget build(BuildContext context) {
    return boxstate == BoxState.cross
                      ? const Icon(
                          Icons.close,
                          size: 120,
                        )
                      : boxstate== BoxState.circle
                          ? const Icon(
                              Icons.circle_outlined,
                              size: 120,
                            )
                          : Container();
  }
}