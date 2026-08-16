package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Predicate;

public final class J9 {

    public static final boolean f41321i = true;

    public final C4798y f41322a;

    public final com.android.tools.r8.graph.G f41323b;

    public final O8 f41324c;

    public final L9 f41325d;

    public final C4724u1 f41326e;

    public final com.android.tools.r8.graph.H5 f41327f;

    public final ArrayDeque f41328g = new ArrayDeque();

    public final Set f41329h;

    public J9(C4798y c4798y, com.android.tools.r8.graph.G g10, O8 o82, L9 l92, com.android.tools.r8.graph.H5 h52) {
        this.f41322a = c4798y;
        this.f41323b = g10;
        this.f41324c = o82;
        this.f41325d = l92;
        this.f41326e = c4798y.b();
        this.f41327f = h52;
        g10.getClass();
        Set c10 = AbstractC5513Ll0.c();
        for (C5023Db c5023Db : g10.I0()) {
            c10.add(c5023Db.f39556a);
            c10.add(c5023Db.f39557b);
        }
        this.f41329h = c10;
    }

    public final boolean a(W9 w92) {
        if (!(w92 instanceof C4965Cb) && !w92.S()) {
            return false;
        }
        for (int size = this.f41323b.E0().size() - 1; size >= 0; size--) {
            W9 w93 = (W9) this.f41323b.f36305h.get(size);
            if (w93 == w92) {
                return true;
            }
            w93.getClass();
            if (!(w93 instanceof C5541Ma) && !(w93 instanceof C8103ka)) {
                return false;
            }
        }
        throw new C5417Jv0("Instruction " + ((Object) w92) + " should be in instructions");
    }

    public final com.android.tools.r8.graph.H a(C5023Db c5023Db, Map map) {
        List<C8103ka> list = c5023Db.f39559d;
        for (int i10 = 0; i10 < list.size(); i10++) {
            C8103ka c8103ka = list.get(i10);
            com.android.tools.r8.graph.M2 m22 = c5023Db.f39558c.get(i10);
            G9 g92 = (G9) map.get(c8103ka);
            if (g92 == null) {
                return com.android.tools.r8.graph.I.a(this.f41327f, c5023Db, "No frame for target catch range target", this.f41322a);
            }
            YB yb2 = new YB(Arrays.asList(InterfaceC8008jy.b(m22)));
            yb2.f45951b = true;
            AbstractC6376a9 a10 = this.f41324c.e().a(yb2, g92.f40405d);
            if (a10 instanceof C6543b9) {
                return com.android.tools.r8.graph.I.a(this.f41327f, c5023Db, a10.a().f46711a, this.f41322a);
            }
        }
        for (com.android.tools.r8.graph.M2 m23 : c5023Db.f39558c) {
            if (!this.f41324c.e().b(m23, this.f41326e.f38173v3)) {
                return com.android.tools.r8.graph.I.a(this.f41327f, c5023Db, "Could not assign " + m23.D0() + " to java.lang.Throwable", this.f41322a);
            }
        }
        return null;
    }

