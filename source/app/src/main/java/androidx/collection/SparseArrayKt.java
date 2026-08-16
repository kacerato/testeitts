package androidx.collection;

import Mf.a;
import Mf.p;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import nf.P0;
import pf.AbstractC14974g0;

public final class SparseArrayKt {
    public static final <T> boolean contains(SparseArrayCompat<T> receiver$0, int i10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.containsKey(i10);
    }

    public static final <T> void forEach(SparseArrayCompat<T> receiver$0, p<? super Integer, ? super T, P0> action) {
        M.q(receiver$0, "receiver$0");
        M.q(action, "action");
        int size = receiver$0.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(receiver$0.keyAt(i10)), receiver$0.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(SparseArrayCompat<T> receiver$0, int i10, T t10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.get(i10, t10);
    }

    public static final <T> T getOrElse(SparseArrayCompat<T> receiver$0, int i10, a<? extends T> defaultValue) {
        M.q(receiver$0, "receiver$0");
        M.q(defaultValue, "defaultValue");
        T t10 = receiver$0.get(i10);
        return t10 != null ? t10 : defaultValue.invoke();
    }

    public static final <T> int getSize(SparseArrayCompat<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.size();
    }

    public static final <T> boolean isNotEmpty(SparseArrayCompat<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return !receiver$0.isEmpty();
    }

    public static final <T> AbstractC14974g0 keyIterator(final SparseArrayCompat<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return new AbstractC14974g0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < receiver$0.size();
            }

            @Override
            public int nextInt() {
                SparseArrayCompat sparseArrayCompat = receiver$0;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseArrayCompat.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final <T> SparseArrayCompat<T> plus(SparseArrayCompat<T> receiver$0, SparseArrayCompat<T> other) {
        M.q(receiver$0, "receiver$0");
        M.q(other, "other");
        SparseArrayCompat<T> sparseArrayCompat = new SparseArrayCompat<>(receiver$0.size() + other.size());
        sparseArrayCompat.putAll(receiver$0);
        sparseArrayCompat.putAll(other);
        return sparseArrayCompat;
    }

    @InterfaceC14427o(message = "Replaced with member function. Remove extension import!")
    public static final <T> boolean remove(SparseArrayCompat<T> receiver$0, int i10, T t10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.remove(i10, t10);
    }

    public static final <T> void set(SparseArrayCompat<T> receiver$0, int i10, T t10) {
        M.q(receiver$0, "receiver$0");
        receiver$0.put(i10, t10);
    }

    public static final <T> Iterator<T> valueIterator(SparseArrayCompat<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return new SparseArrayKt$valueIterator$1(receiver$0);
    }
}
