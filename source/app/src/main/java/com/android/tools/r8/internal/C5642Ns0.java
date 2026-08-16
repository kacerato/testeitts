package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.List;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;

public final class C5642Ns0 implements E1 {

    public static final boolean f42717h = true;

    public final C4798y f42718a;

    public final C4724u1 f42719b;

    public final com.android.tools.r8.graph.H5 f42720c;

    public final C8024k3 f42721d;

    public QJ f42722e;

    public final Set f42723f = AbstractC5513Ll0.c();

    public final Set f42724g = AbstractC5513Ll0.c();

    public C5642Ns0(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C7215fB c7215fB) {
        this.f42718a = c4798y;
        this.f42719b = c4798y.b();
        this.f42720c = h52;
        AbstractC10561zE j10 = c7215fB.k().l().j(c7215fB.l() - 1);
        C8024k3 v10 = j10.v();
        boolean z10 = C7215fB.f47893k;
        if (!z10 && v10 == null) {
            throw new AssertionError();
        }
        if (!z10 && j10.Y0().k1()) {
            throw new AssertionError();
        }
        this.f42721d = v10;
    }

    public static O00 a(WX wx, O00 o00) {
        return o00.a((C10340xw0) wx.f54321f.get(0), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                AbstractC9533t50 g10;
                g10 = ((AbstractC9533t50) obj2).g();
                return g10;
            }
        });
    }

    public static boolean d(C9298rj c9298rj, AbstractC9533t50 abstractC9533t50) {
        abstractC9533t50.getClass();
        return abstractC9533t50 instanceof C9836uv0;
    }

    public static boolean b(int i10, AbstractC9700u50 abstractC9700u50) {
        abstractC9700u50.getClass();
        return abstractC9700u50 instanceof C10003vv0;
    }

    @Override
    public final D1 a(Object obj, Object obj2, D1 d12) {
        return (AbstractC9867v50) d12;
    }

    @Override
    public final D1 a(Object obj, I i10, D1 d12, Object obj2, com.android.tools.r8.graph.M2 m22) {
        return (AbstractC9867v50) d12;
    }

    public final O00 a(QJ qj2, O00 o00) {
        O00 a10 = o00.a(AbstractC9907vK.a((List) qj2.f54321f), new KO0(this));
        C10340xw0 C22 = qj2.C2();
        D4 d42 = D4.f39431a;
        C22.getClass();
        C10340xw0 a11 = C22.a(d42, EnumC6871d70.f47287c);
        if (!a(a11)) {
            return a10;
        }
        if (a11.f53893j && this.f42720c.d().j1()) {
            if (qj2.B2().b(this.f42719b)) {
                Z4.c<?> o10 = ((C11245i) this.f42718a.f()).c(qj2.B2()).o();
                if (o10 == null) {
                    return a10.a(a11);
                }
                C4516j1 q10 = o10.q();
                q10.L0();
                if (!q10.f37320m.a(qj2).g()) {
                    return a10.a(a11);
                }
                QJ qj3 = this.f42722e;
                if (qj3 != null && qj3 != qj2) {
                    return a10.a(a11);
                }
                this.f42722e = qj2;
                return a10;
            }
        }
        return a10.a(a11);
    }

    public final O00 a(final TJ tj2, O00 o00) {
        O00 a10 = o00.a(AbstractC9907vK.a((List) tj2.f54321f), new KO0(this));
        C10340xw0 C22 = tj2.C2();
        D4 d42 = D4.f39431a;
        C22.getClass();
        C10340xw0 a11 = C22.a(d42, EnumC6871d70.f47287c);
        if (!a(a11)) {
            return a10;
        }
        if (((C11245i) this.f42718a.f()).d(tj2.B2()).o() == null) {
            return a10.a(a11);
        }
        return a10.a(a11, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                AbstractC9533t50 a12;
                a12 = ((AbstractC9533t50) obj2).a(TJ.this);
                return a12;
            }
        });
    }

    public final O00 a(final C8405mK c8405mK, O00 o00) {
        O00 a10 = o00.a(AbstractC9907vK.a((List) c8405mK.f54321f), new KO0(this));
        C10340xw0 C22 = c8405mK.C2();
        D4 d42 = D4.f39431a;
        C22.getClass();
        C10340xw0 a11 = C22.a(d42, EnumC6871d70.f47287c);
        if (!a(a11)) {
            return a10;
        }
        if (((C11245i) this.f42718a.f()).c(c8405mK.B2()).o() == null) {
            return a10.a(a11);
        }
        return a10.a(a11, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                AbstractC9533t50 a12;
                a12 = ((AbstractC9533t50) obj2).a(C8405mK.this);
                return a12;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0069, code lost:
    
        if (r1.isInterface() == false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e4 A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC5700Os0 a(AbstractC10561zE abstractC10561zE, AbstractC9867v50 abstractC9867v50) {
        AbstractC9867v50 a10;
        com.android.tools.r8.graph.E0 g10;
        if (abstractC10561zE.k1()) {
            C8024k3 v10 = abstractC10561zE.v();
            C10340xw0 d10 = v10.d();
            AbstractC8999pu0 u10 = d10.u();
            if (u10.s() && (g10 = this.f42718a.g(u10.b().E())) != null) {
                if (g10.e0()) {
                    com.android.tools.r8.graph.H2 d02 = g10.d0();
                    while (d02.i1()) {
                        com.android.tools.r8.graph.M2 a12 = d02.a1();
                        if (a12.a(this.f42719b.f38068i2)) {
                            break;
                        }
                        d02 = com.android.tools.r8.graph.H2.a(this.f42718a.g(a12));
                        if (d02 == null) {
                            break;
                        }
                    }
                    if (!d10.B()) {
                        this.f42723f.add(d10);
                        Set set = this.f42724g;
                        D4 d42 = D4.f39431a;
                        Set c10 = AbstractC5513Ll0.c();
                        C10340xw0.a(d42, d10, c10);
                        set.addAll(c10);
                        a10 = abstractC9867v50.a(v10.b(true), new N00(new C5862Rm0(C9298rj.f52115a, C9538t7.f52536a)));
                    }
                } else {
                    InterfaceC4440f0 z10 = g10.z();
                    if (z10.getType() != this.f42719b.f38068i2) {
                    }
                    if (!d10.B()) {
                    }
                }
                if (v10 == this.f42721d) {
                    return a10;
                }
                O00 d11 = a10.d();
                InterfaceC6401aI interfaceC6401aI = new InterfaceC6401aI() {
                    @Override
                    public final boolean a(int i10, Object obj) {
                        return C5642Ns0.a(i10, (AbstractC9700u50) obj);
                    }
                };
                JF jf2 = new JF(((NF) d11.f42755b.b()).f42545b);
                while (jf2.hasNext()) {
                    EF ef2 = (EF) jf2.next();
                    if (!interfaceC6401aI.a(ef2.a(), (AbstractC9700u50) ef2.getValue())) {
                        return a10;
                    }
                }
                return new C5531Lv();
            }
            a10 = abstractC9867v50.a(v10.b(true), C10003vv0.f53375a);
            if (v10 == this.f42721d) {
            }
        } else {
            if (!this.f42724g.contains(abstractC10561zE)) {
                return abstractC9867v50;
            }
            boolean z11 = f42717h;
            if (!z11) {
                abstractC9867v50.getClass();
                if (abstractC9867v50 instanceof C9872v7) {
                    throw new AssertionError();
                }
            }
            if (!z11) {
                abstractC9867v50.getClass();
                if (abstractC9867v50 instanceof C10170wv0) {
                    throw new AssertionError();
                }
            }
            O00 d12 = abstractC9867v50.d();
            int r22 = abstractC10561zE.r2();
            if (r22 == 9) {
                C4 B10 = abstractC10561zE.B();
                if (B10.d().B()) {
                    d12 = a((AbstractC10561zE) B10, d12);
                }
            } else if (r22 == 10) {
                d12 = a(abstractC10561zE.D(), d12);
            } else if (r22 == 25) {
                EB V10 = abstractC10561zE.V();
                if (!V10.x2()) {
                    d12 = a((AbstractC10561zE) V10, d12);
                } else if (!z11) {
                    Set set2 = this.f42723f;
                    C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(0);
                    D4 d43 = D4.f39431a;
                    c10340xw0.getClass();
                    if (!set2.contains(c10340xw0.a(d43, EnumC6871d70.f47287c))) {
                        throw new AssertionError();
                    }
                }
            } else if (r22 == 28) {
                d12 = a(abstractC10561zE.c(), d12);
            } else if (r22 == 30) {
                d12 = a(abstractC10561zE.m(), d12);
            } else if (r22 != 38) {
                d12 = r22 != 40 ? r22 != 42 ? r22 != 56 ? r22 != 33 ? r22 != 34 ? a(abstractC10561zE, d12) : a(abstractC10561zE.d0(), d12) : a(abstractC10561zE.c0(), d12) : a(abstractC10561zE.G0(), d12) : a(abstractC10561zE.o0(), d12) : a(abstractC10561zE.k0(), d12);
            } else {
                C7405gK i02 = abstractC10561zE.i0();
                Z4.c<?> o10 = ((C11245i) this.f42718a.f()).f(i02.B2()).o();
                if (o10 == null || o10.q().getReference() != this.f42719b.f37852E4.f37354f) {
                    d12 = a((AbstractC10561zE) i02, d12);
                }
            }
            return d12 != abstractC9867v50 ? a(d12) : d12;
        }
    }

    public static AbstractC9533t50 a(C7942jc c7942jc, C9298rj c9298rj, AbstractC9533t50 abstractC9533t50) {
        return abstractC9533t50.a(c7942jc.f49274k);
    }

    public static boolean a(int i10, AbstractC9700u50 abstractC9700u50) {
        abstractC9700u50.getClass();
        return abstractC9700u50 instanceof C10003vv0;
    }

    public final O00 a(AbstractC10561zE abstractC10561zE, O00 o00) {
        return o00.a(abstractC10561zE.f54321f, new KO0(this));
    }

    public final O00 a(final C7942jc c7942jc, O00 o00) {
        if (c7942jc.d().B()) {
            return a((AbstractC10561zE) c7942jc, o00);
        }
        return o00.a(c7942jc.n(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5642Ns0.a(C7942jc.this, (C9298rj) obj, (AbstractC9533t50) obj2);
            }
        });
    }

    public final O00 a(final C6558bE c6558bE, O00 o00) {
        if (((C11245i) this.f42718a.f()).c(c6558bE.getField()).y()) {
            return o00.a(c6558bE.n(), new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    AbstractC9533t50 a10;
                    a10 = ((AbstractC9533t50) obj2).a(C6558bE.this.getField());
                    return a10;
                }
            });
        }
        return a((AbstractC10561zE) c6558bE, o00);
    }

    public final O00 a(C9225rE c9225rE, O00 o00) {
        C10340xw0 value = c9225rE.value();
        D4 d42 = D4.f39431a;
        value.getClass();
        C6371a70 c6371a70 = EnumC6871d70.f47287c;
        C10340xw0 a10 = value.a(d42, c6371a70);
        if (a(a10)) {
            o00 = o00.a(a10);
        }
        C10340xw0 n10 = c9225rE.n();
        n10.getClass();
        C10340xw0 a11 = n10.a(d42, c6371a70);
        if (!a(a11)) {
            return o00;
        }
        if (((C11245i) this.f42718a.f()).c(c9225rE.getField()).y()) {
            return o00.a(a11, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    AbstractC9533t50 e10;
                    e10 = ((AbstractC9533t50) obj2).e();
                    return e10;
                }
            });
        }
        return o00.a(a11);
    }

    public static O00 a(C10471yk0 c10471yk0, O00 o00) {
        return o00.a(c10471yk0.w2(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                AbstractC9533t50 f10;
                f10 = ((AbstractC9533t50) obj2).f();
                return f10;
            }
        });
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (!f42717h) {
            D4 d42 = D4.f39431a;
            c10340xw0.getClass();
            if (c10340xw0.a(d42, EnumC6871d70.f47287c) != c10340xw0) {
                throw new AssertionError();
            }
        }
        return c10340xw0.H() && this.f42723f.contains(c10340xw0);
    }

    public static InterfaceC5700Os0 a(O00 o00) {
        final int i10 = 1;
        O00 a10 = o00.a(new InterfaceC6568bI() {
            @Override
            public final Object a(int i11, Object obj) {
                return C5642Ns0.a(i10, i11, (AbstractC9700u50) obj);
            }
        });
        InterfaceC6401aI interfaceC6401aI = new InterfaceC6401aI() {
            @Override
            public final boolean a(int i11, Object obj) {
                return C5642Ns0.b(i11, (AbstractC9700u50) obj);
            }
        };
        JF jf2 = new JF(((NF) a10.f42755b.b()).f42545b);
        while (jf2.hasNext()) {
            EF ef2 = (EF) jf2.next();
            if (!interfaceC6401aI.a(ef2.a(), (AbstractC9700u50) ef2.getValue())) {
                return a10;
            }
        }
        return new C5531Lv();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public static AbstractC9700u50 a(int i10, int i11, AbstractC9700u50 abstractC9700u50) {
        abstractC9700u50.getClass();
        if ((abstractC9700u50 instanceof C9705u7) || (abstractC9700u50 instanceof C10003vv0)) {
            return abstractC9700u50;
        }
        N00 a10 = abstractC9700u50.a();
        if (a10.f42476a.size() == i10 && a10.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C5642Ns0.d((C9298rj) obj, (AbstractC9533t50) obj2);
            }
        })) {
            return C10003vv0.f53375a;
        }
        return abstractC9700u50;
    }
}
