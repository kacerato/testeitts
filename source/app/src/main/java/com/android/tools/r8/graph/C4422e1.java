package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;

public class C4422e1 extends AbstractC4592n1 implements InterfaceC5580Mq0<C4422e1> {

    public static final boolean f37141e = true;

    public final M2 f37142b;

    public final C4704t0[] f37143c;

    public int f37144d = 0;

    public C4422e1(M2 m22, C4704t0[] c4704t0Arr) {
        this.f37142b = m22;
        this.f37143c = c4704t0Arr;
    }

    @Override
    public final C4422e1 E() {
        return this;
    }

    public final void d(Consumer consumer) {
        for (C4704t0 c4704t0 : this.f37143c) {
            consumer.accept(c4704t0);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4422e1) {
            C4422e1 c4422e1 = (C4422e1) obj;
            if (c4422e1.f37142b.equals(this.f37142b) && Arrays.equals(c4422e1.f37143c, this.f37143c)) {
                return true;
            }
        }
        return false;
    }

    public M2 getType() {
        return this.f37142b;
    }

    public final int hashCode() {
        return (this.f37142b.hashCode() * 7) + Arrays.hashCode(this.f37143c);
    }

    public C4704t0 j(int i10) {
        return this.f37143c[i10];
    }

    public int k0() {
        return this.f37143c.length;
    }

    public final void l0() {
        int i10 = this.f37144d;
        if (i10 != 0) {
            if (f37141e) {
                return;
            }
            int hashCode = hashCode();
            if (i10 != (hashCode != 0 ? hashCode : 1)) {
                throw new AssertionError();
            }
            return;
        }
        Arrays.sort(this.f37143c, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((C4704t0) obj).f37738b.compareTo(((C4704t0) obj2).f37738b);
                return compareTo;
            }
        });
        for (C4704t0 c4704t0 : this.f37143c) {
            c4704t0.f37739c.V0();
        }
        int hashCode2 = hashCode();
        this.f37144d = hashCode2 != 0 ? hashCode2 : 1;
    }

    @Override
    public final InterfaceC5638Nq0<C4422e1> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4422e1.a(abstractC5754Pq0);
            }
        };
    }

    public final String toString() {
        M2 m22 = this.f37142b;
        return "Encoded annotation " + ((Object) m22) + " " + Arrays.toString(this.f37143c);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((C4422e1) obj).f37142b;
                return m22;
            }
        }).f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4704t0[] c4704t0Arr;
                c4704t0Arr = ((C4422e1) obj).f37143c;
                return c4704t0Arr;
            }
        });
    }

    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        this.f37142b.a(c4798y, m10);
        for (C4704t0 c4704t0 : this.f37143c) {
            L2 l22 = c4704t0.f37738b;
            l22.getClass();
            m10.a(l22);
            c4704t0.f37739c.a(c4798y, m10);
        }
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        if (!f37141e) {
            throw new AssertionError();
        }
    }

    public final C4422e1 a(Function function, Function function2) {
        M2 m22 = (M2) function.apply(this.f37142b);
        C4704t0[] c4704t0Arr = (C4704t0[]) com.android.tools.r8.internal.X3.a((Object[]) this.f37143c, function2, (Object[]) C4704t0.f37736d);
        return (m22 == this.f37142b && c4704t0Arr == this.f37143c) ? this : new C4422e1(m22, c4704t0Arr);
    }
}
