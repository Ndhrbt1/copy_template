import 'dart:math';

import 'package:copy_template/dt_domains/b.auth/_index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.login.data.dart';
part 'b.login.ctrl.dart';
part 'c.login.view.dart';
part 'widgets/a.login.appbar.dart';
part 'widgets/b.login.fab.dart';
part 'widgets/c.login.charlie.dart';
part 'widgets/d.login.delta.dart';
part 'widgets/e.login.echo.dart';

LoginData get _dt => Data.login.st;
LoginCtrl get _ct => Ctrl.login;
AuthServ get _sv => Serv.auth;