    public final int a() {
        AbstractC6333Zs0 c6276Ys0;
        com.android.tools.r8.graph.H h10;
        int i10;
        AbstractC6333Zs0 c6276Ys02;
        G9 g92;
        AbstractC6333Zs0 c6162Ws0;
        S60 b10;
        C8570nJ E10 = this.f41322a.E();
        boolean z10 = E10.f50599F1.f50843S0;
        if (!z10) {
            z10 = E10.f50697l instanceof ClassFileConsumer;
        }
        if (!z10 || this.f41322a.E().f50599F1.f50845T0) {
            return 2;
        }
        C4516j1 d10 = this.f41327f.d();
        if (d10.a1() && d10.P0().b(C5313Ib.f41137h)) {
            return 2;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayList arrayList = new ArrayList();
        boolean z11 = !this.f41323b.I0().isEmpty();
        Iterator<W9> it = this.f41323b.E0().iterator();
        while (true) {
            if (it.hasNext()) {
                W9 next = it.next();
                if (next.K()) {
                    G9 g10 = next.g();
                    if (!arrayList.isEmpty()) {
                        int size = arrayList.size();
                        int i11 = 0;
                        while (i11 < size) {
                            Object obj = arrayList.get(i11);
                            i11++;
                            C8103ka c8103ka = (C8103ka) obj;
                            if (identityHashMap.containsKey(c8103ka)) {
                                com.android.tools.r8.graph.H5 h52 = this.f41327f;
                                C4798y c4798y = this.f41322a;
                                StringBuilder sb2 = new StringBuilder("Multiple frames for label");
                                if (c4798y.m()) {
                                    sb2.append(" In later version of R8, the method may be assumed not reachable.");
                                }
                                c6276Ys0 = new C6162Ws0(new com.android.tools.r8.graph.H(h52, sb2.toString()));
                            } else {
                                identityHashMap.put(c8103ka, g10);
                            }
                        }
                    } else if (next != ((W9) this.f41323b.f36305h.get(0))) {
                        com.android.tools.r8.graph.H5 h53 = this.f41327f;
                        C4798y c4798y2 = this.f41322a;
                        StringBuilder sb3 = new StringBuilder("Unexpected stack map frame without target");
                        if (c4798y2.m()) {
                            sb3.append(" In later version of R8, the method may be assumed not reachable.");
                        }
                        c6276Ys0 = new C6162Ws0(new com.android.tools.r8.graph.H(h53, sb3.toString()));
                    }
                }
                if (!(next instanceof C5541Ma)) {
                    if (next instanceof C8103ka) {
                        arrayList.add(next.m());
                    } else {
                        arrayList.clear();
                    }
                    if (!z11) {
                        z11 = next.Q() && !a(next);
                    }
                }
            } else if (z11 && identityHashMap.isEmpty()) {
                com.android.tools.r8.graph.H5 h54 = this.f41327f;
                C4798y c4798y3 = this.f41322a;
                StringBuilder sb4 = new StringBuilder("Expected stack map table for method with non-linear control flow.");
                if (c4798y3.m()) {
                    sb4.append(" In later version of R8, the method may be assumed not reachable.");
                }
                c6276Ys0 = new C6162Ws0(new com.android.tools.r8.graph.H(h54, sb4.toString()));
            } else {
                c6276Ys0 = new C6276Ys0(identityHashMap);
            }
        }
        if (c6276Ys0.c()) {
            a(c6276Ys0);
            return 3;
        }
        final Map map = (Map) c6276Ys0.b().e();
        Iterator<C5023Db> it2 = this.f41323b.I0().iterator();
        while (true) {
            if (!it2.hasNext()) {
                h10 = null;
                break;
            }
            h10 = a(it2.next(), map);
            if (h10 != null) {
                break;
            }
        }
        if (h10 != null) {
            this.f41325d.a(h10);
            return 3;
        }
        H9 c8121kg = new C8121kg();
        com.android.tools.r8.graph.A2 reference = this.f41327f.getReference();
        if (this.f41327f.d().w0()) {
            i10 = 0;
        } else {
            if (reference.b(this.f41322a.b())) {
                int i12 = InterfaceC8008jy.f49436a;
                b10 = C7501gv0.f48381c;
            } else {
                b10 = InterfaceC8008jy.b(reference.s0());
            }
            c8121kg = c8121kg.a(0, b10, this.f41324c);
            i10 = 1;
        }
        Iterator<com.android.tools.r8.graph.M2> it3 = reference.x0().iterator();
        while (it3.hasNext()) {
            com.android.tools.r8.graph.M2 next2 = it3.next();
            c8121kg = c8121kg.a(i10, InterfaceC8008jy.a(next2), this.f41324c);
            i10 += next2.B0();
        }
        if (c8121kg instanceof C7667hv) {
            c6276Ys02 = new C6162Ws0(com.android.tools.r8.graph.I.a(this.f41327f, 0, (W9) this.f41323b.f36305h.get(0), c8121kg.e().f48735c, this.f41322a));
        } else {
            c6276Ys02 = new C6276Ys0(c8121kg);
        }
        if (c6276Ys02.c()) {
            a(c6276Ys02);
            return 3;
        }
        H9 h92 = (H9) c6276Ys02.b().e();
        int i13 = 0;
        for (int i14 = 0; i14 < this.f41323b.E0().size(); i14++) {
            W9 w92 = (W9) this.f41323b.f36305h.get(i14);
            if (!f41321i) {
                h92.getClass();
                if (h92 instanceof C7667hv) {
                    throw new AssertionError();
                }
            }
            w92.getClass();
            boolean z12 = w92 instanceof C8103ka;
            if (z12) {
                a(w92.m());
            } else if (this.f41322a.E().f50692j0 || w92.z()) {
                Iterator it4 = this.f41328g.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    Iterator<C8103ka> it5 = ((C5023Db) it4.next()).f39559d.iterator();
                    while (it5.hasNext()) {
                        G9 g93 = (G9) map.get(it5.next());
                        if (g93 == null) {
                            h92 = new C7667hv("No frame for target catch range target");
                            break;
                        }
                        h92 = h92.b(this.f41324c, g93);
                    }
                }
                h92.getClass();
                if (h92 instanceof C7667hv) {
                    this.f41325d.a(com.android.tools.r8.graph.I.a(this.f41327f, i13, w92, h92.e().f48735c, this.f41322a));
                    return 3;
                }
            }
            this.f41325d.a(w92, h92);
            H9 a10 = w92.a(h92, this.f41322a, this.f41324c);
            if (w92.R()) {
                int i15 = i14 + 1;
                final W9 w93 = i15 < this.f41323b.E0().size() ? (W9) this.f41323b.f36305h.get(i15) : null;
                a10 = (H9) w92.a(new BiFunction() {
                    @Override
                    public final Object apply(Object obj2, Object obj3) {
                        return J9.this.a(w93, map, (W9) obj2, (H9) obj3);
                    }
                }, w93, a10).b().e();
            }
            if (!w92.Q()) {
                c6162Ws0 = new C6276Ys0(a10);
            } else if (i14 == this.f41323b.E0().size() - 1) {
                c6162Ws0 = new C6276Ys0(C9038q7.f51720c);
            } else {
                if (i14 == this.f41323b.E0().size() - 2) {
                    W9 w94 = (W9) this.f41323b.f36305h.get(i14 + 1);
                    w94.getClass();
                    if (w94 instanceof C8103ka) {
                        c6162Ws0 = new C6276Ys0(C9038q7.f51720c);
                    }
                }
                if (w92.l().V()) {
                    c6162Ws0 = new C6276Ys0(a10);
                } else {
                    W9 w95 = (W9) this.f41323b.f36305h.get(i14 + 1);
                    if (w95.K()) {
                        g92 = w95.g();
                    } else {
                        g92 = w95 instanceof C8103ka ? (G9) map.get(w95.m()) : null;
                    }
                    if (g92 != null) {
                        G9 X10 = g92.X();
                        if (!G9.f40403f && !(X10.f40404c instanceof C10564zF)) {
                            throw new AssertionError();
                        }
                        C10564zF c10564zF = (C10564zF) X10.f40404c;
                        ArrayDeque W10 = X10.W();
                        Iterator it6 = X10.f40405d.iterator();
                        int i16 = 0;
                        while (it6.hasNext()) {
                            i16 = ((S60) it6.next()).v() + i16;
                        }
                        c6162Ws0 = new C6276Ys0(new C8121kg(c10564zF, W10, i16));
                    } else {
                        c6162Ws0 = new C6162Ws0(com.android.tools.r8.graph.I.a(this.f41327f, i13 + 1, w95, "Expected frame instruction", this.f41322a));
                    }
                }
            }
            if (c6162Ws0.d()) {
                h92 = (H9) c6162Ws0.b().e();
                h92.getClass();
                if (h92 instanceof C7667hv) {
                    this.f41325d.a(com.android.tools.r8.graph.I.a(this.f41327f, i13, w92, h92.e().f48735c, this.f41322a));
                    return 3;
                }
                if (!z12 && !w92.K() && !(w92 instanceof C5541Ma)) {
                    i13++;
                }
            } else {
                a(c6162Ws0);
                return 3;
            }
        }
        return 4;
    }

