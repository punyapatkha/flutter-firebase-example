import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_chat_demo/constants/app_constants.dart';
// import 'package:flutter_chat_demo/constants/color_constants.dart';
// import 'package:flutter_chat_demo/constants/constants.dart';
// import 'package:flutter_chat_demo/providers/providers.dart';
// import 'package:flutter_chat_demo/utils/utils.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
// import '../widgets/widgets.dart';
// import 'pages.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('log in OK'));
  }
}