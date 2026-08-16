package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC10051wB;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC7670hw;
import com.android.tools.r8.internal.AbstractC9617te;
import com.android.tools.r8.internal.C10115wd;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C5634No0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C9225rE;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.C9951ve;
import com.android.tools.r8.internal.C9960vh;
import com.android.tools.r8.internal.EE;
import com.android.tools.r8.internal.InterfaceC10118we;
import com.android.tools.r8.internal.InterfaceC10172ww;
import com.android.tools.r8.internal.InterfaceC6268Yo0;
import com.android.tools.r8.internal.NJ;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y10;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class E extends AbstractC9617te {

    public static final boolean f55604f = true;

    public final Y10 f55605e;

    public E(C4798y c4798y) {
        super(c4798y);
        this.f55605e = ((C11245i) c4798y.f()).f57390E;
    }

    public static boolean a(VJ vj2, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == vj2;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        return a(c7215fB, (Set) null);
    }

    public static boolean a(C9960vh c9960vh, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == c9960vh;
    }

    @Override
    public final String a() {
        return "IdentifierNameStringMarker";
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f52646a, this.f52646a.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                E.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        R2.k D02;
        for (C4460g1 c4460g1 : h22.A1()) {
            if (!f55604f && !c4460g1.f37202g.n()) {
                throw new AssertionError();
            }
            if (this.f55605e.containsKey(c4460g1.getReference()) && (D02 = c4460g1.K0().D0()) != null) {
                com.android.tools.r8.graph.J2 a10 = F.a(this.f52646a, (com.android.tools.r8.graph.L2) D02.W0());
                if (a10 != null) {
                    c4460g1.a((com.android.tools.r8.graph.R2) new com.android.tools.r8.graph.Q2(a10, C10115wd.f53538f));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9951ve a(C7215fB c7215fB, Set set) {
        C9951ve c9951ve = InterfaceC10118we.f53547a;
        if (!c7215fB.f47902i.a(16)) {
            return c9951ve;
        }
        Z5 u10 = c7215fB.u();
        while (u10.hasNext()) {
            W5 next = u10.next();
            if (set == null || set.contains(next)) {
                EE I10 = next.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next2 = I10.next();
                    if (next2.F1()) {
                        InterfaceC10172ww T10 = next2.T();
                        C4554l1 field = T10.getField();
                        com.android.tools.r8.graph.J2 j22 = null;
                        if (this.f55605e.containsKey(field)) {
                            C10340xw0 value = T10.value();
                            if (!value.N()) {
                                if (!value.L()) {
                                    a(field, c7215fB.j(), (AbstractC7670hw) T10, (com.android.tools.r8.graph.L2) null);
                                } else {
                                    com.android.tools.r8.graph.L2 u22 = value.n().K().u2();
                                    com.android.tools.r8.graph.J2 a10 = F.a(this.f52646a, u22);
                                    if (a10 == null) {
                                        a(field, c7215fB.j(), (AbstractC7670hw) T10, u22);
                                    } else {
                                        j22 = a10;
                                    }
                                }
                            }
                        }
                        if (j22 == null) {
                            continue;
                        } else {
                            boolean z10 = f55604f;
                            if (!z10 && I10.n() != T10) {
                                throw new AssertionError();
                            }
                            I10.previous();
                            C10340xw0 a11 = c7215fB.a(T10.value().u(), T10.value().s());
                            C9820uq c9820uq = new C9820uq(a11, j22, C10115wd.f53538f);
                            c9820uq.b(T10.getPosition());
                            W5 b10 = T10.b();
                            W5 a12 = b10.z() ? I10.a(c7215fB, u10) : b10;
                            if (a12 != b10) {
                                b10.b(b10.l().size() - 1).add(c9820uq);
                                I10 = a12.I();
                                if (!z10 && I10.h() != T10) {
                                    throw new AssertionError();
                                }
                                I10.next();
                            } else {
                                I10.add(c9820uq);
                                if (!z10 && I10.h() != T10) {
                                    throw new AssertionError();
                                }
                                I10.next();
                            }
                            if (T10.e()) {
                                I10.b(new C5634No0(T10.getField(), a11));
                            } else {
                                if (!z10 && !T10.i()) {
                                    throw new AssertionError();
                                }
                                I10.b(new C9225rE(T10.getField(), T10.m().n(), a11, false));
                            }
                            c9951ve = InterfaceC10118we.f53548b;
                        }
                    } else if (next2.P1()) {
                        I10 = a(c7215fB, u10, I10, next2.e0());
                        c9951ve = InterfaceC10118we.f53548b;
                    }
                }
            }
        }
        return c9951ve;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, final VJ vj2) {
        boolean z10;
        AbstractC10051wB a10;
        boolean z11;
        AbstractC10561zE abstractC10561zE;
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        C4724u1 b10 = this.f52646a.b();
        int i10 = 0;
        if (vj2.T1()) {
            C8405mK k02 = vj2.k0();
            if (k02.B2() == b10.f37887J4.f38249k && (F.b(b10, k02.C2()) || F.b(b10, (C10340xw0) k02.f54321f.get(1)))) {
                z10 = true;
                if (!this.f55605e.containsKey(B22) || z10) {
                    ArrayList arrayList = vj2.f54321f;
                    final C10340xw0[] c10340xw0Arr = new C10340xw0[arrayList.size()];
                    if (F.a(this.f52646a.b(), B22) && !z10) {
                        while (i10 < arrayList.size()) {
                            C10340xw0 c10340xw0 = (C10340xw0) arrayList.get(i10);
                            if (!c10340xw0.L()) {
                                a(B22, c7215fB.j(), vj2, (com.android.tools.r8.graph.L2) null);
                            } else {
                                com.android.tools.r8.graph.L2 u22 = c10340xw0.n().K().u2();
                                com.android.tools.r8.graph.J2 a11 = F.a(this.f52646a, u22);
                                if (a11 == null) {
                                    a(B22, c7215fB.j(), vj2, u22);
                                } else {
                                    boolean z12 = f55604f;
                                    if (!z12 && ee2.n() != vj2) {
                                        throw new AssertionError();
                                    }
                                    ee2.previous();
                                    C10340xw0 a12 = c7215fB.a(c10340xw0.u(), c10340xw0.s());
                                    C9820uq c9820uq = new C9820uq(a12, a11, C10115wd.f53538f);
                                    c9820uq.b(vj2.getPosition());
                                    c10340xw0Arr[i10] = a12;
                                    W5 b11 = vj2.b();
                                    W5 a13 = b11.z() ? ee2.a(c7215fB, z52) : b11;
                                    if (a13 != b11) {
                                        Y5 b12 = b11.b(b11.l().size());
                                        b12.previous();
                                        b12.add(c9820uq);
                                        ee2 = a13.I();
                                        if (!z12 && ee2.h() != vj2) {
                                            throw new AssertionError();
                                        }
                                        ee2.next();
                                    } else {
                                        ee2.add(c9820uq);
                                        if (!z12 && ee2.h() != vj2) {
                                            throw new AssertionError();
                                        }
                                        ee2.next();
                                    }
                                }
                            }
                            i10++;
                        }
                    } else {
                        a10 = F.a(vj2, this.f52646a, c7215fB.j());
                        if (a10 != null) {
                            a(B22, c7215fB.j(), vj2, (com.android.tools.r8.graph.L2) null);
                            return ee2;
                        }
                        com.android.tools.r8.graph.M2 v22 = vj2.v2();
                        C4724u1 b13 = this.f52646a.b();
                        if (vj2.T1()) {
                            C8405mK k03 = vj2.k0();
                            if (k03.B2() == b13.f37887J4.f38249k && (F.b(b13, k03.C2()) || F.b(b13, (C10340xw0) k03.f54321f.get(1)))) {
                                ArrayList arrayList2 = vj2.f54321f;
                                while (true) {
                                    if (i10 >= arrayList2.size()) {
                                        i10 = -1;
                                        break;
                                    }
                                    C10340xw0 i11 = ((C10340xw0) arrayList2.get(i10)).i();
                                    if (i11.L() || i11.N()) {
                                        break;
                                    }
                                    i10++;
                                }
                                z11 = f55604f;
                                if (z11 && i10 < 0) {
                                    throw new AssertionError();
                                }
                                C10340xw0 c10340xw02 = (C10340xw0) vj2.f54321f.get(i10);
                                abstractC10561zE = c10340xw02.f53886c;
                                abstractC10561zE.getClass();
                                if (!(abstractC10561zE instanceof C9820uq)) {
                                    C10340xw0 a14 = c7215fB.a(c10340xw02.u(), c10340xw02.s());
                                    C9820uq c9820uq2 = new C9820uq(a14, a10.f53443a, C10115wd.f53538f);
                                    c10340xw0Arr[i10] = a14;
                                    if (c10340xw02.U() == 1) {
                                        final C9960vh K10 = c10340xw02.f53886c.K();
                                        if (K10.b() == vj2.b()) {
                                            ee2.d(new Predicate() {
                                                @Override
                                                public final boolean test(Object obj) {
                                                    return E.a(C9960vh.this, (AbstractC10561zE) obj);
                                                }
                                            });
                                            AbstractC10561zE next = ee2.next();
                                            if (!z11 && next != K10) {
                                                throw new AssertionError();
                                            }
                                            ee2.b(c9820uq2);
                                            ee2.a(new Predicate() {
                                                @Override
                                                public final boolean test(Object obj) {
                                                    return E.a(VJ.this, (AbstractC10561zE) obj);
                                                }
                                            });
                                        } else {
                                            c10340xw02.f53886c.d(c9820uq2);
                                        }
                                    } else {
                                        c9820uq2.b(vj2.getPosition());
                                        if (!z11 && ee2.n() != vj2) {
                                            throw new AssertionError();
                                        }
                                        ee2.previous();
                                        W5 b14 = vj2.b();
                                        W5 a15 = b14.z() ? ee2.a(c7215fB, z52) : b14;
                                        if (a15 != b14) {
                                            Y5 b15 = b14.b(b14.l().size());
                                            b15.previous();
                                            b15.add(c9820uq2);
                                            ee2 = a15.I();
                                            if (!z11 && ee2.h() != vj2) {
                                                throw new AssertionError();
                                            }
                                            ee2.next();
                                        } else {
                                            ee2.add(c9820uq2);
                                            if (!z11 && ee2.h() != vj2) {
                                                throw new AssertionError();
                                            }
                                            ee2.next();
                                        }
                                    }
                                }
                            }
                        }
                        if (v22 == this.f52646a.b().f38180w2) {
                            if (!f55604f) {
                                com.android.tools.r8.graph.G1 g12 = this.f52646a.b().f37922O4;
                                com.android.tools.r8.graph.A2 B23 = vj2.B2();
                                if (B23 != g12.f36320b && B23 != g12.f36321c) {
                                    throw new AssertionError();
                                }
                            }
                        } else if (v22 != this.f52646a.b().f38172v2) {
                            i10 = 1;
                        } else {
                            if (!f55604f && vj2.B2() != this.f52646a.b().f37999Z4.f36125a) {
                                throw new AssertionError();
                            }
                            i10 = 2;
                        }
                        z11 = f55604f;
                        if (z11) {
                        }
                        C10340xw0 c10340xw022 = (C10340xw0) vj2.f54321f.get(i10);
                        abstractC10561zE = c10340xw022.f53886c;
                        abstractC10561zE.getClass();
                        if (!(abstractC10561zE instanceof C9820uq)) {
                        }
                    }
                    if (!com.android.tools.r8.internal.X3.a((Object[]) c10340xw0Arr, new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return Objects.nonNull((C10340xw0) obj);
                        }
                    })) {
                        return ee2;
                    }
                    ee2.b(NJ.a(vj2.w2(), B22, B22.f36127i, vj2.d(), (List) AbstractC6483ap0.a(arrayList.stream(), new InterfaceC6268Yo0() {
                        @Override
                        public final Object a(Object obj, long j10) {
                            return E.a(c10340xw0Arr, (C10340xw0) obj, j10);
                        }
                    }).collect(Collectors.toList()), false));
                    return ee2;
                }
                return ee2;
            }
        }
        z10 = false;
        if (!this.f55605e.containsKey(B22)) {
        }
        ArrayList arrayList3 = vj2.f54321f;
        final C10340xw0[] c10340xw0Arr2 = new C10340xw0[arrayList3.size()];
        if (F.a(this.f52646a.b(), B22)) {
        }
        a10 = F.a(vj2, this.f52646a, c7215fB.j());
        if (a10 != null) {
        }
    }

    public static C10340xw0 a(C10340xw0[] c10340xw0Arr, C10340xw0 c10340xw0, long j10) {
        C10340xw0 c10340xw02 = c10340xw0Arr[(int) j10];
        return c10340xw02 != null ? c10340xw02 : c10340xw0;
    }

    public final void a(AbstractC4744v2 abstractC4744v2, H5 h52, AbstractC10561zE abstractC10561zE, com.android.tools.r8.graph.L2 l22) {
        String str;
        StringDiagnostic stringDiagnostic;
        if (!f55604f && !abstractC4744v2.p0() && !abstractC4744v2.r0()) {
            throw new AssertionError();
        }
        if (this.f55605e.a(abstractC4744v2) && this.f52646a.E().R()) {
            Origin origin = h52.f36317b.f36244d;
            String str2 = abstractC4744v2.p0() ? "field" : "method";
            if (l22 == null) {
                str = "what identifier string flows to ";
            } else {
                str = "what '" + ((Object) l22) + "' refers to, which flows to ";
            }
            String str3 = "Cannot determine " + str + abstractC4744v2.j0() + " that is specified in -identifiernamestring rules. Thus, not all identifier strings flowing to that " + str2 + " are renamed, which can cause resolution failures at runtime.";
            if (abstractC10561zE.getPosition().f() >= 1) {
                stringDiagnostic = new StringDiagnostic(str3, origin, new TextPosition(0L, abstractC10561zE.getPosition().f(), 1));
            } else {
                stringDiagnostic = new StringDiagnostic(str3, origin);
            }
            this.f52646a.E().f50691j.warning(stringDiagnostic);
        }
    }
}
