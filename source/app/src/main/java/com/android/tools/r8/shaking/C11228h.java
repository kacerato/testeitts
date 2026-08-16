package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.N;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C11228h {

    public static final boolean f57353g = true;

    public final C4798y f57354a;

    public final N.a f57355b;

    public final C8570nJ f57356c;

    public final Set f57357d;

    public final I3 f57358e;

    public final Set f57359f;

    public C11228h(C4798y c4798y, Set set, N.a aVar, Set set2) {
        this.f57354a = c4798y;
        this.f57355b = aVar;
        this.f57356c = c4798y.E();
        this.f57357d = set;
        this.f57358e = c4798y.E().B().f();
        this.f57359f = set2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x016d, code lost:
    
        if (((com.android.tools.r8.graph.C4554l1) r7.t0().W0()).a(r5.f37957T4.f36718a) != false) goto L119;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, boolean z10, EnumC4629p0 enumC4629p0, N.a aVar, AbstractC11432t1 abstractC11432t1) {
        I3 a10;
        C11350o3 c11350o3;
        C11350o3 c11350o32;
        C8570nJ E10 = c4798y.E();
        if (!E10.W()) {
            return true;
        }
        boolean z11 = d52.e0() && d52.d0().f36246f.H();
        if (E10.B() != null) {
            a10 = E10.B().f();
        } else {
            int i10 = AbstractC7552hC.f48487c;
            a10 = I3.a(C6190Xe0.f45779e);
        }
        C4724u1 b10 = c4798y.b();
        int i11 = c4666r0.f37692b;
        if (i11 == 0) {
            com.android.tools.r8.graph.L2 v02 = c4666r0.l0().v0();
            com.android.tools.r8.graph.L2 l22 = E10.f50660a.f38163u1;
            v02.getClass();
            if (v02.b(l22.f36562f)) {
                return true;
            }
            if (aVar.b()) {
                enumC4629p0.getClass();
                if (enumC4629p0 == EnumC4629p0.f37567c && c4666r0.l0().a(c4798y.p().f42339b)) {
                    return true;
                }
            }
            return a(c4666r0, z10, enumC4629p0, abstractC11432t1, E10);
        }
        if (i11 == 1) {
            if (z11 && c4666r0.l0() == b10.f38149s3) {
                if (c4666r0.f37693c.k0() == 1) {
                    C4704t0 j10 = c4666r0.f37693c.j(0);
                    if (j10.f37738b.g(b10.f38115o1)) {
                        com.android.tools.r8.graph.R2 l02 = j10.l0();
                        l02.getClass();
                        if (l02 instanceof com.android.tools.r8.graph.T2) {
                        }
                    }
                }
                return true;
            }
            return a(c4666r0, z10, enumC4629p0, abstractC11432t1, E10);
        }
        if (i11 == 2) {
            enumC4629p0.getClass();
            if (enumC4629p0 == EnumC4629p0.f37569e) {
                return false;
            }
            boolean z12 = f57353g;
            if (!z12 && c4666r0.f37693c.f37142b == b10.f37821A5) {
                throw new AssertionError();
            }
            if (!z12 && c4666r0.f37693c.f37142b == b10.f37829B5) {
                throw new AssertionError();
            }
            if (!z12 && c4666r0.f37693c.f37142b == b10.f38207z5) {
                throw new AssertionError();
            }
            if (!z12 && c4666r0.f37693c.f37142b == b10.f38199y5) {
                throw new AssertionError();
            }
            if (!z12 && !E10.f50736y && C4666r0.d(c4666r0, b10)) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.M2 m22 = c4666r0.f37693c.f37142b;
            if (m22 == b10.f37923O5) {
                I1 a11 = abstractC11432t1.a();
                return a11 != null && ((c11350o32 = E10.f50688i) == null || ((E10.f50674d1 && c11350o32.f().f56574f) || !a11.f56553l));
            }
            if (m22 == b10.f37916N5) {
                if (!z12 && !d52.e0()) {
                    throw new AssertionError();
                }
                c4798y.f38397L.put(d52.d0().f36245e, c4666r0.f37693c.f37143c[0].f37739c.D0());
                return a10.f56578j;
            }
            if (m22 != b10.f37837C5) {
                return z11 && m22 == b10.f38191x5;
            }
            I1 a12 = abstractC11432t1.a();
            return a12 != null && ((c11350o3 = E10.f50688i) == null || ((E10.f50674d1 && c11350o3.f().f56577i) || !a12.f56551A));
        }
        throw new C5417Jv0("Unexpected annotation visibility.");
    }

    public final C4666r0 a(com.android.tools.r8.graph.D5 d52, AbstractC11432t1 abstractC11432t1, C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        if (!this.f57357d.contains(c4666r0)) {
            C4798y c4798y = this.f57354a;
            if (!a(c4798y, d52, c4666r0, ((C11245i) c4798y.f()).i(c4666r0.f37693c.f37142b.a(c4798y.b())), enumC4629p0, this.f57355b, abstractC11432t1)) {
                return null;
            }
        }
        return c4666r0.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11228h.this.a((C4422e1) obj);
            }
        });
    }

    public final void b() {
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f57354a.f()).d()) {
            if (h22.f36369x.c()) {
                h22.k(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11228h.a((com.android.tools.r8.graph.G5) obj);
                    }
                });
            }
        }
    }

    public final C4704t0 a(com.android.tools.r8.graph.M2 m22, final C4704t0 c4704t0) {
        com.android.tools.r8.graph.E0 g10;
        if ((!this.f57354a.b().f38191x5.equals(m22) || !this.f57354a.b().f38115o1.equals(c4704t0.f37738b)) && (g10 = this.f57354a.g(m22)) != null) {
            if (!f57353g && !g10.isInterface()) {
                throw new AssertionError();
            }
            if (!g10.b0().b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C11228h.a(C4704t0.this, (C4516j1) obj);
                }
            })) {
                return null;
            }
        }
        return c4704t0;
    }

    public static boolean a(C4666r0 c4666r0, boolean z10, EnumC4629p0 enumC4629p0, AbstractC11432t1 abstractC11432t1, C8570nJ c8570nJ) {
        boolean a10;
        enumC4629p0.getClass();
        if (enumC4629p0 == EnumC4629p0.f37569e) {
            I1 a11 = abstractC11432t1.a();
            return (a11 == null || AbstractC11432t1.a(c8570nJ, c4666r0, z10, a11.f56552B, c8570nJ.f50688i.f().f56581m, c8570nJ.f50688i.f().f56582n)) ? false : true;
        }
        if (c4666r0.n0()) {
            a10 = AbstractC11432t1.a(c8570nJ, c4666r0, z10, abstractC11432t1.f57839i, c8570nJ.f50688i.f().f56583o, c8570nJ.f50688i.f().f56584p);
        } else {
            a10 = AbstractC11432t1.a(c8570nJ, c4666r0, z10, abstractC11432t1.f57838h, c8570nJ.f50688i.f().f56579k, c8570nJ.f50688i.f().f56580l);
        }
        return !a10;
    }

    public final C11228h a() {
        I3 i32 = this.f57358e;
        if (this.f57354a.E().f50674d1 && i32.f56571c != i32.f56572d) {
            i32.f56572d = true;
            i32.f56571c = true;
        }
        boolean z10 = i32.f56571c;
        if (z10 && !i32.f56572d) {
            throw new C5325If("Attribute InnerClasses requires EnclosingMethod attribute. Check -keepattributes directive.");
        }
        if (z10 || !i32.f56572d) {
            return this;
        }
        throw new C5325If("Attribute EnclosingMethod requires InnerClasses attribute. Check -keepattributes directive.");
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f57354a, ((C11245i) this.f57354a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11228h.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
        if (f57353g) {
            return;
        }
        b();
    }

    public final void a(final com.android.tools.r8.graph.H2 h22) {
        C11297l1 a10 = this.f57354a.r().a(h22);
        a((com.android.tools.r8.graph.D5) h22, (AbstractC11432t1) a10);
        a(h22, a10);
        final Set c10 = AbstractC5513Ll0.c();
        h22.k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11228h.this.a(h22, c10, (com.android.tools.r8.graph.G5) obj);
            }
        });
        h22.k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11228h.a(Set.this, (com.android.tools.r8.graph.G5) obj);
            }
        });
    }

    public static void a(Set set, com.android.tools.r8.graph.G5 g52) {
        com.android.tools.r8.kotlin.Q c02 = g52.c0();
        if (!c02.a() || set.contains(c02.b().getReference())) {
            return;
        }
        g52.d().y0();
    }

    public static void a(com.android.tools.r8.graph.G5 g52) {
        if (!f57353g && !g52.c0().c()) {
            throw new AssertionError((Object) "Should have pruned kotlin info");
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Set set, com.android.tools.r8.graph.G5 g52) {
        AbstractC11516y1 r10 = this.f57354a.r();
        r10.getClass();
        F1 a10 = r10.a(g52.d(), g52.getHolder());
        a(g52, a10);
        if (a10.f(this.f57356c)) {
            g52.d().t();
        }
        if (!g52.c0().a()) {
            C8570nJ c8570nJ = this.f57356c;
            if (h22.f36369x.c() || !a10.d(c8570nJ)) {
                g52.d().y0();
            }
        }
        if (g52.c0().a()) {
            C8570nJ c8570nJ2 = this.f57356c;
            if (h22.f36369x.c() || !a10.d(c8570nJ2)) {
                return;
            }
            set.add(g52.c0().b().getReference());
        }
    }

    public final C4422e1 a(C4422e1 c4422e1) {
        final AbstractC5308Hz v10 = this.f57354a.v();
        com.android.tools.r8.graph.M2 a10 = c4422e1.f37142b.a(this.f57354a.b());
        if (this.f57359f.contains(a10)) {
            return null;
        }
        v10.getClass();
        final com.android.tools.r8.graph.M2 c10 = v10.c(AbstractC5308Hz.g(), a10);
        C4422e1 a11 = c4422e1.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.c((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11228h.this.a(c10, (C4704t0) obj);
            }
        });
        boolean z10 = f57353g;
        com.android.tools.r8.graph.E0 g10 = ((C11245i) this.f57354a.f()).g(c10);
        if (z10 || g10 == null || ((C11245i) this.f57354a.f()).i(c10)) {
            return a11;
        }
        throw new AssertionError();
    }

    public static boolean a(C4704t0 c4704t0, C4516j1 c4516j1) {
        return c4516j1.getReference().f38298g == c4704t0.f37738b;
    }

    public final void a(final com.android.tools.r8.graph.D5 d52, final AbstractC11432t1 abstractC11432t1) {
        if (!f57353g && !this.f57355b.b() && !this.f57357d.isEmpty()) {
            throw new AssertionError();
        }
        d52.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11228h.this.a(d52, abstractC11432t1, (C4666r0) obj, (EnumC4629p0) obj2);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final C11297l1 c11297l1) {
        h22.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11228h.this.a(c11297l1, (C4500i3) obj);
            }
        });
        h22.e(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11228h.this.a(h22, (C4425e4) obj);
            }
        });
        h22.N0().getClass();
        if (c11297l1.f(this.f57356c)) {
            h22.D0();
        }
        C11350o3 c11350o3 = this.f57356c.f50688i;
        if (c11350o3 == null || c11350o3.f().f56587s || !c11297l1.f57495m) {
            return;
        }
        h22.f36257q.clear();
    }

    public final boolean a(C11297l1 c11297l1, C4500i3 c4500i3) {
        boolean z10;
        C8570nJ c8570nJ = this.f57356c;
        C4798y c4798y = this.f57354a;
        c11297l1.getClass();
        if (!c8570nJ.f50688i.f().f56572d) {
            return true;
        }
        if (c8570nJ.f50674d1) {
            return false;
        }
        if (c11297l1.d(c8570nJ)) {
            if (c4500i3.f37290b != null) {
                C11245i c11245i = (C11245i) c4798y.f();
                com.android.tools.r8.graph.A2 a22 = c4500i3.f37290b;
                if (!C11245i.f57385J) {
                    c11245i.c();
                }
                z10 = c11245i.f57407v.a(a22, c11245i.j(), c11245i);
            } else if (c4500i3.f37289a != null) {
                C11245i c11245i2 = (C11245i) c4798y.f();
                com.android.tools.r8.graph.M2 m22 = c4500i3.f37289a;
                if (!C11245i.f57385J) {
                    c11245i2.c();
                }
                z10 = c11245i2.f57407v.a(m22, c11245i2.j(), c11245i2);
            } else {
                z10 = false;
            }
            if (z10) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, C4425e4 c4425e4) {
        C4500i3 O02 = h22.O0();
        if (c4425e4.d() == null && (h22.r1() || h22.m1())) {
            if (!f57353g && c4425e4.b() == null) {
                throw new AssertionError();
            }
            AbstractC11516y1 r10 = this.f57354a.r();
            com.android.tools.r8.graph.M2 b10 = c4425e4.b();
            C4798y c4798y = this.f57354a;
            r10.getClass();
            C11297l1 a10 = r10.a(c4798y.a(b10));
            C8570nJ c8570nJ = this.f57356c;
            a10.getClass();
            if (!c8570nJ.f50688i.f().f56571c) {
                return true;
            }
            if (c8570nJ.f50674d1) {
                return false;
            }
            return O02 == null || !a10.d(c8570nJ);
        }
        if (c4425e4.d() == null) {
            if (!f57353g && (h22.r1() || h22.m1())) {
                throw new AssertionError();
            }
            AbstractC11516y1 r11 = this.f57354a.r();
            com.android.tools.r8.graph.M2 b11 = c4425e4.b();
            C4798y c4798y2 = this.f57354a;
            r11.getClass();
            return r11.a(c4798y2.a(b11)).a(this.f57356c);
        }
        if (c4425e4.b() == null) {
            if (!f57353g && c4425e4.d() == null) {
                throw new AssertionError();
            }
            AbstractC11516y1 r12 = this.f57354a.r();
            com.android.tools.r8.graph.M2 d10 = c4425e4.d();
            C4798y c4798y3 = this.f57354a;
            r12.getClass();
            return r12.a(c4798y3.a(d10)).a(this.f57356c);
        }
        if (!f57353g && (c4425e4.d() == null || c4425e4.b() == null)) {
            throw new AssertionError();
        }
        AbstractC11516y1 r13 = this.f57354a.r();
        com.android.tools.r8.graph.M2 b12 = c4425e4.b();
        C4798y c4798y4 = this.f57354a;
        r13.getClass();
        if (!r13.a(c4798y4.a(b12)).a(this.f57356c)) {
            AbstractC11516y1 r14 = this.f57354a.r();
            com.android.tools.r8.graph.M2 d11 = c4425e4.d();
            C4798y c4798y5 = this.f57354a;
            r14.getClass();
            if (!r14.a(c4798y5.a(d11)).a(this.f57356c)) {
                return false;
            }
        }
        return true;
    }

    public static void a(C4798y c4798y) {
        for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
            h22.getClass();
            h22.f37066b = C4723u0.l0();
            h22.y1().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((AbstractC4479h1) obj).p0();
                }
            });
        }
    }
}
