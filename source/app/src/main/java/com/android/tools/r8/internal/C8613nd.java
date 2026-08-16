package com.android.tools.r8.internal;

import android.util.Half;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4669r3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8613nd {

    public static final C8696o40 f50994l = C8696o40.f51162b;

    public static final boolean f50995m = true;

    public final C4798y f50996a;

    public final AA f50997b;

    public final C4724u1 f50998c;

    public final C10048wA f50999d;

    public final C9614td f51000e = new C9614td();

    public final C9115qd0 f51001f;

    public final InterfaceC7446gd f51002g;

    public final C6243Yd f51003h;

    public final C5953Tc f51004i;

    public final C7890jE f51005j;

    public final List f51006k;

    public C8613nd(C4798y c4798y, C10048wA c10048wA, AA aa2, List list) {
        InterfaceC7446gd c6946dd;
        C9115qd0 c9115qd0 = new C9115qd0();
        this.f51001f = c9115qd0;
        this.f50996a = c4798y;
        this.f50998c = c4798y.b();
        this.f50997b = aa2;
        this.f50999d = c10048wA;
        this.f51003h = new C6243Yd(c4798y, c10048wA, aa2);
        if (c4798y.f().h()) {
            c6946dd = new C7279fd(c4798y.L(), c10048wA, aa2);
        } else {
            boolean z10 = AbstractC7112ed.f47727a;
            if (!z10) {
                if (!AA.f38552f && !aa2.g()) {
                    throw new AssertionError();
                }
                if (!aa2.f38556e.isEmpty()) {
                    throw new AssertionError();
                }
            }
            if (!z10 && !c4798y.E().K().e()) {
                throw new AssertionError();
            }
            c6946dd = new C6946dd();
        }
        this.f51002g = c6946dd;
        this.f51004i = C5953Tc.a(aa2);
        this.f51005j = C7890jE.a(c4798y, c9115qd0, aa2, c10048wA);
        this.f51006k = list;
        a();
    }

    public final void a() {
        this.f51001f.b(0, this.f50997b.f38555d.getType());
        this.f50997b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.H5 h52) {
        if (!f50995m && !h52.d().f37314g.D()) {
            throw new AssertionError();
        }
        C4724u1 c4724u1 = this.f50998c;
        String j02 = h52.getReference().t0().j0();
        com.android.tools.r8.graph.I2 y02 = h52.getReference().y0();
        com.android.tools.r8.graph.M2 type = this.f50997b.f38555d.getType();
        C9614td c9614td = this.f51000e;
        Objects.requireNonNull(c9614td);
        return c4724u1.a(j02, null, y02, type, new C6074Vd1(c9614td), 0);
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.this.a((com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.e(consumer, EnumC6871d70.f47286b);
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.a();
    }

    public final void d() {
        com.android.tools.r8.graph.H2 h22;
        if (!f50995m && this.f50997b.f38553b.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).q0();
            }
        }).count() > 1) {
            throw new AssertionError();
        }
        Iterator it = this.f50997b.b().iterator();
        do {
            AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
            if (!abstractC7015e0.hasNext()) {
                return;
            } else {
                h22 = (com.android.tools.r8.graph.H2) abstractC7015e0.next();
            }
        } while (!h22.q0());
        this.f50997b.f38555d.f37066b = h22.k0();
    }

    public final void e() {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this.f50997b.j()) {
            final QC b10 = C4875Al0.b(new InterfaceC6285Yx() {
                @Override
                public final void forEach(Consumer consumer) {
                    C8613nd.this.a(consumer);
                }
            });
            this.f50997b.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8613nd.a(Set.this, linkedHashSet, (com.android.tools.r8.graph.H2) obj);
                }
            });
        } else {
            this.f50997b.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC9907vK.a(((com.android.tools.r8.graph.H2) obj).R0(), Set.this);
                }
            });
        }
        com.android.tools.r8.graph.H2 h22 = this.f50997b.f38555d;
        com.android.tools.r8.graph.O2 o22 = com.android.tools.r8.graph.O2.f36673c;
        h22.f36248h = linkedHashSet.isEmpty() ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2((com.android.tools.r8.graph.M2[]) linkedHashSet.toArray(com.android.tools.r8.graph.M2.f36589h));
    }

    public final void f() {
        AA aa2 = this.f50997b;
        final C6243Yd c6243Yd = this.f51003h;
        Objects.requireNonNull(c6243Yd);
        aa2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6243Yd.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        C6243Yd c6243Yd2 = this.f51003h;
        com.android.tools.r8.graph.H2 h22 = c6243Yd2.f46048c.f38555d;
        Collection<C4460g1> values = c6243Yd2.f46050e.values();
        C4669r3 c4669r3 = h22.f36251k;
        if (!C4669r3.f37698c) {
            c4669r3.getClass();
            for (C4460g1 c4460g1 : values) {
                if (!C4669r3.f37698c) {
                    c4669r3.a(c4460g1);
                }
            }
        }
        c4669r3.f37700b.a(values);
        if (!C4669r3.f37698c) {
            c4669r3.f37700b.h();
        }
        this.f50997b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.H2) obj).F0();
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        this.f51001f.b(this.f51001f.f51828i, h22.getType());
    }

    public final void c() {
        com.android.tools.r8.graph.H2 h22;
        if (this.f50997b.f38555d.q1() && this.f50997b.f38555d.f36256p.isEmpty()) {
            Iterator it = this.f50997b.b().iterator();
            do {
                AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
                if (!abstractC7015e0.hasNext()) {
                    return;
                } else {
                    h22 = (com.android.tools.r8.graph.H2) abstractC7015e0.next();
                }
            } while (h22.f36256p.isEmpty());
            com.android.tools.r8.graph.H2 h23 = this.f50997b.f38555d;
            h23.f36255o = null;
            h23.f36256p = h22.V0();
            this.f50997b.f38555d.f(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8613nd.this.a((C4634p5) obj);
                }
            });
        }
    }

    public final void a(C9114qd c9114qd, M70 m70, C8656nr0 c8656nr0) {
        com.android.tools.r8.androidapi.f fVar;
        a(c9114qd, m70);
        if (!this.f51004i.f44509a.isEmpty()) {
            C5313Ib c5313Ib = null;
            if (this.f51004i.f44509a.size() == 1) {
                C5953Tc c5953Tc = this.f51004i;
                AA aa2 = this.f50997b;
                C4724u1 c4724u1 = this.f50998c;
                if (!C5953Tc.f44508b && c5953Tc.f44509a.size() != 1) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) AT.a(c5953Tc.f44509a);
                C4516j1 d10 = h52.d();
                if (h52.getHolder() != aa2.f38555d) {
                    com.android.tools.r8.graph.A2 reference = h52.getReference();
                    com.android.tools.r8.graph.H2 h22 = aa2.f38555d;
                    reference.getClass();
                    com.android.tools.r8.graph.A2 a10 = reference.a(h22.getType(), c4724u1);
                    d10.L0();
                    d10 = d10.a(a10, c4724u1, (Consumer) null);
                }
                this.f51000e.a(d10);
            } else {
                com.android.tools.r8.graph.A2 b10 = this.f50998c.b(this.f50997b.f38555d.getType());
                C4724u1 c4724u12 = this.f50998c;
                b10.getClass();
                this.f50999d.b(c4724u12.a(b10.f38297f, b10.f36127i, c4724u12.b("$r8$clinit$synthetic")), b10, true);
                if (this.f50996a.E().a().f40654a) {
                    fVar = this.f51004i.a(this.f50996a);
                } else {
                    int i10 = com.android.tools.r8.androidapi.f.f35602a;
                    fVar = com.android.tools.r8.androidapi.g.f35607b;
                }
                C4516j1[] c4516j1Arr = C4516j1.f37310u;
                C4516j1.a a11 = AbstractC8294li.a(b10, true).a(com.android.tools.r8.graph.L4.b(4104, true));
                C5953Tc c5953Tc2 = this.f51004i;
                c5953Tc2.getClass();
                C4516j1.a a12 = a11.a(new C5895Sc(c5953Tc2.f44509a));
                C5953Tc c5953Tc3 = this.f51004i;
                C8570nJ E10 = this.f50996a.E();
                c5953Tc3.getClass();
                if (E10.f50697l instanceof ClassFileConsumer) {
                    for (com.android.tools.r8.graph.H5 h53 : c5953Tc3.f44509a) {
                        if (h53.d().a1()) {
                            c5313Ib = (C5313Ib) C40.b(c5313Ib, h53.d().P0());
                        }
                    }
                }
                a12.f37339k = c5313Ib;
                a12.f37340l = fVar;
                a12.f37341m = fVar;
                C4516j1 a13 = a12.a();
                this.f51000e.a(a13);
                if (!f50995m && !(a13.Q0() instanceof C5895Sc)) {
                    throw new AssertionError();
                }
                c8656nr0.f51094b.add(new com.android.tools.r8.graph.H5(this.f50997b.f38555d, a13));
            }
        }
        this.f50997b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.this.c((com.android.tools.r8.graph.H2) obj);
            }
        });
        this.f51005j.a();
    }

    public static void b(com.android.tools.r8.graph.H2 h22) {
        h22.b0().f36638b.b();
    }

    public final void b() {
        C9239rK b10 = this.f50997b.b();
        V60 v60 = new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).l1();
            }
        };
        Iterator it = b10.iterator();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (!v60.apply(it.next())) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 != -1) {
            this.f50997b.f38555d.getAccessFlags().f37197c &= Half.LOWEST_VALUE;
        }
        C9239rK b11 = this.f50997b.b();
        V60 v602 = new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).p1();
            }
        };
        Iterator it2 = b11.iterator();
        while (true) {
            if (!it2.hasNext()) {
                i10 = -1;
                break;
            } else if (!v602.apply(it2.next())) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 != -1) {
            this.f50997b.f38555d.getAccessFlags().a();
        }
    }

    public static void b(final com.android.tools.r8.graph.M5 m52, com.android.tools.r8.graph.H2 h22) {
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.a(com.android.tools.r8.graph.M5.this, (C4460g1) obj);
            }
        });
        List<C4460g1> k12 = h22.k1();
        h22.f36251k.f37700b.a();
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10;
        C4516j1 d11 = h52.d();
        if (d11.f1()) {
            this.f50999d.a(h52.getReference(), this.f50998c.b(this.f50997b.f38555d.getType()), false);
            return;
        }
        if (d11.j1()) {
            return;
        }
        com.android.tools.r8.graph.A2 a10 = h52.getReference().a(this.f50997b.f38555d.getType(), this.f50998c);
        if (!this.f51000e.a(a10)) {
            a10 = b(h52);
        }
        C9614td c9614td = this.f51000e;
        if (a10 != h52.getReference()) {
            C4724u1 c4724u1 = this.f50998c;
            d11.L0();
            d10 = d11.a(a10, c4724u1, (Consumer) null);
        } else {
            d10 = h52.d();
        }
        c9614td.a(d10);
        if (d11.getReference() != a10) {
            this.f50999d.a(d11.getReference(), a10, false);
        }
    }

    public final void a(final C9114qd c9114qd, final M70 m70) {
        this.f51005j.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.this.a(c9114qd, m70, (C7725iE) obj);
            }
        });
    }

    public final void a(C9114qd c9114qd, M70 m70, C7725iE c7725iE) {
        c7725iE.a(c9114qd, m70, this.f51000e);
    }

    public final void a(final M70 m70, final Consumer consumer) {
        this.f51006k.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.this.a(m70, consumer, (C9675tx0) obj);
            }
        });
        this.f50997b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(M70 m70, Consumer consumer, C9675tx0 c9675tx0) {
        c9675tx0.a(m70, this.f51000e, this.f50999d, this.f51001f, consumer);
    }

    public final boolean a(C4634p5 c4634p5) {
        return c4634p5.a() == this.f50997b.f38555d.getType();
    }

    public final void a(final Consumer consumer) {
        this.f50997b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(((com.android.tools.r8.graph.H2) obj).getType());
            }
        });
    }

    public static void a(Set set, Set set2, com.android.tools.r8.graph.H2 h22) {
        Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            if (!set.contains(next)) {
                set2.add(next);
            }
        }
    }

    public final void a(final com.android.tools.r8.graph.M5 m52) {
        this.f50997b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.b(com.android.tools.r8.graph.M5.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
        this.f50997b.f38555d.a(this.f51002g.a());
    }

    public static void a(com.android.tools.r8.graph.M5 m52, C4460g1 c4460g1) {
        m52.f36610f.add(c4460g1.getReference());
    }

    public final void a(C9114qd c9114qd, M70 m70, final com.android.tools.r8.graph.M5 m52, C8656nr0 c8656nr0, Consumer consumer) {
        b();
        c();
        d();
        e();
        if (this.f50997b.d()) {
            if (!f50995m && !this.f50996a.f().i()) {
                throw new AssertionError();
            }
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a a10 = new C4460g1.a(true).a(this.f50997b.a());
            a10.f37213c = C4537k3.g(4113);
            C4798y c4798y = this.f50996a;
            a10.f37218h = c4798y.f38405T;
            if (!c4798y.E().a().e()) {
                a10.f37223m = false;
            }
            C4460g1 a11 = a10.a();
            f50994l.a(a11, this.f50996a.M(), new C10189x10(0L, this.f50997b.f38553b.size() - 1));
            this.f51002g.a(a11);
        }
        a(m52);
        f();
        a(m70, consumer);
        a(c9114qd, m70, c8656nr0);
        this.f51000e.a(this.f50997b.f38555d);
        this.f50997b.f38555d.D0();
        this.f50997b.f38555d.k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.G5) obj).t();
            }
        });
        this.f50997b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8613nd.a(com.android.tools.r8.graph.M5.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.M5 m52, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 type = h22.getType();
        m52.f36608d.add(type);
        m52.f36609e.add(type);
    }
}
