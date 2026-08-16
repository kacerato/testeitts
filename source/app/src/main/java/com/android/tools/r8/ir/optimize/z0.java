package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4612o2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.O1;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9617te;
import com.android.tools.r8.internal.AbstractC9694u30;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10106wa;
import com.android.tools.r8.internal.C10273xa;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10443yb;
import com.android.tools.r8.internal.C10546z9;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C4965Cb;
import com.android.tools.r8.internal.C5023Db;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5698Or0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6301Zd0;
import com.android.tools.r8.internal.C6440ab;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C7437ga;
import com.android.tools.r8.internal.C7549hB;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8779oc1;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C8938pa;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.C9132qj;
import com.android.tools.r8.internal.C9603tZ;
import com.android.tools.r8.internal.C9735uH0;
import com.android.tools.r8.internal.CE;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.G9;
import com.android.tools.r8.internal.InterfaceC10118we;
import com.android.tools.r8.internal.InterfaceC6494at;
import com.android.tools.r8.internal.InterfaceC8008jy;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.S60;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.W9;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.YV;
import com.android.tools.r8.internal.Z8;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class z0 extends AbstractC9617te {

    public static final boolean f54975i = true;

    public final com.android.tools.r8.androidapi.a f54976e;

    public final C4612o2 f54977f;

    public final O1 f54978g;

    public final boolean f54979h;

    public z0(C4798y c4798y) {
        super(c4798y);
        this.f54976e = c4798y.f38404S;
        C4612o2 c4612o2 = c4798y.b().f38120o6;
        this.f54977f = c4612o2;
        this.f54978g = c4798y.b().f38128p6;
        this.f54979h = c4798y.f38412e.a(c4612o2.f37530a).f40089c;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Map, java.lang.Object] */
    public final boolean a(C7215fB c7215fB, M2 m22, boolean z10) {
        Map map;
        H2 b10;
        C4798y c4798y = this.f52646a;
        C6300Zd c6300Zd = ((C11245i) c4798y.f()).f37255b;
        if (c6300Zd.f46303a.isEmpty() || (map = (Map) this.f52646a.f38410c.f37442c.get(m22)) == null || map.isEmpty() || (b10 = this.f52646a.b(m22)) == null) {
            return false;
        }
        FeatureSplit a10 = c6300Zd.a(b10.getReference(), c4798y.f38408a.g());
        if (z10 && !a10.isBase()) {
            a(c7215fB.j(), m22, "ClassLoader arg was null and service interface is in non-base feature");
            return true;
        }
        for (Map.Entry entry : map.entrySet()) {
            FeatureSplit featureSplit = (FeatureSplit) entry.getKey();
            if (!featureSplit.isBase()) {
                if (z10) {
                    a(c7215fB.j(), m22, "ClassLoader arg was null and META-INF/ service entry found in non-base feature");
                    return true;
                }
                if (featureSplit != a10) {
                    a(c7215fB.j(), m22, "META-INF/ service found in different feature from service interface");
                    return true;
                }
            }
            for (M2 m23 : (List) entry.getValue()) {
                if (c6300Zd.a(m23, c4798y.f38408a.g()) != a10) {
                    a(c7215fB.j(), m22, "Implementation found in different feature from service interface: " + ((Object) m23));
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0163, code lost:
    
        if (r3 != null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x016a, code lost:
    
        if (a(r0, r1, r4) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0126, code lost:
    
        if (r3 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0141, code lost:
    
        r16 = r13;
        r13 = r5;
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x013e, code lost:
    
        if ((r4 == r2 ? true : r0 == r2 ? false : com.android.tools.r8.internal.C6332Zs.a(r0, r2, r4, new com.android.tools.r8.internal.C6286Yx0(2))) == false) goto L110;
     */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0017 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        x0 x0Var;
        boolean z10;
        VJ vj2;
        List a10;
        List a11;
        List a12;
        List a13;
        VJ vj3;
        VJ vj4;
        VJ e02;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        C7549hB p10 = c7215fB.p();
        final HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        while (p10.hasNext()) {
            C7405gK i02 = p10.next().i0();
            if (i02 != null) {
                C4612o2 c4612o2 = this.f54977f;
                A2 B22 = i02.B2();
                if (B22 == c4612o2.f37530a || B22 == c4612o2.f37531b || B22 == c4612o2.f37532c) {
                    y0 a14 = a(c7215fB, i02);
                    if (a14 != null) {
                        if (this.f54979h) {
                            C8405mK c8405mK = a14.f54967e;
                            if (!c8405mK.d().B()) {
                                C10340xw0 d10 = c8405mK.d();
                                d10.getClass();
                                C9132qj c9132qj = C9132qj.f51861a;
                                Set c10 = AbstractC5513Ll0.c();
                                C10340xw0.a(c9132qj, d10, c10);
                                Iterator it = c10.iterator();
                                VJ vj5 = null;
                                VJ vj6 = null;
                                VJ vj7 = null;
                                while (true) {
                                    if (it.hasNext()) {
                                        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it.next();
                                        abstractC10561zE.getClass();
                                        if (!(abstractC10561zE instanceof C4)) {
                                            if (!abstractC10561zE.b().c(c8405mK.b()) || (e02 = abstractC10561zE.e0()) == null) {
                                                break;
                                            }
                                            if (!e02.B2().a(this.f54978g.f36671a)) {
                                                if (!e02.B2().a(this.f54978g.f36672b) || vj7 != null) {
                                                    break;
                                                }
                                                vj7 = e02;
                                            } else {
                                                if (vj6 != null) {
                                                    break;
                                                }
                                                if (vj5 != null) {
                                                    vj6 = e02;
                                                } else {
                                                    vj5 = e02;
                                                }
                                            }
                                        } else if (abstractC10561zE.d().B()) {
                                            break;
                                        }
                                    } else {
                                        W5 b10 = c8405mK.b();
                                        W5 b11 = vj5 != null ? vj5.b() : null;
                                        W5 b12 = vj6 != null ? vj6.b() : null;
                                        W5 b13 = vj7 != null ? vj7.b() : null;
                                        if (b11 != null && b13 != null) {
                                            if (b12 != null) {
                                                if (b11 != b12) {
                                                    if (a(b10, b11, b12)) {
                                                        W5 w52 = b12;
                                                        b12 = vj5.b();
                                                        b11 = w52;
                                                    } else {
                                                        VJ vj8 = vj6;
                                                        vj6 = vj5;
                                                        vj5 = vj8;
                                                    }
                                                    if (b13 == b12) {
                                                        CE ce2 = b13.f45293f;
                                                        ce2.getClass();
                                                        Y5 y52 = new Y5(ce2.f39166b, vj7);
                                                        while (true) {
                                                            if (!y52.hasNext()) {
                                                                vj4 = null;
                                                                break;
                                                            }
                                                            if (y52.next() == vj5) {
                                                                vj4 = vj5;
                                                                break;
                                                            }
                                                        }
                                                    } else {
                                                        InterfaceC6494at interfaceC6494at = InterfaceC6494at.f46642a;
                                                    }
                                                }
                                            }
                                            if (b11 == b13) {
                                                CE ce3 = b13.f45293f;
                                                ce3.getClass();
                                                Y5 y53 = new Y5(ce3.f39166b, vj7);
                                                while (true) {
                                                    if (!y53.hasNext()) {
                                                        vj3 = null;
                                                        break;
                                                    }
                                                    if (y53.next() == vj5) {
                                                        vj3 = vj5;
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        if ((b11 == null || !a(b10, b11, b11)) && ((b13 == null || !a(b10, b13, b13)) && (b12 == null || !a(b10, b12, b12)))) {
                                            x0Var = new x0(vj5, vj7, vj6);
                                        }
                                    }
                                }
                            }
                        }
                        x0Var = null;
                        hashMap.put(a14.f54963a, c7215fB.a(0L, AbstractC8999pu0.m()));
                        C8405mK c8405mK2 = a14.f54964b;
                        if (c8405mK2 != null) {
                            C10340xw0 d11 = c8405mK2.d();
                            d11.getClass();
                            C9132qj c9132qj2 = C9132qj.f51861a;
                            Set c11 = AbstractC5513Ll0.c();
                            C10340xw0.a(c9132qj2, d11, c11);
                            if (c11.stream().allMatch(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return com.android.tools.r8.ir.optimize.z0.a(Map.this, (AbstractC10561zE) obj);
                                }
                            })) {
                                hashMap.put(a14.f54964b, c7215fB.a(0L, AbstractC8999pu0.m()));
                            }
                        }
                        if (x0Var != null) {
                            hashMap.put(a14.f54967e, c7215fB.a(0L, AbstractC8999pu0.m()));
                            VJ vj9 = x0Var.f54959a;
                            if (vj9 != null) {
                                hashMap.put(vj9, new C9126qh(c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null), !a14.f54966d.isEmpty() ? 1L : 0L));
                            }
                            VJ vj10 = x0Var.f54960b;
                            if (vj10 != null) {
                                B60 position = vj10.getPosition();
                                if (a14.f54966d.isEmpty()) {
                                    hashMap.put(x0Var.f54960b, c7215fB.a(0L, AbstractC8999pu0.m()));
                                    M2 m22 = this.f52647b.f38181w3;
                                    C4798y c4798y = this.f52646a;
                                    m22.getClass();
                                    C9603tZ c9603tZ = new C9603tZ(m22, c7215fB.a(AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c4798y), (C4515j0) null));
                                    A2 a22 = this.f52647b.f38189x3;
                                    a12 = C8779oc1.a(new Object[]{c9603tZ.d()});
                                    QJ qj2 = new QJ(a22, null, a12, false);
                                    C5698Or0 c5698Or0 = new C5698Or0(c9603tZ.d());
                                    c9603tZ.b(position);
                                    qj2.b(position);
                                    c5698Or0.b(position);
                                    VJ vj11 = x0Var.f54960b;
                                    a13 = C8779oc1.a(new Object[]{c9603tZ, qj2, c5698Or0});
                                    hashMap2.put(vj11, a13);
                                } else {
                                    M2 type = ((com.android.tools.r8.graph.E0) a14.f54966d.get(0)).getType();
                                    C4798y c4798y2 = this.f52646a;
                                    type.getClass();
                                    C9603tZ c9603tZ2 = new C9603tZ(type, c7215fB.a(AbstractC8999pu0.a(type, C8854p10.b(), (C4798y<?>) c4798y2), x0Var.f54960b.q()));
                                    hashMap.put(x0Var.f54960b, c9603tZ2);
                                    C4724u1 c4724u1 = this.f52647b;
                                    z10 = false;
                                    A2 a15 = c4724u1.a(type, c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.f38067i1);
                                    a10 = C8779oc1.a(new Object[]{c9603tZ2.d()});
                                    QJ qj3 = new QJ(a15, null, a10, false);
                                    qj3.b(position);
                                    VJ vj12 = x0Var.f54960b;
                                    a11 = C8779oc1.a(new Object[]{qj3});
                                    hashMap2.put(vj12, a11);
                                    vj2 = x0Var.f54961c;
                                    if (vj2 != null) {
                                        hashMap.put(vj2, new C9126qh(c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null), a14.f54966d.size() > 1 ? true : z10 ? 1L : 0L));
                                    }
                                }
                            }
                            z10 = false;
                            vj2 = x0Var.f54961c;
                            if (vj2 != null) {
                            }
                        } else {
                            a(c7215fB, abstractC6931dX, c5035Df, identityHashMap, hashMap, a14);
                        }
                    }
                }
            }
        }
        if (hashMap.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        C10696a c10696a = new C10696a();
        C7549hB p11 = c7215fB.p();
        while (p11.hasNext()) {
            AbstractC10561zE next = p11.next();
            AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) hashMap.get(next);
            if (abstractC10561zE2 != null) {
                p11.f48482c.a(abstractC10561zE2, c10696a);
                List list = (List) hashMap2.get(next);
                if (list != null) {
                    p11.f48482c = p11.f48482c.a(p11.f48483d, p11.f48481b, list, this.f52648c);
                    if (((AbstractC10561zE) AT.b(list)).m2()) {
                        while (p11.f48482c.hasNext()) {
                            p11.f48482c.next();
                            p11.f48482c.s();
                        }
                    }
                }
            }
        }
        c7215fB.a(c10696a, C6628bi.b());
        c7215fB.x();
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        if (f54975i || c7215fB.b(this.f52646a)) {
            return InterfaceC10118we.f53548b;
        }
        throw new AssertionError();
    }

    public final void a(H5 h52, M2 m22, String str) {
        String str2;
        C11245i c11245i = (C11245i) this.f52646a.f();
        if (!c11245i.f57410y.contains(this.f54977f.f37530a)) {
            if (!c11245i.f57410y.contains(this.f54977f.f37531b)) {
                return;
            }
        }
        C5094Ef0 c5094Ef0 = this.f52646a.E().f50691j;
        Origin origin = h52.f36317b.f36244d;
        if (m22 == null) {
            str2 = "";
        } else {
            str2 = " of type " + m22.D0();
        }
        ServiceLoaderRewriterDiagnostic serviceLoaderRewriterDiagnostic = new ServiceLoaderRewriterDiagnostic(origin, "Could not inline ServiceLoader.load" + str2 + ": " + str);
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, serviceLoaderRewriterDiagnostic);
        }
    }

    public static boolean a(W5 w52, W5 w53, W5 w54) {
        if (w52 == w53) {
            return false;
        }
        if (w52 == w54) {
            return true;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.f46126b.add(w52);
        c6286Yx0.b((Iterable) w53.u());
        while (c6286Yx0.b()) {
            W5 w55 = (W5) c6286Yx0.c();
            if (w55 == w54) {
                return true;
            }
            c6286Yx0.b((Iterable) w55.u());
        }
        return false;
    }

    public final void a(I2 i22, final List list, final M2 m22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58115e = i22;
        n10.f58123m = this.f52646a.f38405T;
        com.android.tools.r8.androidapi.a aVar = this.f54976e;
        List a10 = AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m23;
                m23 = ((com.android.tools.r8.graph.E0) obj).f36245e;
                return m23;
            }
        });
        aVar.getClass();
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        n10.f58124n = aVar.a(a10);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.z0.this.a(m22, list, a22);
            }
        };
    }

    @Override
    public final String a() {
        return "ServiceLoaderRewriter";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52646a.f().i() && abstractC6931dX.f() && this.f52648c.f50624O && c7215fB.f47902i.a(12) && c7215fB.f47902i.a(38) && c7215fB.f47902i.a(40);
    }

    public final y0 a(C7215fB c7215fB, C7405gK c7405gK) {
        boolean z10 = false;
        C10340xw0 i10 = c7405gK.b(0).i();
        if (!i10.d(new C9735uH0())) {
            a(c7215fB.j(), (M2) null, "The service loader type could not be determined");
            return null;
        }
        M2 m22 = i10.r().F().f49303l;
        if (!c7405gK.B2().a(this.f54977f.f37531b)) {
            a(c7215fB.j(), m22, "Inlining is only supported for `java.util.ServiceLoader.load(java.lang.Class, java.lang.ClassLoader)`");
            return null;
        }
        C10340xw0 d10 = c7405gK.d();
        if (d10.C() && !d10.B()) {
            C8405mK k02 = d10.Z().k0();
            if (k02 != null && k02.B2().a(this.f54977f.f37533d)) {
                if (!this.f52648c.f50627P) {
                    C11245i c11245i = (C11245i) this.f52646a.f();
                    if (!C11245i.f57385J) {
                        c11245i.c();
                    }
                    if (c11245i.f57407v.a(m22, c11245i.j(), c11245i)) {
                        a(c7215fB.j(), m22, "The service loader type is kept");
                        return null;
                    }
                }
                com.android.tools.r8.graph.E0 g10 = this.f52646a.g(m22);
                if (g10 == null) {
                    a(c7215fB.j(), m22, "Service type could not be resolved");
                    return null;
                }
                if (!g10.w1()) {
                    a(c7215fB.j(), m22, "Service type must be public");
                    return null;
                }
                C10340xw0 i11 = c7405gK.u2().i();
                if (i11.j()) {
                    a(c7215fB.j(), m22, "The java.lang.ClassLoader argument must be defined locally as null or " + ((Object) m22) + ".class.getClassLoader()");
                    return null;
                }
                AbstractC8999pu0 u10 = i11.u();
                u10.getClass();
                boolean z11 = u10 instanceof C6301Zd0;
                C8405mK k03 = i11.r().k0();
                if (k03 != null && k03.f54321f.size() == 1 && k03.C2().i().I() && k03.C2().i().r().F().f49303l.a(m22)) {
                    z10 = true;
                }
                if (!z11 && !z10) {
                    a(c7215fB.j(), m22, "The java.lang.ClassLoader argument must be defined locally as null or " + ((Object) m22) + ".class.getClassLoader()");
                    return null;
                }
                C4552l c4552l = this.f52646a.f38410c;
                if (a(c7215fB, m22, z11)) {
                    return null;
                }
                AbstractC7552hC<M2> a10 = c4552l.a(m22);
                ArrayList arrayList = new ArrayList(a10.size());
                for (M2 m23 : a10) {
                    com.android.tools.r8.graph.E0 g11 = this.f52646a.g(m23);
                    if (g11 == null) {
                        a(c7215fB.j(), m22, "Unable to find definition for service implementation " + m23.D0());
                        return null;
                    }
                    if (this.f52646a.a(m23, m22).a()) {
                        a(c7215fB.j(), m22, "Implementation is not a subtype of the service: " + m23.D0());
                        return null;
                    }
                    C4516j1 a11 = g11.a(M2.f36589h);
                    if (a11 == null) {
                        a(c7215fB.j(), m22, "Implementation has no default constructor: " + m23.D0());
                        return null;
                    }
                    if (!AbstractC4458g.d(a11.getAccessFlags().f37196b, 1)) {
                        a(c7215fB.j(), m22, "Implementation's default constructor is not public: " + m23.D0());
                        return null;
                    }
                    arrayList.add(g11);
                }
                return new y0(c7405gK, k03, m22, arrayList, k02);
            }
            a(c7215fB.j(), m22, "The returned ServiceLoader instance must only be used in a call to `java.util.Iterator java.lang.ServiceLoader.iterator()`, but found other usages");
            return null;
        }
        a(c7215fB.j(), m22, "The returned ServiceLoader instance must only be used in a call to `java.util.Iterator java.lang.ServiceLoader.iterator()`");
        return null;
    }

    public static boolean a(Map map, AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C4) || map.containsKey(abstractC10561zE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final C7215fB c7215fB, final AbstractC6931dX abstractC6931dX, final C5035Df c5035Df, IdentityHashMap identityHashMap, HashMap hashMap, final y0 y0Var) {
        hashMap.put(y0Var.f54967e, new C7405gK(((C4516j1) identityHashMap.computeIfAbsent(y0Var.f54965c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return com.android.tools.r8.ir.optimize.z0.this.a(y0Var, abstractC6931dX, c5035Df, c7215fB, (M2) obj);
            }
        })).getReference(), y0Var.f54967e.d(), Collections.EMPTY_LIST));
    }

    public final C4516j1 a(y0 y0Var, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C7215fB c7215fB, M2 m22) {
        C4516j1 a10 = a(m22, y0Var.f54966d, abstractC6931dX, c5035Df);
        if (this.f52646a.E().f50697l instanceof ClassFileConsumer) {
            a10.a(c7215fB.j().d().P0());
        }
        return a10;
    }

    public final C4516j1 a(final M2 m22, final ArrayList arrayList, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        final I2 a10 = this.f52646a.b().a(this.f52646a.b().f37907M3, new M2[0]);
        H5 b10 = this.f52646a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58162O;
                return bVar;
            }
        }, c5035Df.a(), this.f52646a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.z0.this.a(a10, arrayList, m22, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC6931dX.b(b10);
        abstractC6931dX.d().c(b10, c5035Df.f39582c);
        return b10.d();
    }

    public final AbstractC4497i0 a(M2 m22, List list, A2 a22) {
        C4724u1 b10 = this.f52646a.b();
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        W9[] w9Arr = {c8103ka, new C10546z9(list.size(), EnumC5477Kw0.f41825c), new C10273xa(b10.a(1, m22))};
        AbstractC9694u30.a(3, w9Arr);
        c7051eC.a(3, w9Arr);
        for (int i11 = 0; i11 < list.size(); i11++) {
            C8106kb.a aVar = C8106kb.a.Dup;
            W9[] w9Arr2 = {new C8106kb(aVar), new C10546z9(i11, EnumC5477Kw0.f41825c), new C10106wa(((com.android.tools.r8.graph.E0) list.get(i11)).f36245e), new C8106kb(aVar), new C7437ga(183, b10.a(((com.android.tools.r8.graph.E0) list.get(i11)).f36245e, b10.a(b10.f37905M1, new M2[0]), b10.f38067i1), false), new Z8(YV.f45995b)};
            AbstractC9694u30.a(6, w9Arr2);
            c7051eC.a(6, w9Arr2);
        }
        C7437ga c7437ga = new C7437ga(184, b10.f38087k5.f36927a, false);
        C7437ga c7437ga2 = new C7437ga(185, b10.a(b10.f37942R3, b10.a(b10.f37907M3, new M2[0]), b10.b("iterator")), true);
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        W9[] w9Arr3 = {c7437ga, c7437ga2, c8103ka2, new C6440ab(enumC5477Kw0)};
        AbstractC9694u30.a(4, w9Arr3);
        c7051eC.a(4, w9Arr3);
        C8103ka c8103ka3 = new C8103ka();
        W9[] w9Arr4 = {c8103ka3, G9.V().a((S60) InterfaceC8008jy.b(b10.f38173v3)).a(), new C10443yb(enumC5477Kw0, 0), new C10106wa(b10.f37969V2), new C8106kb(C8106kb.a.Dup), new C8938pa(enumC5477Kw0, 0), new C7437ga(182, b10.f37908M4.f38266b, false), new C8938pa(enumC5477Kw0, 0), new C7437ga(183, b10.a(b10.f37969V2, b10.a(b10.f37905M1, b10.f38052g2, b10.f38173v3), b10.f38067i1), false), new C4965Cb()};
        AbstractC9694u30.a(10, w9Arr4);
        c7051eC.a(10, w9Arr4);
        return new com.android.tools.r8.graph.G(null, 5, 1, c7051eC.a(), new C5920Sm0(new C5023Db(c8103ka, c8103ka2, new C5920Sm0(b10.f38173v3), new C5920Sm0(c8103ka3))), C6190Xe0.f45779e);
    }
}
