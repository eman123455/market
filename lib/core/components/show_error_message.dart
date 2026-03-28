  import 'package:flutter/material.dart';
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrMsg(BuildContext context, String msg) {
    return ScaffoldMessenger.of(context)
            .showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(msg)
              )
              );
  }