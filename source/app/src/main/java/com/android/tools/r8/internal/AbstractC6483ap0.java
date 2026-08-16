package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public abstract class AbstractC6483ap0 {
    public static Spliterator a(Spliterator spliterator) {
        return spliterator;
    }

    public static void b(Stream[] streamArr) {
        for (Stream stream : streamArr) {
            stream.close();
        }
    }

    public static Stream a(Iterable iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).stream();
        }
        return StreamSupport.stream(iterable.spliterator(), false);
    }

    public static Stream a(final Stream... streamArr) {
        Object[] objArr = new Object[streamArr.length];
        int length = streamArr.length;
        int i10 = 336;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        long j10 = 0;
        Object[] objArr2 = objArr;
        while (i11 < length) {
            Stream stream = streamArr[i11];
            z10 |= stream.isParallel();
            Spliterator<T> spliterator2 = stream.spliterator2();
            spliterator2.getClass();
            int i13 = i12 + 1;
            int length2 = objArr2.length;
            Object[] objArr3 = objArr2;
            if (length2 < i13) {
                objArr3 = Arrays.copyOf(objArr2, WB.a(objArr2.length, i13));
            }
            objArr3[i12] = spliterator2;
            i10 &= spliterator2.characteristics();
            long estimateSize = spliterator2.estimateSize();
            long j11 = j10 + estimateSize;
            j10 = (((estimateSize ^ j10) > 0L ? 1 : ((estimateSize ^ j10) == 0L ? 0 : -1)) < 0) | ((j10 ^ j11) >= 0) ? j11 : ((j11 >>> 63) ^ 1) + Long.MAX_VALUE;
            i11++;
            i12 = i13;
            objArr2 = objArr3;
        }
        return StreamSupport.stream(AbstractC5901Se.a(AbstractC7552hC.b(i12, objArr2).spliterator(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC6483ap0.a((Spliterator) obj);
            }
        }, i10, j10), z10).onClose(new Runnable() {
            @Override
            public final void run() {
                AbstractC6483ap0.b(streamArr);
            }
        });
    }

    public static Stream a(Stream stream, InterfaceC6268Yo0 interfaceC6268Yo0) {
        stream.getClass();
        interfaceC6268Yo0.getClass();
        boolean isParallel = stream.isParallel();
        Spliterator<T> spliterator2 = stream.spliterator2();
        if (!spliterator2.hasCharacteristics(16384)) {
            return StreamSupport.stream(new C6211Xo0(spliterator2.estimateSize(), spliterator2.characteristics() & 80, Spliterators.iterator(spliterator2), interfaceC6268Yo0), isParallel).onClose(new RunnableC6699c51(stream));
        }
        return StreamSupport.stream(new C6154Wo0(spliterator2, 0L, interfaceC6268Yo0), isParallel).onClose(new RunnableC6699c51(stream));
    }

    public static Stream a(Stream stream, Stream stream2, BiFunction biFunction) {
        stream.getClass();
        stream2.getClass();
        biFunction.getClass();
        boolean z10 = stream.isParallel() || stream2.isParallel();
        Spliterator<T> spliterator2 = stream.spliterator2();
        Spliterator<T> spliterator22 = stream2.spliterator2();
        return StreamSupport.stream(new C6097Vo0(Math.min(spliterator2.estimateSize(), spliterator22.estimateSize()), spliterator2.characteristics() & spliterator22.characteristics() & 80, Spliterators.iterator(spliterator2), Spliterators.iterator(spliterator22), biFunction), z10).onClose(new RunnableC6699c51(stream)).onClose(new RunnableC6699c51(stream2));
    }
}
