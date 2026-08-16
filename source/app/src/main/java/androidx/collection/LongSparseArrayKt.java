package androidx.collection;

import Mf.a;
import Mf.p;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import nf.P0;
import pf.AbstractC14976h0;

public final class LongSparseArrayKt {
    public static final <T> boolean contains(LongSparseArray<T> receiver$0, long j10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.containsKey(j10);
    }

    public static final <T> void forEach(LongSparseArray<T> receiver$0, p<? super Long, ? super T, P0> action) {
        M.q(receiver$0, "receiver$0");
        M.q(action, "action");
        int size = receiver$0.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Long.valueOf(receiver$0.keyAt(i10)), receiver$0.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(LongSparseArray<T> receiver$0, long j10, T t10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.get(j10, t10);
    }

    public static final <T> T getOrElse(LongSparseArray<T> receiver$0, long j10, a<? extends T> defaultValue) {
        M.q(receiver$0, "receiver$0");
        M.q(defaultValue, "defaultValue");
        T t10 = receiver$0.get(j10);
        return t10 != null ? t10 : defaultValue.invoke();
    }

    public static final <T> int getSize(LongSparseArray<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.size();
    }

    public static final <T> boolean isNotEmpty(LongSparseArray<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return !receiver$0.isEmpty();
    }

    public static final <T> AbstractC14976h0 keyIterator(final LongSparseArray<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return new AbstractC14976h0() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < receiver$0.size();
            }

            @Override
            public long nextLong() {
                LongSparseArray longSparseArray = receiver$0;
                int i10 = this.index;
                this.index = i10 + 1;
                return longSparseArray.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> receiver$0, LongSparseArray<T> other) {
        M.q(receiver$0, "receiver$0");
        M.q(other, "other");
        LongSparseArray<T> longSparseArray = new LongSparseArray<>(receiver$0.size() + other.size());
        longSparseArray.putAll(receiver$0);
        longSparseArray.putAll(other);
        return longSparseArray;
    }

    @InterfaceC14427o(message = "Replaced with member function. Remove extension import!")
    public static final <T> boolean remove(LongSparseArray<T> receiver$0, long j10, T t10) {
        M.q(receiver$0, "receiver$0");
        return receiver$0.remove(j10, t10);
    }

    public static final <T> void set(LongSparseArray<T> receiver$0, long j10, T t10) {
        M.q(receiver$0, "receiver$0");
        receiver$0.put(j10, t10);
    }

    public static final <T> Iterator<T> valueIterator(LongSparseArray<T> receiver$0) {
        M.q(receiver$0, "receiver$0");
        return new LongSparseArrayKt$valueIterator$1(receiver$0);
    }
}
