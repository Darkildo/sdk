// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dot shorthand context should propagate into nested named arguments.

import 'nested_named_argument_context_lib.dart';

void main() {}

final a = A(b: .new(c: .f(0)));

class A {
  final B b;

  const A({required this.b});
}
