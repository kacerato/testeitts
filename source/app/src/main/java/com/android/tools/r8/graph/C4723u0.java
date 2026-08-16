package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class C4723u0 extends E implements InterfaceC5580Mq0<C4723u0> {

    public static final C4723u0[] f37803f = new C4723u0[0];

    public static final C4723u0 f37804g = new C4723u0();

    public static final boolean f37805h = true;

    public final C4666r0[] f37806d;

    public int f37807e;

    public C4723u0() {
        this.f37807e = 0;
        this.f37806d = C4666r0.f37690d;
    }

    public static C4723u0 l0() {
        return f37804g;
    }

    @Override
    public final C4723u0 E() {
        return this;
    }

    public final C4723u0 b(M2 m22) {
        int i10 = 0;
        for (C4666r0 c4666r0 : this.f37806d) {
            if (c4666r0.f37693c.f37142b == m22) {
                C4666r0[] c4666r0Arr = this.f37806d;
                int length = c4666r0Arr.length - 1;
                C4666r0[] c4666r0Arr2 = new C4666r0[length];
                System.arraycopy(c4666r0Arr, 0, c4666r0Arr2, 0, i10);
                if (i10 < length) {
                    System.arraycopy(this.f37806d, i10 + 1, c4666r0Arr2, i10, length - i10);
                }
                return com.android.tools.r8.internal.X3.a(c4666r0Arr2) ? l0() : new C4723u0(c4666r0Arr2);
            }
            i10++;
        }
        return this;
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof C4723u0) {
            return Arrays.equals(this.f37806d, ((C4723u0) obj).f37806d);
        }
        return false;
    }

    public final void forEach(Consumer consumer) {
        for (C4666r0 c4666r0 : this.f37806d) {
            consumer.accept(c4666r0);
        }
    }

    public boolean isEmpty() {
        return this.f37806d.length == 0;
    }

    @Override
    public final int k0() {
        return Arrays.hashCode(this.f37806d);
    }

    @Override
    public final InterfaceC5638Nq0<C4723u0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4723u0.a(abstractC5754Pq0);
            }
        };
    }

    public C4666r0[] m0() {
        return this.f37806d;
    }

    public C4666r0 n0() {
        return this.f37806d[0];
    }

    public int size() {
        return this.f37806d.length;
    }

    public final Stream stream() {
        return Arrays.stream(this.f37806d);
    }

    public final String toString() {
        return Arrays.toString(this.f37806d);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4666r0[] c4666r0Arr;
                c4666r0Arr = ((C4723u0) obj).f37806d;
                return c4666r0Arr;
            }
        });
    }

    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        for (C4666r0 c4666r0 : this.f37806d) {
            c4666r0.a(c4798y, m10);
        }
    }

    public C4723u0(C4666r0[] c4666r0Arr) {
        this.f37807e = 0;
        if (!f37805h && com.android.tools.r8.internal.X3.a(c4666r0Arr)) {
            throw new AssertionError();
        }
        this.f37806d = c4666r0Arr;
    }

    public boolean c(M2 m22) {
        return a(m22) != null;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        x10.a(this);
        AbstractC4592n1.a(x10, this.f37806d);
    }

    public final void a(final AbstractC10992r0 abstractC10992r0) {
        int i10 = this.f37807e;
        if (i10 != 0) {
            if (f37805h) {
                return;
            }
            int hashCode = hashCode();
            if (hashCode == 0) {
                hashCode = 1;
            }
            if (i10 != hashCode) {
                throw new AssertionError();
            }
            return;
        }
        Arrays.sort(this.f37806d, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = ((C4666r0) obj).f37693c.f37142b.a((InterfaceC4596n5) ((C4666r0) obj2).f37693c.f37142b, AbstractC10992r0.this);
                return a10;
            }
        });
        for (C4666r0 c4666r0 : this.f37806d) {
            c4666r0.f37693c.l0();
        }
        this.f37807e = hashCode();
    }

    public final C4723u0 b(final Predicate predicate) {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4723u0.a(Predicate.this, (C4666r0) obj);
            }
        });
    }

    public final C4666r0 a(final M2 m22) {
        return a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = ((C4666r0) obj).l0().a(M2.this);
                return a10;
            }
        });
    }

    public final C4666r0 a(Predicate predicate) {
        for (C4666r0 c4666r0 : this.f37806d) {
            if (predicate.test(c4666r0)) {
                return c4666r0;
            }
        }
        return null;
    }

    public static C4666r0 a(Predicate predicate, C4666r0 c4666r0) {
        if (predicate.test(c4666r0)) {
            return null;
        }
        return c4666r0;
    }

    public final C4723u0 a(Function function) {
        C4666r0[] c4666r0Arr;
        return (isEmpty() || (c4666r0Arr = (C4666r0[]) com.android.tools.r8.internal.X3.a((Object[]) this.f37806d, function, (Object[]) C4666r0.f37690d)) == this.f37806d) ? this : com.android.tools.r8.internal.X3.a(c4666r0Arr) ? l0() : new C4723u0(c4666r0Arr);
    }
}
