package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.IntStream;

public abstract class AbstractC5901Se {
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.Spliterator$OfInt] */
    public static C5669Oe a(int i10, int i11, IntFunction intFunction, Comparator comparator) {
        if (comparator != null && (i11 & 4) == 0) {
            throw new IllegalArgumentException();
        }
        return new C5669Oe(IntStream.range(0, i10).spliterator2(), intFunction, i11, comparator);
    }

    public static C5843Re a(Spliterator spliterator, Function function, int i10, long j10) {
        if (!((i10 & 16384) == 0)) {
            throw new IllegalArgumentException("flatMap does not support SUBSIZED characteristic");
        }
        if ((i10 & 4) == 0) {
            spliterator.getClass();
            function.getClass();
            return new C5843Re(null, spliterator, function, i10, j10);
        }
        throw new IllegalArgumentException("flatMap does not support SORTED characteristic");
    }

    public static C5553Me a(Spliterator spliterator, Function function) {
        spliterator.getClass();
        function.getClass();
        return new C5553Me(spliterator, function);
    }
}
