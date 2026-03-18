// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dot shorthand context should keep propagating in deeply nested named
// arguments across different declaration kinds.

import 'dart:async';

import 'nested_named_argument_context_deep_lib.dart';

void main() {
  L1 value = .from(
    l2: .builder(
      l3: .make(
        l4: .named(
          l5: .redirect(
            l6: .new(
              l7: .new(
                l8: .new(l9: .new(l10: .seed(10))),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  FutureOr<L1> futureOrValue = .from(
    l2: .builder(
      l3: .make(
        l4: .named(
          l5: .redirect(
            l6: .new(
              l7: .new(
                l8: .new(l9: .new(l10: .seed(20))),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  if (value.l2.l3.l4.l5.l6.l7.l8.l9.l10.value != 10) {
    throw 'Unexpected value for deep shorthand nesting';
  }
  if (futureOrValue is! L1 ||
      futureOrValue.l2.l3.l4.l5.l6.l7.l8.l9.l10.value != 20) {
    throw 'Unexpected value for FutureOr deep shorthand nesting';
  }
}
