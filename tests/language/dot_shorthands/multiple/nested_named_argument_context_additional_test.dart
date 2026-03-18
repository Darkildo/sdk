// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dot shorthand context should propagate into nested named arguments for
// static methods, getter invocations, and extension type constructors.

import 'nested_named_argument_context_additional_lib.dart';

void main() {
  B fromStaticMethod = .make(c: .f(0));
  B fromGetterCall = .maker(c: .f(1));
  BExt fromExtensionTypeConstructor = .named(b: .new(c: .f(2)));

  // Ignore unused local variable warnings in static analysis.
  fromStaticMethod;
  fromGetterCall;
  fromExtensionTypeConstructor;
}
