package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11261j;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8195l40 extends AbstractC8028k40 {

    public static final boolean f49877f = true;

    public final C11261j f49878b;

    public final IdentityHashMap f49879c;

    public final IdentityHashMap f49880d;

    public final IdentityHashMap f49881e;

    public C8195l40() {
        boolean z10 = C11245i.f57385J;
        this.f49878b = new C11261j();
        this.f49879c = new IdentityHashMap();
        this.f49880d = new IdentityHashMap();
        this.f49881e = new IdentityHashMap();
    }

    public final synchronized VY a(C4460g1 c4460g1) {
        VY vy = (VY) this.f49879c.get(c4460g1);
        if (vy != null) {
            return vy;
        }
        VY vy2 = (VY) c4460g1.f37207l.a();
        vy2.getClass();
        VY vy3 = new VY();
        vy3.f45079a = vy2.f45079a;
        vy3.f45080b = vy2.f45080b;
        vy3.f45081c = vy2.f45081c;
        vy3.f45082d = vy2.f45082d;
        this.f49879c.put(c4460g1, vy3);
        return vy3;
    }

    @Override
    public final synchronized void b(com.android.tools.r8.graph.H5 h52) {
        e(h52.d()).f45466u |= 32;
    }

    @Override
    public final synchronized void c(com.android.tools.r8.graph.H5 h52) {
        e(h52.d()).f45454i = C8000jv0.f49417a;
    }

    @Override
    public final synchronized void d(C4516j1 c4516j1) {
        e(c4516j1).f45466u |= 2;
    }

    public final synchronized WY e(C4516j1 c4516j1) {
        WY wy = (WY) this.f49880d.get(c4516j1);
        if (wy != null) {
            return wy;
        }
        c4516j1.L0();
        WY wy2 = (WY) c4516j1.f37320m.a();
        wy2.getClass();
        WY wy3 = new WY(wy2);
        this.f49880d.put(c4516j1, wy3);
        return wy3;
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, BitSet bitSet) {
        WY e10 = e(h52.d());
        if (!bitSet.isEmpty()) {
            e10.f45464s = bitSet;
        } else {
            e10.f45464s = null;
        }
    }

    public final void c() {
        Iterator it = this.f49880d.entrySet().iterator();
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8195l40.a((Map.Entry) obj);
            }
        };
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                it.remove();
            }
        }
        Iterator it2 = this.f49881e.entrySet().iterator();
        Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8195l40.b((Map.Entry) obj);
            }
        };
        while (it2.hasNext()) {
            if (predicate2.test(it2.next())) {
                it2.remove();
            }
        }
        this.f49879c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C4460g1) obj).a((VY) obj2);
            }
        });
        this.f49879c.clear();
        this.f49880d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C4516j1) obj).a((WY) obj2);
            }
        });
        this.f49880d.clear();
        this.f49881e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C4516j1) obj).a((com.android.tools.r8.ir.optimize.O) obj2);
            }
        });
        this.f49881e.clear();
    }

    @Override
    public final synchronized void b(com.android.tools.r8.graph.H5 h52, AbstractC6205Xl0 abstractC6205Xl0) {
        e(h52.d()).f45462q = abstractC6205Xl0;
    }

    public static boolean b(Map.Entry entry) {
        return ((C4516j1) entry.getKey()).f37327t;
    }

    @Override
    public final synchronized void a(com.android.tools.r8.graph.H5 h52, S7 s72) {
        e(h52.d()).f45457l = s72;
    }

    public final void b() {
        boolean z10 = f49877f;
        if (!z10 && !this.f49878b.f57437a.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f49879c.isEmpty()) {
            throw new AssertionError((Object) C10656zq0.a(", ", this.f49879c.o()));
        }
        if (!z10 && !this.f49880d.isEmpty()) {
            throw new AssertionError((Object) C10656zq0.a(", ", this.f49880d.o()));
        }
        if (!z10 && !this.f49881e.isEmpty()) {
            throw new AssertionError((Object) C10656zq0.a(", ", this.f49881e.o()));
        }
    }

    @Override
    public final synchronized void a(com.android.tools.r8.graph.H5 h52, InterfaceC6297Zc interfaceC6297Zc) {
        e(h52.d()).f45452g = interfaceC6297Zc;
    }

    @Override
    public final synchronized void a(com.android.tools.r8.graph.H5 h52, AbstractC4892Au abstractC4892Au) {
        e(h52.d()).a(abstractC4892Au);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC6205Xl0 abstractC6205Xl0) {
        e(h52.d()).f45461p = abstractC6205Xl0;
    }

    @Override
    public final synchronized void a(com.android.tools.r8.graph.H5 h52, BitSet bitSet) {
        e(h52.d()).a(bitSet);
    }

    @Override
    public final synchronized void a(com.android.tools.r8.graph.H5 h52) {
        e(h52.d()).f45467v = 3;
    }

    @Override
    public final synchronized void b(C4516j1 c4516j1) {
        e(c4516j1).f45466u |= 4;
    }

    @Override
    public final synchronized void c(C4516j1 c4516j1) {
        e(c4516j1).f45466u |= 16;
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f49878b);
    }

    @Override
    public final synchronized void b(C4516j1 c4516j1, BitSet bitSet) {
        e(c4516j1).f45460o = bitSet;
    }

    public static boolean a(Map.Entry entry) {
        return ((C4516j1) entry.getKey()).f37327t;
    }

    @Override
    public final void a(C4460g1 c4460g1, AbstractC10330xt abstractC10330xt) {
        a(c4460g1).f45082d = abstractC10330xt;
    }

    @Override
    public final void a(C4460g1 c4460g1, int i10) {
        VY a10 = a(c4460g1);
        a10.f45081c = i10 | a10.f45081c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(C4460g1 c4460g1, C4798y c4798y, F1 f12) {
        boolean z10 = f49877f;
        if (!z10) {
            C4594n3 c4594n3 = ((C11245i) c4798y.f()).f57404s;
            if (!c4594n3.f37507a.containsKey(c4460g1.getReference())) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            C4594n3 c4594n32 = ((C11245i) c4798y.f()).f57404s;
            if (((C4613o3) c4594n32.f37507a.get(c4460g1.getReference())).d()) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            com.android.tools.r8.graph.G5 a10 = c4460g1.a(c4798y);
            if (!AbstractC8028k40.f49478a) {
                c4798y.getClass();
                ((com.android.tools.r8.graph.F0) a10).J();
                if (!c4798y.a(((com.android.tools.r8.graph.F5) a10).W()).a(c4798y, a10)) {
                    throw new AssertionError();
                }
            }
        }
        a(c4460g1).a(f12, c4460g1);
    }

    @Override
    public final synchronized void a(Set set, C4516j1 c4516j1) {
        WY e10 = e(c4516j1);
        if (set.isEmpty()) {
            e10.f45448c = C5160Fj.f40294c;
        } else {
            e10.f45448c = set;
        }
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1, int i10) {
        e(c4516j1).b(i10);
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1, C4798y c4798y, F1 f12) {
        com.android.tools.r8.shaking.F1 a10;
        try {
            if (!f49877f) {
                if (!C4516j1.f37313x && !c4516j1.getReference().f38297f.I0()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
                c4798y.getClass();
                com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(c4798y.g(reference.f38297f));
                com.android.tools.r8.graph.H5 h52 = a11 != null ? new com.android.tools.r8.graph.H5(a11, c4516j1) : null;
                if (!AbstractC8028k40.f49478a) {
                    if (h52.J()) {
                        a10 = c4798y.a(h52.W());
                    } else {
                        a10 = c4798y.a(h52.H());
                    }
                    if (!a10.a(c4798y, h52)) {
                        throw new AssertionError();
                    }
                }
            }
            e(c4516j1).a(f12, c4516j1);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void a(C4516j1 c4516j1, C6249Yf c6249Yf) {
        e(c4516j1).f45450e = c6249Yf;
    }

    @Override
    public final synchronized void a(C4798y c4798y, C4516j1 c4516j1, AbstractC10330xt abstractC10330xt) {
        e(c4516j1).a(c4798y, c4516j1, abstractC10330xt);
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1) {
        e(c4516j1).f45466u &= -9;
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1, com.android.tools.r8.ir.optimize.O o10) {
        this.f49881e.put(c4516j1, o10);
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1, AbstractC7391gE abstractC7391gE) {
        e(c4516j1).f45458m = abstractC7391gE;
    }

    @Override
    public final synchronized void a(C4516j1 c4516j1, BitSet bitSet) {
        e(c4516j1).f45459n = bitSet;
    }
}
