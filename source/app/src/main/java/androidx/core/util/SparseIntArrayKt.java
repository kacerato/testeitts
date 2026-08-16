package androidx.core.util;

import Mf.p;
import android.util.SparseIntArray;
import kotlin.jvm.internal.M;
import nf.P0;
import pf.AbstractC14974g0;

public final class SparseIntArrayKt {
    public static final boolean contains(SparseIntArray sparseIntArray, int i10) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsKey(SparseIntArray sparseIntArray, int i10) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsValue(SparseIntArray sparseIntArray, int i10) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.indexOfValue(i10) >= 0;
    }

    public static final void forEach(SparseIntArray sparseIntArray, p<? super Integer, ? super Integer, P0> action) {
        M.p(sparseIntArray, "<this>");
        M.p(action, "action");
        int size = sparseIntArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(sparseIntArray.keyAt(i10)), Integer.valueOf(sparseIntArray.valueAt(i10)));
        }
    }

    public static final int getOrDefault(SparseIntArray sparseIntArray, int i10, int i11) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.get(i10, i11);
    }

    public static final int getOrElse(SparseIntArray sparseIntArray, int i10, Mf.a<Integer> defaultValue) {
        M.p(sparseIntArray, "<this>");
        M.p(defaultValue, "defaultValue");
        int indexOfKey = sparseIntArray.indexOfKey(i10);
        return indexOfKey >= 0 ? sparseIntArray.valueAt(indexOfKey) : defaultValue.invoke().intValue();
    }

    public static final int getSize(SparseIntArray sparseIntArray) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.size();
    }

    public static final boolean isEmpty(SparseIntArray sparseIntArray) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseIntArray sparseIntArray) {
        M.p(sparseIntArray, "<this>");
        return sparseIntArray.size() != 0;
    }

    public static final AbstractC14974g0 keyIterator(final SparseIntArray sparseIntArray) {
        M.p(sparseIntArray, "<this>");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseIntArray.this.size();
            }

            @Override
            public int nextInt() {
                SparseIntArray sparseIntArray2 = SparseIntArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseIntArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final SparseIntArray plus(SparseIntArray sparseIntArray, SparseIntArray other) {
        M.p(sparseIntArray, "<this>");
        M.p(other, "other");
        SparseIntArray sparseIntArray2 = new SparseIntArray(sparseIntArray.size() + other.size());
        putAll(sparseIntArray2, sparseIntArray);
        putAll(sparseIntArray2, other);
        return sparseIntArray2;
    }

    public static final void putAll(SparseIntArray sparseIntArray, SparseIntArray other) {
        M.p(sparseIntArray, "<this>");
        M.p(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseIntArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    public static final boolean remove(SparseIntArray sparseIntArray, int i10, int i11) {
        M.p(sparseIntArray, "<this>");
        int indexOfKey = sparseIntArray.indexOfKey(i10);
        if (indexOfKey < 0 || i11 != sparseIntArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseIntArray.removeAt(indexOfKey);
        return true;
    }

    public static final void set(SparseIntArray sparseIntArray, int i10, int i11) {
        M.p(sparseIntArray, "<this>");
        sparseIntArray.put(i10, i11);
    }

    public static final AbstractC14974g0 valueIterator(final SparseIntArray sparseIntArray) {
        M.p(sparseIntArray, "<this>");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseIntArray.this.size();
            }

            @Override
            public int nextInt() {
                SparseIntArray sparseIntArray2 = SparseIntArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseIntArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
