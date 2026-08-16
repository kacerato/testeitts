package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.function.Function;

public class C4704t0 extends AbstractC4592n1 implements InterfaceC5580Mq0<C4704t0> {

    public static final C4704t0[] f37736d = new C4704t0[0];

    public static final boolean f37737e = true;

    public final L2 f37738b;

    public final R2 f37739c;

    public C4704t0(L2 l22, R2 r22) {
        this.f37738b = l22;
        this.f37739c = r22;
    }

    @Override
    public final C4704t0 E() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4704t0) {
            C4704t0 c4704t0 = (C4704t0) obj;
            if (this.f37738b.equals(c4704t0.f37738b) && this.f37739c.equals(c4704t0.f37739c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f37739c.hashCode() * 3) + this.f37738b.hashCode();
    }

    public L2 k0() {
        return this.f37738b;
    }

    public R2 l0() {
        return this.f37739c;
    }

    @Override
    public final InterfaceC5638Nq0<C4704t0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4704t0.a(abstractC5754Pq0);
            }
        };
    }

    public final String toString() {
        return ((Object) this.f37738b) + "=" + ((Object) this.f37739c);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                L2 l22;
                l22 = ((C4704t0) obj).f37738b;
                return l22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                R2 r22;
                r22 = ((C4704t0) obj).f37739c;
                return r22;
            }
        });
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        if (!f37737e) {
            throw new AssertionError();
        }
    }
}
