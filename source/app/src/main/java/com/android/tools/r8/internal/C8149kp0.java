package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C8149kp0 extends AbstractC5971Tj {

    public static final boolean f49767i = true;

    public final EJ f49768f;

    public final C9151qp0 f49769g;

    public final C8650np0 f49770h;

    public C8149kp0(C8650np0 c8650np0, EJ ej2, C9151qp0 c9151qp0) {
        this.f49770h = c8650np0;
        this.f49768f = ej2;
        this.f49769g = c9151qp0;
    }

    public static void a(C10340xw0 c10340xw0) {
    }

    public static void b(C10340xw0 c10340xw0, C8984pp0 c8984pp0, Consumer consumer, Consumer consumer2) {
        if (c8984pp0.d()) {
            return;
        }
        if (!f49767i && !c8984pp0.f51633e.contains(c10340xw0)) {
            throw new AssertionError();
        }
        boolean a10 = a(c10340xw0, c8984pp0, consumer, consumer2);
        Map map = c8984pp0.f51631c;
        Iterable iterable = (Iterable) map.getOrDefault(c10340xw0, Collections.EMPTY_SET);
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b(iterable);
        boolean z10 = false;
        while (c6286Yx0.b()) {
            C10340xw0 c10340xw02 = (C10340xw0) c6286Yx0.c();
            z10 |= c8984pp0.f51632d.contains(c10340xw02);
            if (c10340xw02.j()) {
                consumer2.accept(c10340xw02);
            }
            c6286Yx0.b((Iterable) map.getOrDefault(c10340xw02, Collections.EMPTY_SET));
        }
        if (z10 || a10) {
            Iterator it = c8984pp0.f51632d.iterator();
            while (it.hasNext()) {
                consumer2.accept((C10340xw0) it.next());
            }
        }
    }

    public static void c(BiConsumer biConsumer, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C4941Bp0());
    }

    public static void d(BiConsumer biConsumer, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C4941Bp0());
    }

    public static void e(BiConsumer biConsumer, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C4941Bp0());
    }

    public static void f(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C5057Dp0(abstractC10561zE));
    }

    public static void g(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C5231Gp0(abstractC10561zE.e0()));
    }

    public static void h(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static void i(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static void j(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static boolean a(C10340xw0 c10340xw0, C8984pp0 c8984pp0, Consumer consumer, Consumer consumer2) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c10340xw0);
        boolean z10 = false;
        boolean z11 = false;
        while (c6286Yx0.b()) {
            C10340xw0 c10340xw02 = (C10340xw0) c6286Yx0.c();
            z10 |= c8984pp0.f51632d.contains(c10340xw02);
            Set set = (Set) c8984pp0.f51630b.getOrDefault(c10340xw02, Collections.EMPTY_SET);
            c6286Yx0.b((Iterable) set);
            if (set.size() != 1 || c10340xw02.j()) {
                if (!z11) {
                    consumer.accept(c10340xw02);
                    z11 = true;
                } else {
                    consumer2.accept(c10340xw02);
                }
            }
        }
        return z10;
    }

    public static void c(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static void d(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static void e(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C5057Dp0(abstractC10561zE));
    }

    @Override
    public final C6276Ys0 a(C5855Rj c5855Rj, final List list) {
        final C8483mp0 c8483mp0 = (C8483mp0) c5855Rj.f43973d;
        final C7447gd0 c7447gd0 = new C7447gd0(16);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C5855Rj c5855Rj2 = (C5855Rj) it.next();
            C8483mp0 c8483mp02 = (C8483mp0) c5855Rj2.f43973d;
            c8483mp02.f50430a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8149kp0.a(AbstractC10188x1.this, c8483mp0, list, (C10340xw0) obj, (AbstractC5289Hp0) obj2);
                }
            });
            if (c5855Rj2.f43693b == 2) {
                c8483mp02.f50432c = true;
            }
        }
        C6298Zc0 c6298Zc0 = new C6298Zc0(((C6947dd0) c7447gd0.i()).f47437b);
        while (c6298Zc0.hasNext()) {
            InterfaceC7614hd0 interfaceC7614hd0 = (InterfaceC7614hd0) c6298Zc0.next();
            boolean z10 = f49767i;
            if (!z10 && interfaceC7614hd0.getIntValue() > list.size()) {
                throw new AssertionError();
            }
            if (interfaceC7614hd0.getIntValue() < list.size()) {
                C5115Ep0 c5115Ep0 = new C5115Ep0();
                AbstractC5289Hp0 abstractC5289Hp0 = (AbstractC5289Hp0) c8483mp0.f50431b.get(interfaceC7614hd0.getKey());
                if (!z10 && abstractC5289Hp0 == null) {
                    throw new AssertionError();
                }
                c5115Ep0.f40881b.add(abstractC5289Hp0);
                abstractC5289Hp0.f40880a.add(c5115Ep0);
                c5115Ep0.f40881b.add(abstractC5289Hp0);
            }
        }
        if (c8483mp0.f50432c) {
            c8483mp0.f50430a.replaceAll(new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C8149kp0.a((C10340xw0) obj, (AbstractC5289Hp0) obj2);
                }
            });
        }
        return new C6276Ys0(c8483mp0);
    }

    public final void b(Map map, Map map2, C10340xw0 c10340xw0, AbstractC5289Hp0 abstractC5289Hp0) {
        a(map, map2, c10340xw0, abstractC5289Hp0);
    }

    public final void b(final AbstractC10561zE abstractC10561zE, C8984pp0 c8984pp0, final BiConsumer biConsumer) {
        if (abstractC10561zE.c2()) {
            C10340xw0 d10 = abstractC10561zE.d();
            if (!f49767i && d10 == null) {
                throw new AssertionError();
            }
            biConsumer.accept(d10, new C4999Cp0(abstractC10561zE.w0()));
            return;
        }
        if (abstractC10561zE.Q1()) {
            WJ f02 = abstractC10561zE.f0();
            C10340xw0 C22 = f02.C2();
            C5752Pp0 c5752Pp0 = this.f49770h.f51088e;
            c5752Pp0.getClass();
            if (abstractC10561zE.O1()) {
                com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
                if (c5752Pp0.f43386a.f38174v4.f37669u.contains(B22) || c5752Pp0.f43386a.f38182w4.f37669u.contains(B22)) {
                    final C10319xp0 c10319xp0 = new C10319xp0(abstractC10561zE.c0());
                    String a10 = this.f49770h.f51088e.a(abstractC10561zE);
                    c10319xp0.f53849g = a10;
                    if (a10 == null) {
                        C5752Pp0 c5752Pp02 = this.f49770h.f51088e;
                        c5752Pp02.getClass();
                        if (abstractC10561zE.P1()) {
                            com.android.tools.r8.graph.A2 B23 = abstractC10561zE.e0().B2();
                            C4724u1 c4724u1 = c5752Pp02.f43386a;
                            if ((B23 == c4724u1.f38174v4.f37665q || B23 == c4724u1.f38182w4.f37665q) && f02.z2().O()) {
                                c10319xp0.f53850h = f02.z2();
                            }
                        }
                    }
                    if (f02.f54321f.size() == 2) {
                        C10340xw0 a11 = f02.a(1);
                        if (this.f49770h.f51088e.a(a11)) {
                            a(a11, abstractC10561zE, c10319xp0, c8984pp0, biConsumer);
                        }
                    }
                    b(C22, c8984pp0, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            BiConsumer.this.accept((C10340xw0) obj, c10319xp0);
                        }
                    }, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C8149kp0.i(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                        }
                    });
                    return;
                }
            }
            if (this.f49770h.f51088e.b(abstractC10561zE)) {
                final C9818up0 c9818up0 = new C9818up0(abstractC10561zE.k0());
                String a12 = this.f49770h.f51088e.a(abstractC10561zE);
                c9818up0.f52957g = a12;
                C10340xw0 z22 = f02.z2();
                if (a12 == null) {
                    C5752Pp0 c5752Pp03 = this.f49770h.f51088e;
                    c5752Pp03.getClass();
                    if (abstractC10561zE.P1()) {
                        com.android.tools.r8.graph.A2 B24 = abstractC10561zE.e0().B2();
                        C4724u1 c4724u12 = c5752Pp03.f43386a;
                        if ((B24 == c4724u12.f38174v4.f37660l || B24 == c4724u12.f38182w4.f37660l) && z22.O()) {
                            c9818up0.f52958h = z22;
                        }
                    }
                }
                if (this.f49770h.f51088e.a(z22.i())) {
                    a(z22, abstractC10561zE, c9818up0, c8984pp0, biConsumer);
                }
                b(C22, c8984pp0, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        BiConsumer.this.accept((C10340xw0) obj, c9818up0);
                    }
                }, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8149kp0.e(BiConsumer.this, (C10340xw0) obj);
                    }
                });
                return;
            }
            if (this.f49770h.f51088e.a(abstractC10561zE, C22)) {
                b(C22, c8984pp0, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8149kp0.a(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                    }
                }, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8149kp0.b(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                    }
                });
                return;
            }
            C5752Pp0 c5752Pp04 = this.f49770h.f51088e;
            c5752Pp04.getClass();
            if (abstractC10561zE.Q1()) {
                com.android.tools.r8.graph.A2 B25 = abstractC10561zE.f0().B2();
                C4724u1 c4724u13 = c5752Pp04.f43386a;
                if (c4724u13.f38174v4.f37661m == B25 || c4724u13.f38182w4.f37661m == B25) {
                    b(C22, c8984pp0, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C8149kp0.c(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                        }
                    }, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C8149kp0.d(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                        }
                    });
                    return;
                }
            }
            b(C22, c8984pp0, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.e(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.f(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
                }
            });
            return;
        }
        boolean z10 = f49767i;
        if (!z10 && !abstractC10561zE.R1()) {
            throw new AssertionError();
        }
        C7405gK i02 = abstractC10561zE.i0();
        if (!z10 && i02.B2() != this.f49770h.f52646a.b().f37852E4.f37359k) {
            throw new AssertionError();
        }
        b(i02.W0(), c8984pp0, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8149kp0.g(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8149kp0.h(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
            }
        });
    }

    @Override
    public final AbstractC6333Zs0 a(C5855Rj c5855Rj, Function function) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        W5 w52 = (W5) c5855Rj.f43692a;
        C8984pp0 b10 = this.f49769g.b(w52, (C8984pp0) this.f49768f.c(w52));
        b10.getClass();
        for (C7201f60 c7201f60 : w52.s()) {
            if (b10.f51633e.contains(c7201f60) && a(c7201f60, b10, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.a((C10340xw0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.this.a(linkedHashMap, identityHashMap, (C10340xw0) obj);
                }
            })) {
                a(linkedHashMap, identityHashMap, c7201f60, new C9985vp0());
            }
        }
        Y5 it = w52.l().iterator();
        while (it.hasNext()) {
            AbstractC10561zE next = it.next();
            b10 = this.f49769g.a(next, b10);
            b10.getClass();
            a(next, b10, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8149kp0.this.b(linkedHashMap, identityHashMap, (C10340xw0) obj, (AbstractC5289Hp0) obj2);
                }
            });
        }
        boolean z10 = f49767i;
        if (!z10 && !linkedHashMap.o().equals(identityHashMap.o())) {
            throw new AssertionError();
        }
        if (!z10 && !b10.f51633e.containsAll(linkedHashMap.o()) && !b10.d()) {
            throw new AssertionError((Object) "Seen root that is not a live string builder");
        }
        c5855Rj.f43973d = new C8483mp0(linkedHashMap, identityHashMap);
        Iterator<W5> it2 = w52.v().iterator();
        while (it2.hasNext()) {
            function.apply(it2.next());
        }
        return C6276Ys0.f46097c;
    }

    public static void a(Map map, Map map2, C10340xw0 c10340xw0, AbstractC5289Hp0 abstractC5289Hp0) {
        boolean z10;
        AbstractC5289Hp0 abstractC5289Hp02 = (AbstractC5289Hp0) map2.get(c10340xw0);
        if (abstractC5289Hp02 == null) {
            map.put(c10340xw0, abstractC5289Hp0);
            map2.put(c10340xw0, abstractC5289Hp0);
            return;
        }
        boolean z11 = true;
        if (abstractC5289Hp02 instanceof C4941Bp0) {
            abstractC5289Hp0.getClass();
            if ((abstractC5289Hp0 instanceof C4941Bp0) || (abstractC5289Hp0 instanceof C10653zp0)) {
                z11 = false;
            }
        } else {
            if (abstractC5289Hp02 instanceof C10653zp0) {
                abstractC5289Hp0.getClass();
                z10 = abstractC5289Hp0 instanceof C10653zp0;
            } else if (abstractC5289Hp02 instanceof C9985vp0) {
                abstractC5289Hp0.getClass();
                z10 = abstractC5289Hp0 instanceof C9985vp0;
            }
            z11 = true ^ z10;
        }
        if (z11) {
            abstractC5289Hp02.f40880a.add(abstractC5289Hp0);
            abstractC5289Hp0.f40881b.add(abstractC5289Hp02);
            map2.put(c10340xw0, abstractC5289Hp0);
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE, C8984pp0 c8984pp0, final BiConsumer biConsumer) {
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C4) {
            return;
        }
        if (this.f49770h.f51088e.a(new C9962vh1(c8984pp0), abstractC10561zE)) {
            b(abstractC10561zE, c8984pp0, biConsumer);
            return;
        }
        Iterator it = c8984pp0.f51634f.iterator();
        while (it.hasNext()) {
            b((C10340xw0) it.next(), c8984pp0, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.a(BiConsumer.this, (C10340xw0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8149kp0.b(BiConsumer.this, (C10340xw0) obj);
                }
            });
        }
        if (abstractC10561zE.N1() || abstractC10561zE.E1() || abstractC10561zE.c2()) {
            Iterator it2 = c8984pp0.f51632d.iterator();
            while (it2.hasNext()) {
                b((C10340xw0) it2.next(), c8984pp0, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8149kp0.c(BiConsumer.this, (C10340xw0) obj);
                    }
                }, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8149kp0.d(BiConsumer.this, (C10340xw0) obj);
                    }
                });
            }
        }
    }

    public static void b(BiConsumer biConsumer, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C9985vp0());
    }

    public static void b(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C10653zp0(abstractC10561zE));
    }

    public static void a(BiConsumer biConsumer, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C5231Gp0(abstractC10561zE.k0()));
    }

    public static void a(C10340xw0 c10340xw0, final AbstractC10561zE abstractC10561zE, InterfaceC10486yp0 interfaceC10486yp0, C8984pp0 c8984pp0, final BiConsumer biConsumer) {
        if (!f49767i && !c8984pp0.f51633e.contains(c10340xw0)) {
            throw new AssertionError();
        }
        final C10152wp0 c10152wp0 = new C10152wp0(interfaceC10486yp0);
        b(c10340xw0, c8984pp0, new Consumer() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept((C10340xw0) obj, c10152wp0);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8149kp0.j(BiConsumer.this, abstractC10561zE, (C10340xw0) obj);
            }
        });
        interfaceC10486yp0.a(c10152wp0);
    }

    public static void a(AbstractC10188x1 abstractC10188x1, C8483mp0 c8483mp0, List list, C10340xw0 c10340xw0, AbstractC5289Hp0 abstractC5289Hp0) {
        abstractC10188x1.b(abstractC10188x1.b(c10340xw0) + 1, c10340xw0);
        AbstractC5289Hp0 abstractC5289Hp02 = (AbstractC5289Hp0) c8483mp0.f50430a.get(c10340xw0);
        AbstractC5289Hp0 abstractC5289Hp03 = (AbstractC5289Hp0) c8483mp0.f50431b.get(c10340xw0);
        if (abstractC5289Hp02 == null) {
            if (!f49767i && abstractC5289Hp03 != null) {
                throw new AssertionError();
            }
            if (list.size() == 1) {
                c8483mp0.f50430a.put(c10340xw0, abstractC5289Hp0);
                c8483mp0.f50431b.put(c10340xw0, abstractC5289Hp0);
                return;
            } else {
                abstractC5289Hp03 = new C5115Ep0();
                c8483mp0.f50430a.put(c10340xw0, abstractC5289Hp03);
                c8483mp0.f50431b.put(c10340xw0, abstractC5289Hp03);
            }
        }
        if (!f49767i && abstractC5289Hp03 == null) {
            throw new AssertionError();
        }
        abstractC5289Hp03.f40880a.add(abstractC5289Hp0);
        abstractC5289Hp0.f40881b.add(abstractC5289Hp03);
        abstractC5289Hp0.f40881b.add(abstractC5289Hp03);
    }

    public static void a(BiConsumer biConsumer, C10340xw0 c10340xw0) {
        biConsumer.accept(c10340xw0, new C9985vp0());
    }

    public final void a(Map map, Map map2, C10340xw0 c10340xw0) {
        a(map, map2, c10340xw0, new C9985vp0());
    }

    public static AbstractC5289Hp0 a(C10340xw0 c10340xw0, AbstractC5289Hp0 abstractC5289Hp0) {
        C4883Ap0 c4883Ap0 = new C4883Ap0();
        c4883Ap0.f40880a.add(abstractC5289Hp0);
        abstractC5289Hp0.f40881b.add(c4883Ap0);
        return c4883Ap0;
    }
}
