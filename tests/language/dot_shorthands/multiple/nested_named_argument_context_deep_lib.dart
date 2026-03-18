// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class L1 {
  final L2 l2;

  const L1({required this.l2});

  static L1 from({required L2 l2}) => L1(l2: l2);
}

typedef L2Builder = L2 Function({required L3 l3});

class L2 {
  final L3 l3;

  const L2({required this.l3});

  static L2Builder get builder =>
      ({required L3 l3}) => L2(l3: l3);
}

class L3 {
  final L4 l4;

  const L3({required this.l4});

  static L3 make({required L4 l4}) => L3(l4: l4);
}

class L4 {
  final L5 l5;

  const L4.named({required this.l5});
}

class L5 {
  final L6 l6;

  const L5._({required this.l6});

  factory L5.redirect({required L6 l6}) = L5._;
}

class L6 {
  final L7 l7;

  const L6({required this.l7});
}

class L7 {
  final L8 l8;

  const L7({required this.l8});
}

class L8 {
  final L9 l9;

  const L8({required this.l9});
}

class L9 {
  final L10 l10;

  const L9({required this.l10});
}

class L10 {
  final num value;

  const L10.seed(this.value);
}
