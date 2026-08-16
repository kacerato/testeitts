package androidx.core.util;

import Mf.p;
import android.util.SparseArray;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.P0;
import pf.AbstractC14974g0;

public final class SparseArrayKt {
    public static final <T> boolean contains(SparseArray<T> sparseArray, int i10) {
        M.p(sparseArray, "<this>");
        return sparseArray.indexOfKey(i10) >= 0;
    }

    public static final <T> boolean containsKey(SparseArray<T> sparseArray, int i10) {
        M.p(sparseArray, "<this>");
        return sparseArray.indexOfKey(i10) >= 0;
    }

    public static final <T> boolean containsValue(SparseArray<T> sparseArray, T t10) {
        M.p(sparseArray, "<this>");
        return sparseArray.indexOfValue(t10) >= 0;
    }

    public static final <T> void forEach(SparseArray<T> sparseArray, p<? super Integer, ? super T, P0> action) {
        M.p(sparseArray, "<this>");
        M.p(action, "action");
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(sparseArray.keyAt(i10)), sparseArray.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(SparseArray<T> sparseArray, int i10, T t10) {
        M.p(sparseArray, "<this>");
        T t11 = sparseArray.get(i10);
        return t11 == null ? t10 : t11;
    }

    public static final <T> T getOrElse(SparseArray<T> sparseArray, int i10, Mf.a<? extends T> defaultValue) {
        M.p(sparseArray, "<this>");
        M.p(defaultValue, "defaultValue");
        T t10 = sparseArray.get(i10);
        return t10 == null ? defaultValue.invoke() : t10;
    }

    public static final <T> int getSize(SparseArray<T> sparseArray) {
        M.p(sparseArray, "<this>");
        return sparseArray.size();
    }

    public static final <T> boolean isEmpty(SparseArray<T> sparseArray) {
        M.p(sparseArray, "<this>");
        return sparseArray.size() == 0;
    }

    public static final <T> boolean isNotEmpty(SparseArray<T> sparseArray) {
        M.p(sparseArray, "<this>");
        return sparseArray.size() != 0;
    }

    public static final <T> AbstractC14974g0 keyIterator(final SparseArray<T> sparseArray) {
        M.p(sparseArray, "<this>");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < sparseArray.size();
            }

            @Override
            public int nextInt() {
                SparseArray<T> sparseArray2 = sparseArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final <T> SparseArray<T> plus(SparseArray<T> sparseArray, SparseArray<T> other) {
        M.p(sparseArray, "<this>");
        M.p(other, "other");
        SparseArray<T> sparseArray2 = new SparseArray<>(sparseArray.size() + other.size());
        putAll(sparseArray2, sparseArray);
        putAll(sparseArray2, other);
        return sparseArray2;
    }

    public static final <T> void putAll(SparseArray<T> sparseArray, SparseArray<T> other) {
        M.p(sparseArray, "<this>");
        M.p(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    public static final <T> boolean remove(SparseArray<T> sparseArray, int i10, T t10) {
        M.p(sparseArray, "<this>");
        int indexOfKey = sparseArray.indexOfKey(i10);
        if (indexOfKey < 0 || !M.g(t10, sparseArray.valueAt(indexOfKey))) {
            return false;
        }
        sparseArray.removeAt(indexOfKey);
        return true;
    }

    public static final <T> void set(SparseArray<T> sparseArray, int i10, T t10) {
        M.p(sparseArray, "<this>");
        sparseArray.put(i10, t10);
    }

    public static final <T> Iterator<T> valueIterator(SparseArray<T> sparseArray) {
        M.p(sparseArray, "<this>");
        return new SparseArrayKt$valueIterator$1(sparseArray);
    }
}
