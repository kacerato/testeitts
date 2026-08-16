package androidx.core.util;

import Mf.p;
import android.util.SparseLongArray;
import kotlin.jvm.internal.M;
import nf.P0;
import pf.AbstractC14974g0;
import pf.AbstractC14976h0;

public final class SparseLongArrayKt {
    public static final boolean contains(SparseLongArray sparseLongArray, int i10) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsKey(SparseLongArray sparseLongArray, int i10) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsValue(SparseLongArray sparseLongArray, long j10) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.indexOfValue(j10) >= 0;
    }

    public static final void forEach(SparseLongArray sparseLongArray, p<? super Integer, ? super Long, P0> action) {
        M.p(sparseLongArray, "<this>");
        M.p(action, "action");
        int size = sparseLongArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(sparseLongArray.keyAt(i10)), Long.valueOf(sparseLongArray.valueAt(i10)));
        }
    }

    public static final long getOrDefault(SparseLongArray sparseLongArray, int i10, long j10) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.get(i10, j10);
    }

    public static final long getOrElse(SparseLongArray sparseLongArray, int i10, Mf.a<Long> defaultValue) {
        M.p(sparseLongArray, "<this>");
        M.p(defaultValue, "defaultValue");
        int indexOfKey = sparseLongArray.indexOfKey(i10);
        return indexOfKey >= 0 ? sparseLongArray.valueAt(indexOfKey) : defaultValue.invoke().longValue();
    }

    public static final int getSize(SparseLongArray sparseLongArray) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.size();
    }

    public static final boolean isEmpty(SparseLongArray sparseLongArray) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseLongArray sparseLongArray) {
        M.p(sparseLongArray, "<this>");
        return sparseLongArray.size() != 0;
    }

    public static final AbstractC14974g0 keyIterator(final SparseLongArray sparseLongArray) {
        M.p(sparseLongArray, "<this>");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseLongArray.this.size();
            }

            @Override
            public int nextInt() {
                SparseLongArray sparseLongArray2 = SparseLongArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseLongArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final SparseLongArray plus(SparseLongArray sparseLongArray, SparseLongArray other) {
        M.p(sparseLongArray, "<this>");
        M.p(other, "other");
        SparseLongArray sparseLongArray2 = new SparseLongArray(sparseLongArray.size() + other.size());
        putAll(sparseLongArray2, sparseLongArray);
        putAll(sparseLongArray2, other);
        return sparseLongArray2;
    }

    public static final void putAll(SparseLongArray sparseLongArray, SparseLongArray other) {
        M.p(sparseLongArray, "<this>");
        M.p(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseLongArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    public static final boolean remove(SparseLongArray sparseLongArray, int i10, long j10) {
        M.p(sparseLongArray, "<this>");
        int indexOfKey = sparseLongArray.indexOfKey(i10);
        if (indexOfKey < 0 || j10 != sparseLongArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseLongArray.removeAt(indexOfKey);
        return true;
    }

    public static final void set(SparseLongArray sparseLongArray, int i10, long j10) {
        M.p(sparseLongArray, "<this>");
        sparseLongArray.put(i10, j10);
    }

    public static final AbstractC14976h0 valueIterator(final SparseLongArray sparseLongArray) {
        M.p(sparseLongArray, "<this>");
        return new AbstractC14976h0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseLongArray.this.size();
            }

            @Override
            public long nextLong() {
                SparseLongArray sparseLongArray2 = SparseLongArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseLongArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
