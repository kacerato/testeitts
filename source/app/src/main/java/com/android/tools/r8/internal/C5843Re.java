package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.function.Function;

public final class C5843Re extends AbstractC5785Qe {
    public C5843Re(Spliterator spliterator, Spliterator spliterator2, Function function, int i10, long j10) {
        super(spliterator, spliterator2, function, new InterfaceC5727Pe() {
            @Override
            public final Spliterator a(Spliterator spliterator3, Spliterator spliterator4, Function function2, int i11, long j11) {
                return new C5843Re(spliterator3, spliterator4, function2, i11, j11);
            }
        }, i10, j10);
    }
}
