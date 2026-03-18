// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class B {
  final C c;

  const B({required this.c});

  static B make({required C c}) => B(c: c);

  static BMaker get maker => ({required C c}) => B(c: c);
}

class C {
  C.f(num n);
}

typedef BMaker = B Function({required C c});

extension type BExt(B b) {
  BExt.named({required this.b});
}
