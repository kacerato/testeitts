package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.BitSet;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C6754cS {

    public static final boolean f47048e = true;

    public final C4798y f47049a;

    public final C4724u1 f47050b;

    public final C6921dS f47051c = C6921dS.f47407d;

    public final Set f47052d = AbstractC5513Ll0.c();

    public C6754cS(C4798y c4798y) {
        this.f47049a = c4798y;
        this.f47050b = c4798y.b();
    }

    public final void a() {
        this.f47050b.f38192x6.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6754cS.this.a((com.android.tools.r8.graph.A2) obj, (int[]) obj2);
            }
        });
    }

    public final void b() {
        this.f47049a.f38433z.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6754cS.this.a((com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.A2 a22, int[] iArr) {
        C4516j1 b10 = b(a22);
        if (b10 != null) {
            if (!f47048e && iArr.length <= 0) {
                throw new AssertionError();
            }
            int i10 = iArr[iArr.length - 1] + 1;
            BitSet bitSet = new BitSet(i10);
            for (int i11 : iArr) {
                if (!f47048e && i11 >= i10) {
                    throw new AssertionError();
                }
                bitSet.set(i11);
            }
            this.f47051c.getClass();
            b10.T0().f45459n = bitSet;
            b10.L0();
            if (b10.f37320m.r() != null) {
                b10.L0();
                b10.f37320m.r().or(bitSet);
            } else {
                C6921dS c6921dS = this.f47051c;
                BitSet bitSet2 = (BitSet) bitSet.clone();
                c6921dS.getClass();
                b10.T0().f45460o = bitSet2;
            }
        }
    }

    public final C4516j1 b(com.android.tools.r8.graph.A2 a22) {
        C4798y c4798y = this.f47049a;
        c4798y.getClass();
        C4516j1 b10 = a22.b(c4798y.g(a22.f38297f));
        if (b10 == null) {
            return null;
        }
        this.f47052d.add(a22.f38297f);
        return b10;
    }

    public final void a(com.android.tools.r8.graph.A2 a22) {
        C4516j1 b10 = b(a22);
        if (b10 != null) {
            this.f47051c.getClass();
            b10.T0().f45466u &= -9;
        }
    }

    public final void a(C4554l1 c4554l1, C7140em0 c7140em0) {
        VY vy;
        C7520h10 c7520h10 = C7520h10.f48413b;
        C4798y c4798y = this.f47049a;
        c4798y.getClass();
        C4460g1 b10 = c4554l1.b(c4798y.g(c4554l1.f38297f));
        if (b10 != null) {
            this.f47052d.add(c4554l1.f38297f);
        } else {
            b10 = null;
        }
        if (b10 != null) {
            this.f47051c.getClass();
            synchronized (b10) {
                vy = (VY) b10.f37207l.a();
                b10.f37207l = vy;
            }
            vy.a(c7140em0, b10);
            this.f47051c.a(b10, c7520h10);
        }
    }
}
