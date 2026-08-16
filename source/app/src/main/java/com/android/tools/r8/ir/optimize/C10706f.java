package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.AssertionsConfiguration;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.K2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.A4;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC7670hw;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4960Bz;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C5634No0;
import com.android.tools.r8.internal.C5698Or0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6012Uc0;
import com.android.tools.r8.internal.C6993dt;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C7549hB;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C9420sR;
import com.android.tools.r8.internal.EB;
import com.android.tools.r8.internal.J21;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.ir.optimize.C10706f;
import java.io.UTFDataFormatException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class C10706f {

    public static final boolean f54864g = true;

    public final C4798y f54865a;

    public final C4724u1 f54866b;

    public final C10704e f54867c;

    public final List f54868d;

    public final C10704e f54869e;

    public final boolean f54870f;

    public C10706f(final C4798y c4798y) {
        this.f54865a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f54866b = b10;
        boolean a10 = a(c4798y.E());
        this.f54870f = a10;
        if (a10) {
            this.f54867c = new C10704e(c4798y.E().f50681f1.f38522a, b10);
            this.f54868d = (List) c4798y.E().f50681f1.f38523b.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10706f.a(C4798y.this, (AssertionsConfiguration) obj);
                }
            }).collect(Collectors.toList());
            this.f54869e = a(c4798y.b().f38007a5.f55312e.f55296a);
        } else {
            this.f54867c = null;
            this.f54868d = null;
            this.f54869e = null;
        }
    }

    public static C10704e a(C4798y c4798y, AssertionsConfiguration assertionsConfiguration) {
        return new C10704e(assertionsConfiguration, c4798y.b());
    }

    public static boolean a(C8570nJ c8570nJ) {
        boolean z10;
        A4 a42 = c8570nJ.f50681f1;
        if (a42 != null) {
            if (a42.f38523b.size() == 0) {
                z10 = a42.f38522a.isPassthrough();
            } else {
                z10 = a42.f38523b.size() == 1 && ((AssertionsConfiguration) a42.f38523b.get(0)).getScope() == AssertionsConfiguration.a.f35134b && ((AssertionsConfiguration) a42.f38523b.get(0)).isPassthrough();
            }
            if (!z10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C4516j1 c4516j1, final C7215fB c7215fB) {
        C4516j1 L02;
        boolean z10;
        C7549hB p10;
        C10704e a10 = a(c4516j1.B0());
        if (a10.f54858a.isPassthrough()) {
            return false;
        }
        if (c4516j1.f1()) {
            L02 = c4516j1;
        } else {
            com.android.tools.r8.graph.E0 g10 = this.f54865a.g(c4516j1.B0());
            if (g10 == null) {
                return false;
            }
            L02 = g10.L0();
        }
        final C6012Uc0 c6012Uc0 = new C6012Uc0();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final Set c10 = AbstractC5513Ll0.c();
        final C6012Uc0 c6012Uc02 = new C6012Uc0();
        if (a10.f54858a.isAssertionHandler()) {
            final C9420sR c9420sR = new C9420sR(new Supplier() {
                @Override
                public final Object get() {
                    return C10706f.a(C7215fB.this);
                }
            });
            c7215fB.f47897d.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10706f.this.a(c10, c9420sR, c6012Uc0, identityHashMap, c6012Uc02, (W5) obj);
                }
            });
        }
        if (!f54864g && c6012Uc0.f44806h != identityHashMap.size()) {
            throw new AssertionError();
        }
        int i10 = 1;
        if (L02 != null) {
            L02.L0();
            if (L02.f37320m.z()) {
                z10 = true;
                p10 = c7215fB.p();
                boolean z11 = false;
                while (p10.hasNext()) {
                    AbstractC10561zE next = p10.next();
                    if (next.P1()) {
                        VJ e02 = next.e0();
                        if (e02.B2() == this.f54866b.f37922O4.f36319a) {
                            if (c4516j1.B0() == this.f54866b.f38007a5.f55312e.f55296a) {
                                if (p10.hasNext() && a10.f54858a.isCompileTimeDisabled()) {
                                    AbstractC10561zE next2 = p10.next();
                                    if (next2.e() && next2.L0().getField().f38297f == this.f54866b.f38007a5.f55312e.f55296a && next2.L0().getField().f38298g == this.f54866b.f38099m1 && e02.d().W() == i10 && e02.d().V() == 0 && e02.d().Z() == next2) {
                                        p10.i();
                                        AbstractC10561zE previous = p10.previous();
                                        if (!f54864g && previous != e02) {
                                            throw new AssertionError();
                                        }
                                        p10.i();
                                    } else {
                                        AbstractC10561zE previous2 = p10.previous();
                                        boolean z12 = f54864g;
                                        if (!z12 && previous2 != next2) {
                                            throw new AssertionError();
                                        }
                                        AbstractC10561zE previous3 = p10.previous();
                                        if (!z12 && previous3 != e02) {
                                            throw new AssertionError();
                                        }
                                        AbstractC10561zE next3 = p10.next();
                                        if (!z12 && next3 != e02) {
                                            throw new AssertionError();
                                        }
                                        p10.a(c7215fB.a(0, (C4515j0) null), (C10696a) null);
                                    }
                                } else {
                                    p10.a(c7215fB.a(a10.f54858a.isCompileTimeEnabled() ? 1 : 0, (C4515j0) null), (C10696a) null);
                                }
                            } else {
                                p10.a(c7215fB.a(0, next.q()), (C10696a) null);
                            }
                        }
                    } else if (next.e()) {
                        C5634No0 L03 = next.L0();
                        if (z10 && a(L03)) {
                            p10.remove();
                        }
                    } else if (next instanceof C5576Mo0) {
                        C5576Mo0 K02 = next.K0();
                        if (z10 && a(K02) && !a10.f54858a.isAssertionHandler()) {
                            p10.a(c7215fB.a(a10.f54858a.isCompileTimeDisabled() ? 1 : 0, next.q()), (C10696a) null);
                        }
                        if (K02.getField() == this.f54866b.f38007a5.f55312e.f55297b && !a10.f54858a.isAssertionHandler()) {
                            p10.a(c7215fB.a((this.f54869e.f54858a.isCompileTimeDisabled() ? 1 : 0) ^ (i10 == true ? 1 : 0), next.q()), (C10696a) null);
                        }
                    }
                    if (a10.f54858a.isAssertionHandler()) {
                        if (next.H1()) {
                            EB V10 = next.V();
                            if (c6012Uc0.containsKey(V10)) {
                                boolean z13 = (((Boolean) c6012Uc0.get(V10)).booleanValue() ? 1 : 0) ^ (i10 == true ? 1 : 0);
                                if (EB.f39788m) {
                                    V10.getClass();
                                } else if (!V10.x2()) {
                                    throw new AssertionError();
                                }
                                V10.b(C8704o7.a(z13)).T();
                                C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(0);
                                c10340xw0.f53887d.remove(V10);
                                c10340xw0.f53888e = null;
                                p10.a(new C4960Bz(), (C10696a) null);
                                z11 = i10 == true ? 1 : 0;
                            }
                            if (c6012Uc02.containsKey(V10)) {
                                boolean z14 = (((Boolean) c6012Uc02.get(V10)).booleanValue() ? 1 : 0) ^ (i10 == true ? 1 : 0);
                                if (EB.f39788m) {
                                    V10.getClass();
                                } else if (!V10.x2()) {
                                    throw new AssertionError();
                                }
                                V10.b(C8704o7.a(z14)).T();
                                C10340xw0 c10340xw02 = (C10340xw0) V10.f54321f.get(0);
                                c10340xw02.f53887d.remove(V10);
                                c10340xw02.f53888e = null;
                                p10.a(new C4960Bz(), (C10696a) null);
                                z11 = i10 == true ? 1 : 0;
                            } else {
                                continue;
                            }
                        } else if (next.m2()) {
                            C5698Or0 R02 = next.R0();
                            if (identityHashMap.containsKey(R02)) {
                                W5 b10 = R02.b();
                                C4724u1 c4724u1 = this.f54866b;
                                if (!C10704e.f54857c && !a10.f54858a.isAssertionHandler()) {
                                    throw new AssertionError();
                                }
                                A2 a11 = c4724u1.a(a10.f54858a.getAssertionHandler());
                                C10340xw0 c10340xw03 = (C10340xw0) R02.f54321f.get(0);
                                int i11 = AbstractC7552hC.f48487c;
                                p10.a(new C7405gK(a11, null, new C5920Sm0(c10340xw03)), (C10696a) null);
                                C4960Bz c4960Bz = new C4960Bz();
                                c4960Bz.b(R02.getPosition());
                                b10.g((W5) identityHashMap.get(R02));
                                p10.add(c4960Bz);
                            }
                        }
                    }
                    i10 = 1;
                }
                return z11;
            }
        }
        z10 = false;
        p10 = c7215fB.p();
        boolean z112 = false;
        while (p10.hasNext()) {
        }
        return z112;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0082, code lost:
    
        if (com.android.tools.r8.ir.optimize.C10706f.f54864g != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0088, code lost:
    
        if (r3.a() == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0091, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0008, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10704e a(M2 m22) {
        C10704e c10704e = this.f54867c;
        for (C10704e c10704e2 : this.f54868d) {
            int i10 = AbstractC10702d.f54854a[c10704e2.f54858a.getScope().ordinal()];
            if (i10 == 1) {
                L2 l22 = c10704e2.f54859b;
                if (l22.f36561e == 0) {
                    if (!m22.f36592f.c(this.f54866b.f37854F)) {
                    }
                } else {
                    L2 l23 = m22.f36592f;
                    l23.getClass();
                    if (l23.b(l22.f36562f)) {
                    }
                }
            } else if (i10 == 2) {
                if (m22.f36592f.equals(c10704e2.f54859b)) {
                    c10704e = c10704e2;
                }
                L2 l24 = c10704e2.f54859b;
                L2 l25 = m22.f36592f;
                if (l25 != l24) {
                    if (l25.f36561e < l24.f36561e) {
                        continue;
                    } else {
                        K2 k22 = new K2(0, l24);
                        K2 k23 = new K2(0, l25);
                        while (true) {
                            try {
                                if (!k22.a()) {
                                    break;
                                }
                                char b10 = k22.b();
                                char b11 = k23.b();
                                if (b10 != ';' || b11 != '$') {
                                    if (b10 != b11) {
                                        break;
                                    }
                                } else {
                                    while (k23.a()) {
                                        if (k23.b() == '/') {
                                            break;
                                        }
                                    }
                                }
                            } catch (UTFDataFormatException unused) {
                                continue;
                            }
                        }
                    }
                }
            } else if (i10 != 3) {
                throw new C5417Jv0();
            }
            c10704e = c10704e2;
        }
        if (f54864g || c10704e != null) {
            return c10704e;
        }
        throw new AssertionError();
    }

    public static C6993dt a(C7215fB c7215fB) {
        return new C6993dt(c7215fB, 1);
    }

    public final void a(Set set, C9420sR c9420sR, Map map, Map map2, final Map map3, W5 w52) {
        EB a10;
        if (set.contains(w52) || (a10 = a(w52)) == null) {
            return;
        }
        boolean a11 = a(((C10340xw0) a10.f54321f.get(0)).r().K0());
        boolean z10 = !a11;
        if (!EB.f39788m && !a10.x2()) {
            throw new AssertionError();
        }
        W5 b10 = a10.b(C8704o7.a(z10));
        C6993dt c6993dt = (C6993dt) c9420sR.a(c9420sR.f52359b);
        c6993dt.getClass();
        List list = (List) c6993dt.a(b10, new ArrayList());
        Iterator it = list.iterator();
        C5698Or0 c5698Or0 = null;
        C5698Or0 c5698Or02 = null;
        while (true) {
            if (!it.hasNext()) {
                c5698Or0 = c5698Or02;
                break;
            }
            W5 w53 = (W5) it.next();
            if (w53.i().g2()) {
                break;
            }
            if (w53.i().m2()) {
                if (c5698Or02 != null) {
                    break;
                } else {
                    c5698Or02 = w53.i().R0();
                }
            }
        }
        if (c5698Or0 != null) {
            map.put(a10, Boolean.valueOf(z10));
            if (!EB.f39788m && !a10.x2()) {
                throw new AssertionError();
            }
            map2.put(c5698Or0, a10.b(C8704o7.a(a11)));
            list.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10706f.this.a(map3, (W5) obj);
                }
            });
            set.addAll(list);
        }
    }

    public final void a(Map map, W5 w52) {
        EB a10 = a(w52);
        if (a10 != null) {
            map.put(a10, Boolean.valueOf(!a(((C10340xw0) a10.f54321f.get(0)).r().K0())));
        }
    }

    public final boolean a(AbstractC7670hw abstractC7670hw) {
        return abstractC7670hw.getField().t0() == this.f54866b.f37890K0 && abstractC7670hw.getField().getType() == this.f54866b.f37849E1;
    }

    public final EB a(W5 w52) {
        if (!w52.i().H1()) {
            return null;
        }
        EB V10 = w52.i().V();
        if (V10.x2() && ((C10340xw0) V10.f54321f.get(0)).d(new J21())) {
            C5576Mo0 K02 = ((C10340xw0) V10.f54321f.get(0)).r().K0();
            if ((a(K02) || K02.getField() == this.f54866b.f38007a5.f55312e.f55297b) && K02.f54320e.C() && !K02.f54320e.B()) {
                return V10;
            }
        }
        return null;
    }
}
