package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11447u;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8057kE extends AbstractC9617te {

    public static final boolean f49560f = true;

    public final C4724u1 f49561e;

    public C8057kE(C4798y c4798y) {
        super(c4798y);
        this.f49561e = c4798y.b();
    }

    public static boolean a(C9603tZ c9603tZ, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == c9603tZ;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        C9603tZ w02;
        if (!f49560f) {
            abstractC6931dX.getClass();
            if (abstractC6931dX instanceof P60) {
                throw new AssertionError();
            }
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        com.android.tools.r8.androidapi.f fVar = this.f52646a.f38405T;
        C7549hB p10 = c7215fB.p();
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            QJ c02 = next.c0();
            if (c02 != null) {
                com.android.tools.r8.graph.A2 B22 = c02.B2();
                if (B22.b(this.f49561e)) {
                    C10340xw0 W02 = c02.W0();
                    if (!W02.j() && (w02 = W02.r().w0()) != null) {
                        com.android.tools.r8.androidapi.f a10 = this.f52646a.f38404S.a(B22, fVar);
                        if (!fVar.d(a10) && !G2.a(c7215fB.j().getHolder(), a10)) {
                            C4516j1 a11 = a(c02.B2(), a10, abstractC6931dX, c5035Df);
                            ArrayList arrayList = next.f54321f;
                            boolean z10 = C7405gK.f48231o;
                            C7238fK c7238fK = new C7238fK();
                            c7238fK.f44718d = a11.getReference();
                            c7238fK.f52322b = next.getPosition();
                            c7238fK.f52321a = c7215fB.a(w02.a(), (C4515j0) null);
                            C7405gK c10 = ((C7238fK) c7238fK.a(arrayList.subList(1, arrayList.size()))).c();
                            p10.a(c10, (C10696a) null);
                            identityHashMap.put(w02, c10.d());
                        }
                    }
                }
            }
        }
        if (identityHashMap.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        C7549hB p11 = c7215fB.p();
        Set c11 = AbstractC5513Ll0.c();
        while (p11.hasNext()) {
            AbstractC10561zE next2 = p11.next();
            if (next2.c2()) {
                C9603tZ w03 = next2.w0();
                C10340xw0 c10340xw0 = (C10340xw0) identityHashMap.get(w03);
                if (c10340xw0 == null) {
                    continue;
                } else {
                    w03.d().f(c10340xw0);
                    c11.add(c10340xw0);
                    if (a(p11, w03, c10340xw0)) {
                        p11.i();
                    } else {
                        com.android.tools.r8.androidapi.f a12 = this.f52646a.f38404S.a(w03.u2(), fVar);
                        if (!f49560f && !a12.q()) {
                            throw new AssertionError();
                        }
                        C4516j1 a13 = a(w03.u2(), a12, abstractC6931dX, c5035Df);
                        boolean z11 = C7405gK.f48231o;
                        C7238fK c7238fK2 = new C7238fK();
                        c7238fK2.f44718d = a13.getReference();
                        c7238fK2.f52322b = next2.getPosition();
                        p11.a(c7238fK2.c(), (C10696a) null);
                    }
                }
            }
        }
        if (!f49560f && c11.isEmpty()) {
            throw new AssertionError();
        }
        new C8331lu0(this.f52646a, c7215fB, false).a(c11, 2);
        if (this.f52646a.m()) {
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            C4516j1 d10 = j10.d();
            if (d10.f37322o.q()) {
                C4798y c4798y = this.f52646a;
                C11447u c11447u = new C11447u(c4798y, j10, c4798y.f38404S);
                if (!C7215fB.f47893k && !c11447u.f37178c.d()) {
                    throw new AssertionError();
                }
                Iterator<W5> it = c7215fB.f47897d.iterator();
                while (it.hasNext()) {
                    W5 next3 = it.next();
                    Y5 it2 = next3.f45293f.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            it2.next().a(c11447u);
                            if (c11447u.f37178c.c()) {
                                break;
                            }
                        } else {
                            Iterator it3 = next3.f45292e.f42510b.iterator();
                            while (it3.hasNext()) {
                                c11447u.a((com.android.tools.r8.graph.M2) it3.next());
                                if (c11447u.f37178c.c()) {
                                    break;
                                }
                            }
                        }
                    }
                    if (c11447u.f37178c.c()) {
                        break;
                    }
                }
                com.android.tools.r8.androidapi.f fVar2 = c11447u.f57881h;
                if (!f49560f && !fVar2.q()) {
                    throw new AssertionError();
                }
                d10.f(fVar2);
            }
        }
        return InterfaceC10118we.f53548b;
    }

    public final void a(com.android.tools.r8.graph.I2 i22, com.android.tools.r8.androidapi.f fVar, final com.android.tools.r8.graph.M2 m22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58115e = i22;
        n10.f58123m = this.f52646a.f38405T;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8057kE.this.a(m22, a22);
            }
        };
    }

    public final boolean a(C7549hB c7549hB, final C9603tZ c9603tZ, C10340xw0 c10340xw0) {
        C7405gK i02 = c10340xw0.r().i0();
        boolean z10 = f49560f;
        if (!z10 && i02 == null) {
            throw new AssertionError();
        }
        final B60 position = c9603tZ.getPosition();
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) c7549hB.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8057kE.this.a(position, (AbstractC10561zE) obj);
            }
        });
        c7549hB.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8057kE.a(C9603tZ.this, (AbstractC10561zE) obj);
            }
        });
        AbstractC10561zE next = c7549hB.next();
        if (!z10 && next != c9603tZ) {
            throw new AssertionError();
        }
        if (abstractC10561zE != i02) {
            return false;
        }
        B60 position2 = abstractC10561zE.getPosition();
        return position2.o() || position.f() == position2.f();
    }

    public final boolean a(B60 b60, AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.v1() && !(abstractC10561zE instanceof C6797cj)) {
            return true;
        }
        B60 position = abstractC10561zE.getPosition();
        return (position.o() || b60.f() == position.f()) ? false : true;
    }

    public final C4516j1 a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.androidapi.f fVar, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        final com.android.tools.r8.graph.I2 a10 = this.f52646a.b().a(this.f49561e.f37905M1, new com.android.tools.r8.graph.M2[0]);
        com.android.tools.r8.graph.H5 b10 = this.f52646a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        }, c5035Df.a(), this.f52646a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8057kE.this.a(a10, fVar, m22, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC6931dX.d().a(b10, c5035Df.f39582c);
        abstractC6931dX.b(b10);
        return b10.d();
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return new C9770uZ(this.f52646a, a22.s0(), m22).b();
    }

    public final C4516j1 a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.androidapi.f fVar, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        final com.android.tools.r8.graph.I2 a10 = this.f52646a.b().a(a22.s0(), a22.x0());
        com.android.tools.r8.graph.H5 b10 = this.f52646a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        }, c5035Df.a(), this.f52646a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8057kE.this.a(a22, a10, fVar, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC6931dX.d().a(b10, c5035Df.f39582c);
        abstractC6931dX.b(b10);
        return b10.d();
    }

    public final void a(final com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.androidapi.f fVar, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        C4798y c4798y = this.f52646a;
        C8854p10 b10 = C8854p10.b();
        s02.getClass();
        C6949de b11 = AbstractC8999pu0.a(s02, b10, (C4798y<?>) c4798y).b();
        boolean z10 = AbstractC10330xt.f53865a;
        C8166kv c8166kv = new C8166kv(b11);
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58115e = i22;
        n10.f58123m = this.f52646a.f38405T;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a23) {
                return C8057kE.this.a(a22, a23);
            }
        };
        C5160Fj c5160Fj = C5160Fj.f40293b;
        n10.f58125o = new WY().a(c8166kv);
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        C4724u1 b10 = this.f52646a.b();
        C6842cy c6842cy = new C6842cy(b10);
        if (!C6842cy.f47220l && !a22.b(b10)) {
            throw new AssertionError();
        }
        c6842cy.f47223c = a22;
        c6842cy.f47230j = true;
        c6842cy.f47226f = EnumC6509ay.f46667e;
        c6842cy.f47227g = Boolean.FALSE;
        c6842cy.f47222b = a23;
        c6842cy.f47225e = true;
        return c6842cy.a();
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (!this.f52646a.E().f50616L0.b() || !this.f52646a.E().a().f() || !this.f52646a.E().z().d(C2.L)) {
            return false;
        }
        abstractC6931dX.getClass();
        return ((abstractC6931dX instanceof C5448Ki) || abstractC6931dX.f()) && !c7215fB.j().d().F0();
    }

    @Override
    public final String a() {
        return "InstanceInitializerOutliner";
    }
}
