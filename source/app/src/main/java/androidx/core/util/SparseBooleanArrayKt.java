package androidx.core.util;

import Mf.p;
import android.util.SparseBooleanArray;
import kotlin.jvm.internal.M;
import nf.P0;
import pf.AbstractC14974g0;
import pf.C;

public final class SparseBooleanArrayKt {
    public static final boolean contains(SparseBooleanArray sparseBooleanArray, int i10) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsKey(SparseBooleanArray sparseBooleanArray, int i10) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i10) >= 0;
    }

    public static final boolean containsValue(SparseBooleanArray sparseBooleanArray, boolean z10) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfValue(z10) >= 0;
    }

    public static final void forEach(SparseBooleanArray sparseBooleanArray, p<? super Integer, ? super Boolean, P0> action) {
        M.p(sparseBooleanArray, "<this>");
        M.p(action, "action");
        int size = sparseBooleanArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(sparseBooleanArray.keyAt(i10)), Boolean.valueOf(sparseBooleanArray.valueAt(i10)));
        }
    }

    public static final boolean getOrDefault(SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.get(i10, z10);
    }

    public static final boolean getOrElse(SparseBooleanArray sparseBooleanArray, int i10, Mf.a<Boolean> defaultValue) {
        M.p(sparseBooleanArray, "<this>");
        M.p(defaultValue, "defaultValue");
        int indexOfKey = sparseBooleanArray.indexOfKey(i10);
        return indexOfKey >= 0 ? sparseBooleanArray.valueAt(indexOfKey) : defaultValue.invoke().booleanValue();
    }

    public static final int getSize(SparseBooleanArray sparseBooleanArray) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(SparseBooleanArray sparseBooleanArray) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseBooleanArray sparseBooleanArray) {
        M.p(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() != 0;
    }

    public static final AbstractC14974g0 keyIterator(final SparseBooleanArray sparseBooleanArray) {
        M.p(sparseBooleanArray, "<this>");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseBooleanArray.this.size();
            }

            @Override
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = SparseBooleanArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseBooleanArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final SparseBooleanArray plus(SparseBooleanArray sparseBooleanArray, SparseBooleanArray other) {
        M.p(sparseBooleanArray, "<this>");
        M.p(other, "other");
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(sparseBooleanArray.size() + other.size());
        putAll(sparseBooleanArray2, sparseBooleanArray);
        putAll(sparseBooleanArray2, other);
        return sparseBooleanArray2;
    }

    public static final void putAll(SparseBooleanArray sparseBooleanArray, SparseBooleanArray other) {
        M.p(sparseBooleanArray, "<this>");
        M.p(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseBooleanArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    public static final boolean remove(SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        M.p(sparseBooleanArray, "<this>");
        int indexOfKey = sparseBooleanArray.indexOfKey(i10);
        if (indexOfKey < 0 || z10 != sparseBooleanArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseBooleanArray.delete(i10);
        return true;
    }

    public static final void set(SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        M.p(sparseBooleanArray, "<this>");
        sparseBooleanArray.put(i10, z10);
    }

    public static final C valueIterator(final SparseBooleanArray sparseBooleanArray) {
        M.p(sparseBooleanArray, "<this>");
        return new C() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < SparseBooleanArray.this.size();
            }

            @Override
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = SparseBooleanArray.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseBooleanArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
