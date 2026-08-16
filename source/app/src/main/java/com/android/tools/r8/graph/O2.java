package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.JK;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
import w2.C15883c;

public class O2 extends AbstractC4592n1 implements Iterable<M2>, InterfaceC5580Mq0<O2> {

    public static final O2 f36673c = new O2();

    public static final boolean f36674d = true;

    public final M2[] f36675b;

    public O2() {
        this.f36675b = M2.f36589h;
    }

    public static O2 k0() {
        return f36673c;
    }

    @Override
    public final O2 E() {
        return this;
    }

    public final void d(Consumer consumer) {
        for (int length = this.f36675b.length - 1; length >= 0; length--) {
            consumer.accept(this.f36675b[length]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof O2) && Arrays.equals(this.f36675b, ((O2) obj).f36675b);
    }

    @Override
    public void forEach(Consumer<? super M2> consumer) {
        for (M2 m22 : this.f36675b) {
            consumer.accept(m22);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f36675b);
    }

    public boolean isEmpty() {
        return this.f36675b.length == 0;
    }

    @Override
    public Iterator<M2> iterator() {
        M2[] m2Arr = this.f36675b;
        return JK.a(m2Arr.length, 0, m2Arr);
    }

    public M2 j(int i10) {
        return this.f36675b[i10];
    }

    @Override
    public final InterfaceC5638Nq0<O2> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                O2.a(abstractC5754Pq0);
            }
        };
    }

    public int size() {
        return this.f36675b.length;
    }

    public Stream<M2> stream() {
        return Stream.of((Object[]) this.f36675b);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        M2[] m2Arr = this.f36675b;
        if (m2Arr.length > 0) {
            sb2.append((Object) m2Arr[0]);
            for (int i10 = 1; i10 < this.f36675b.length; i10++) {
                sb2.append(C15883c.f126249O);
                sb2.append((Object) this.f36675b[i10]);
            }
        }
        return sb2.toString();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2[] m2Arr;
                m2Arr = ((O2) obj).f36675b;
                return m2Arr;
            }
        });
    }

    public O2(M2[] m2Arr) {
        if (!f36674d && (m2Arr == null || m2Arr.length <= 0)) {
            throw new AssertionError();
        }
        this.f36675b = m2Arr;
    }

    public boolean a(M2 m22) {
        return com.android.tools.r8.internal.X3.a((Object[]) this.f36675b, m22);
    }

    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        for (M2 m22 : this.f36675b) {
            m22.a(c4798y, m10);
        }
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        x10.a(this);
    }
}