    public final AbstractC6333Zs0 a(W9 w92, Map map, W9 w93, H9 h92) {
        if (w93 != w92) {
            if (!f41321i) {
                w93.getClass();
                if (!(w93 instanceof C8103ka)) {
                    throw new AssertionError();
                }
            }
            G9 g92 = (G9) map.get(w93.m());
            if (g92 != null) {
                h92 = h92.b(this.f41324c, g92).c(this.f41324c, g92);
            } else {
                h92 = new C7667hv("No destination frame");
            }
        }
        return new C6276Ys0(h92);
    }

    public final void a(AbstractC6333Zs0 abstractC6333Zs0) {
        if (!f41321i && !abstractC6333Zs0.c()) {
            throw new AssertionError();
        }
        this.f41325d.a((com.android.tools.r8.graph.H) abstractC6333Zs0.a().e());
    }

    public final void a(final C8103ka c8103ka) {
        if (this.f41329h.contains(c8103ka)) {
            for (C5023Db c5023Db : this.f41323b.I0()) {
                if (c5023Db.f39556a == c8103ka) {
                    this.f41328g.add(c5023Db);
                }
            }
            this.f41328g.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return J9.a(C8103ka.this, (C5023Db) obj);
                }
            });
        }
    }

    public static boolean a(C8103ka c8103ka, C5023Db c5023Db) {
        return c5023Db.f39557b == c8103ka;
    }
}
