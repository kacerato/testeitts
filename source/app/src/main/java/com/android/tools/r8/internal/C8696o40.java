package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.BitSet;
import java.util.Set;
import java.util.function.Consumer;

public class C8696o40 extends AbstractC8028k40 {

    public static final C8696o40 f51162b = new C8696o40();

    public static final boolean f51163c = true;

    public static void j(com.android.tools.r8.graph.H5 h52) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).S();
            }
        };
        if (h52.A().d()) {
            consumer.accept(h52.A().c());
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, InterfaceC6297Zc interfaceC6297Zc) {
    }

    @Override
    public final void b(C4516j1 c4516j1) {
        c4516j1.T0().f45466u |= 4;
    }

    @Override
    public final void c(C4516j1 c4516j1) {
    }

    @Override
    public final void d(C4516j1 c4516j1) {
        c4516j1.T0().f45466u |= 2;
    }

    public final void e(C4516j1 c4516j1) {
        c4516j1.T0().f45466u |= 1;
    }

    public final void f(C4516j1 c4516j1) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).K();
            }
        };
        c4516j1.L0();
        if (c4516j1.f37320m.d()) {
            c4516j1.L0();
            consumer.accept(c4516j1.f37320m.c());
        }
    }

    public final void g(com.android.tools.r8.graph.H5 h52) {
        b(new C9649to1(), h52);
    }

    public final void h(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).Q();
            }
        }, h52);
    }

    public final void i(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).R();
            }
        }, h52);
    }

    public final void k(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).T();
            }
        }, h52);
    }

    public final void l(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).U();
            }
        }, h52);
    }

    public final void m(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).V();
            }
        }, h52);
    }

    public final void n(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).W();
            }
        }, h52);
    }

    public final void o(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).X();
            }
        }, h52);
    }

    public final void p(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).Y();
            }
        }, h52);
    }

    public final void q(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).Z();
            }
        }, h52);
    }

    public final void r(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).a0();
            }
        }, h52);
    }

    public final void s(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).b0();
            }
        }, h52);
    }

    public final void t(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).c0();
            }
        }, h52);
    }

    @Override
    public final void a(C4460g1 c4460g1, int i10) {
    }

    @Override
    public final void c(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).O();
            }
        }, h52);
    }

    @Override
    public final void a(Set set, C4516j1 c4516j1) {
    }

    public static void a(C4460g1 c4460g1) {
        VY vy;
        synchronized (c4460g1) {
            vy = (VY) c4460g1.f37207l.a();
            c4460g1.f37207l = vy;
        }
        vy.f45080b |= 1;
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52) {
        h52.d().T0().f45466u |= 32;
    }

    public final void d(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).J();
            }
        }, h52);
    }

    public final void e(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).L();
            }
        }, h52);
    }

    @Override
    public final void b(C4516j1 c4516j1, BitSet bitSet) {
        c4516j1.T0().f45460o = bitSet;
    }

    public final void f(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).M();
            }
        }, h52);
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, AbstractC6205Xl0 abstractC6205Xl0) {
        h52.d().T0().f45462q = abstractC6205Xl0;
    }

    @Override
    public final void a(C4460g1 c4460g1, AbstractC10330xt abstractC10330xt) {
        VY vy;
        synchronized (c4460g1) {
            vy = (VY) c4460g1.f37207l.a();
            c4460g1.f37207l = vy;
        }
        vy.f45082d = abstractC10330xt;
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, BitSet bitSet) {
        WY T02 = h52.d().T0();
        T02.getClass();
        if (!bitSet.isEmpty()) {
            T02.f45464s = bitSet;
        } else {
            T02.f45464s = null;
        }
    }

    public static void b(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        if (h52.A().d()) {
            consumer.accept(h52.A().c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(C4460g1 c4460g1, C4798y c4798y, F1 f12) {
        VY vy;
        if (!f51163c) {
            com.android.tools.r8.graph.G5 a10 = c4460g1.a(c4798y);
            if (!AbstractC8028k40.f49478a) {
                c4798y.getClass();
                ((com.android.tools.r8.graph.F0) a10).J();
                if (!c4798y.a(((com.android.tools.r8.graph.F5) a10).W()).a(c4798y, a10)) {
                    throw new AssertionError();
                }
            }
        }
        synchronized (c4460g1) {
            vy = (VY) c4460g1.f37207l.a();
            c4460g1.f37207l = vy;
        }
        vy.a(f12, c4460g1);
    }

    @Override
    public final void a(C4516j1 c4516j1, int i10) {
        c4516j1.T0().b(i10);
    }

    @Override
    public final void a(C4516j1 c4516j1, C4798y c4798y, F1 f12) {
        c4516j1.T0().a(f12, c4516j1);
    }

    @Override
    public final void a(C4516j1 c4516j1, C6249Yf c6249Yf) {
        if (!f51163c) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C4798y c4798y, C4516j1 c4516j1, AbstractC10330xt abstractC10330xt) {
        c4516j1.T0().a(c4798y, c4516j1, abstractC10330xt);
    }

    @Override
    public final void a(C4516j1 c4516j1) {
        c4516j1.T0().f45466u &= -9;
    }

    @Override
    public final void a(C4516j1 c4516j1, com.android.tools.r8.ir.optimize.O o10) {
        c4516j1.a(o10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, S7 s72) {
        h52.d().T0().f45457l = s72;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC4892Au abstractC4892Au) {
        h52.d().T0().a(abstractC4892Au);
    }

    @Override
    public final void a(C4516j1 c4516j1, AbstractC7391gE abstractC7391gE) {
        c4516j1.T0().f45458m = abstractC7391gE;
    }

    @Override
    public final void a(C4516j1 c4516j1, BitSet bitSet) {
        c4516j1.T0().f45459n = bitSet;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC6205Xl0 abstractC6205Xl0) {
        h52.d().T0().f45461p = abstractC6205Xl0;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, BitSet bitSet) {
        h52.d().T0().a(bitSet);
    }

    public static void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        if (h52.A().x()) {
            WY T02 = h52.d().T0();
            BitSet bitSet = (BitSet) T02.f45465t.clone();
            consumer.accept(bitSet);
            if (bitSet == null || bitSet.isEmpty()) {
                bitSet = null;
            }
            T02.f45465t = bitSet;
        }
    }

    @Override
    public void a(com.android.tools.r8.graph.H5 h52) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WY) obj).P();
            }
        }, h52);
    }
}
