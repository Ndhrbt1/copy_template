import 'dart:math';

import 'package:copy_template/dt_domains/_models/_index.dart';
import 'package:copy_template/dt_domains/a.product/_index.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_edit.data.dart';
part 'b.product_edit.ctrl.dart';
part 'c.product_edit.view.dart';
part 'widgets/a.product_edit.appbar.dart';
part 'widgets/b.product_edit.fab.dart';
part 'widgets/c.product_edit.charlie.dart';
part 'widgets/d.product_edit.delta.dart';
part 'widgets/e.product_edit.echo.dart';

ProductEditData get _dt => Data.productEdit.st;
ProductEditCtrl get _ct => Ctrl.productEdit;
ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
