import 'dart:math';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.auth.prov.dart';
part 'b.auth.serv.dart';
part 'c.auth.repo.dart';
part 'd.auth.repo.mock.dart';

AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;
AuthRepo get _rp => Repo.auth.st;
