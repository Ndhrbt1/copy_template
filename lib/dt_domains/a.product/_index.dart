import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copy_template/dt_domains/_models/_index.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.product.prov.dart';
part 'b.product.serv.dart';
part 'c.product.repo.dart';
part 'd.product.repo.mock.dart';

ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
ProductRepo get _rp => Repo.product.st;
