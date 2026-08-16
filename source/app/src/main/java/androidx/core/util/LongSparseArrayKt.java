package androidx.core.util;

import Mf.p;
import android.util.LongSparseArray;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.P0;
import pf.AbstractC14976h0;

public final class LongSparseArrayKt {
    public static final <T> boolean contains(LongSparseArray<T> longSparseArray, long j10) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j10) >= 0;
    }

    public static final <T> boolean containsKey(LongSparseArray<T> longSparseArray, long j10) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j10) >= 0;
    }

    public static final <T> boolean containsValue(LongSparseArray<T> longSparseArray, T t10) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.indexOfValue(t10) >= 0;
    }

    public static final <T> void forEach(LongSparseArray<T> longSparseArray, p<? super Long, ? super T, P0> action) {
        M.p(longSparseArray, "<this>");
        M.p(action, "action");
        int size = longSparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Long.valueOf(longSparseArray.keyAt(i10)), longSparseArray.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(LongSparseArray<T> longSparseArray, long j10, T t10) {
        M.p(longSparseArray, "<this>");
        T t11 = longSparseArray.get(j10);
        return t11 == null ? t10 : t11;
    }

    public static final <T> T getOrElse(LongSparseArray<T> longSparseArray, long j10, Mf.a<? extends T> defaultValue) {
        M.p(longSparseArray, "<this>");
        M.p(defaultValue, "defaultValue");
        T t10 = longSparseArray.get(j10);
        return t10 == null ? defaultValue.invoke() : t10;
    }

    public static final <T> int getSize(LongSparseArray<T> longSparseArray) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    public static final <T> boolean isEmpty(LongSparseArray<T> longSparseArray) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.size() == 0;
    }

    public static final <T> boolean isNotEmpty(LongSparseArray<T> longSparseArray) {
        M.p(longSparseArray, "<this>");
        return longSparseArray.size() != 0;
    }

    public static final <T> AbstractC14976h0 keyIterator(final LongSparseArray<T> longSparseArray) {
        M.p(longSparseArray, "<this>");
        return new AbstractC14976h0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            @Override
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return longSparseArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> longSparseArray, LongSparseArray<T> other) {
        M.p(longSparseArray, "<this>");
        M.p(other, "other");
        LongSparseArray<T> longSparseArray2 = new LongSparseArray<>(longSparseArray.size() + other.size());
        putAll(longSparseArray2, longSparseArray);
        putAll(longSparseArray2, other);
        return longSparseArray2;
    }

    public static final <T> void putAll(LongSparseArray<T> longSparseArray, LongSparseArray<T> other) {
        M.p(longSparseArray, "<this>");
        M.p(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            longSparseArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    public static final <T> boolean remove(LongSparseArray<T> longSparseArray, long j10, T t10) {
        M.p(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j10);
        if (indexOfKey < 0 || !M.g(t10, longSparseArray.valueAt(indexOfKey))) {
            return false;
        }
        longSparseArray.removeAt(indexOfKey);
        return true;
    }

    public static final <T> void set(LongSparseArray<T> longSparseArray, long j10, T t10) {
        M.p(longSparseArray, "<this>");
        longSparseArray.put(j10, t10);
    }

    public static final <T> Iterator<T> valueIterator(LongSparseArray<T> longSparseArray) {
        M.p(longSparseArray, "<this>");
        return new LongSparseArrayKt$valueIterator$1(longSparseArray);
    }
}
