package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4555l2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AE;
import com.android.tools.r8.internal.AbstractC10051wB;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC4982Ch;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8291lh;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C7942jc;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8769oZ;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.R5;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.XC0;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class F {

    public static final boolean f55609a = true;

    public static boolean a(C8769oZ c8769oZ, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == c8769oZ;
    }

    public static boolean b(C4724u1 c4724u1, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (!i10.d(new XC0())) {
            return false;
        }
        C8405mK k02 = i10.f53886c.k0();
        com.android.tools.r8.graph.G1 g12 = c4724u1.f37922O4;
        return g12.f36334p.contains(k02.B2());
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        int w02 = a22.w0();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38180w2;
        if (m22 == m23) {
            if (w02 != 0 && w02 <= 3) {
                if (w02 == 1) {
                    com.android.tools.r8.graph.M2 m24 = a22.f36127i.f36440e;
                    if (m24 != m23 && m24 != c4724u1.f37818A2) {
                        return false;
                    }
                } else if (w02 == 2) {
                    if (a22.f36127i.f36440e != c4724u1.f37826B2) {
                        return false;
                    }
                } else if (a22.f36127i.f36440e != m23) {
                    return false;
                }
                com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
                if (m2Arr[0] != c4724u1.f38052g2) {
                    return false;
                }
                if (w02 == 2 && m2Arr[1] != c4724u1.f38100m2) {
                    return false;
                }
                if (w02 != 3 || m2Arr[1] == c4724u1.f37849E1 || m2Arr[2] == c4724u1.f38196y2) {
                }
            }
            return false;
        }
        com.android.tools.r8.graph.L2 l22 = m22.f36592f;
        if (l22 == c4724u1.f38035e1 || l22 == c4724u1.f38043f1) {
            if (w02 != 2) {
                return false;
            }
            com.android.tools.r8.graph.I2 i22 = a22.f36127i;
            if (i22.f36440e != m22) {
                return false;
            }
            com.android.tools.r8.graph.M2[] m2Arr2 = i22.f36441f.f36675b;
            if (m2Arr2[0] != m23 || m2Arr2[1] != c4724u1.f38052g2) {
                return false;
            }
        } else if (l22 == c4724u1.f38051g1) {
            if (w02 != 3) {
                return false;
            }
            com.android.tools.r8.graph.I2 i23 = a22.f36127i;
            if (i23.f36440e != m22) {
                return false;
            }
            com.android.tools.r8.graph.M2[] m2Arr3 = i23.f36441f.f36675b;
            if (m2Arr3[0] != m23 || m2Arr3[1] != m23 || m2Arr3[2] != c4724u1.f38052g2) {
                return false;
            }
        } else {
            if (w02 != 2 && w02 != 3) {
                return false;
            }
            if (w02 == 2) {
                if (a22.f36127i.f36440e != c4724u1.f37818A2) {
                    return false;
                }
            } else if (a22.f36127i.f36440e != c4724u1.f37826B2) {
                return false;
            }
            com.android.tools.r8.graph.M2[] m2Arr4 = a22.f36127i.f36441f.f36675b;
            if (m2Arr4[0] != m23 || m2Arr4[1] != c4724u1.f38052g2) {
                return false;
            }
            if (w02 == 3 && m2Arr4[2] != c4724u1.f38100m2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0235 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0236  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC10051wB a(VJ vj2, InterfaceC4403d1 interfaceC4403d1, H5 h52) {
        com.android.tools.r8.graph.E0 a10;
        com.android.tools.r8.graph.O2 o22;
        C4724u1 b10 = interfaceC4403d1.b();
        ArrayList arrayList = vj2.f54321f;
        if (vj2.R1()) {
            C7405gK i02 = vj2.i0();
            com.android.tools.r8.graph.G1 g12 = b10.f37922O4;
            com.android.tools.r8.graph.A2 B22 = i02.B2();
            if (B22 == g12.f36320b || B22 == g12.f36321c) {
                return AbstractC10051wB.a(AbstractC4982Ch.a(i02, interfaceC4403d1));
            }
        }
        com.android.tools.r8.graph.A2 a22 = null;
        r5 = null;
        r5 = null;
        com.android.tools.r8.graph.M2 o02 = null;
        if (vj2.T1()) {
            C8405mK k02 = vj2.k0();
            if (k02.B2() == b10.f37887J4.f38249k && (b(b10, k02.C2()) || b(b10, (C10340xw0) k02.f54321f.get(1)))) {
                ArrayList arrayList2 = k02.f54321f;
                int i10 = 0;
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
                if (i10 >= 0) {
                    C10340xw0 i12 = ((C10340xw0) k02.f54321f.get(i10)).i();
                    boolean z10 = f55609a;
                    if (!z10 && i12.j()) {
                        throw new AssertionError();
                    }
                    if (!z10 && !i12.L() && !i12.N()) {
                        throw new AssertionError();
                    }
                    if (i12.L()) {
                        String l22 = i12.f53886c.K().u2().toString();
                        String H10 = C4932Bl.E(l22) ? C4932Bl.H(l22) : null;
                        if (H10 != null) {
                            o02 = interfaceC4403d1.b().d(H10);
                        }
                    } else if (i12.N()) {
                        com.android.tools.r8.graph.J2 j22 = i12.f53886c.O().f52961l;
                        j22.getClass();
                        if (j22 instanceof com.android.tools.r8.graph.M2) {
                            o02 = j22.o0();
                        }
                    }
                    return AbstractC10051wB.b(o02);
                }
            }
        }
        if (arrayList.size() == 1) {
            return null;
        }
        Object[] objArr = vj2.v2().f36592f == b10.f38051g1;
        C10340xw0 c10340xw0 = (C10340xw0) arrayList.get(objArr != false ? 2 : 1);
        if (c10340xw0.L()) {
            C10340xw0 c10340xw02 = (C10340xw0) arrayList.get(0);
            if (!c10340xw02.I()) {
                return null;
            }
            com.android.tools.r8.graph.M2 m22 = c10340xw02.n().F().f49303l;
            if (m22.E0() || (a10 = interfaceC4403d1.a(m22, h52)) == null) {
                return null;
            }
            com.android.tools.r8.graph.L2 u22 = c10340xw0.n().K().u2();
            int size = arrayList.size();
            if (objArr == true) {
                C10340xw0 c10340xw03 = (C10340xw0) arrayList.get(1);
                if (c10340xw03.I()) {
                    return AbstractC10051wB.b(a(a10, u22.toString(), c10340xw03.n().F().f49303l));
                }
                return null;
            }
            if (size == 2) {
                return AbstractC10051wB.b(a(a10, u22.toString(), (com.android.tools.r8.graph.M2) null));
            }
            if (!f55609a && size != 3) {
                throw new AssertionError();
            }
            C10340xw0 c10340xw04 = (C10340xw0) arrayList.get(2);
            ArrayList arrayList3 = new ArrayList();
            if (!c10340xw04.j() && c10340xw04.f53886c.t1() && c10340xw04.f53886c.D().f49274k == b10.f38100m2) {
                while (!c10340xw04.j() && c10340xw04.f53886c.t1()) {
                    arrayList3.add(c10340xw04.f53886c.D());
                    c10340xw04 = c10340xw04.f53886c.D().n();
                }
            }
            if (!c10340xw04.j()) {
                if (c10340xw04.R()) {
                    o22 = com.android.tools.r8.graph.O2.k0();
                } else {
                    AbstractC10561zE abstractC10561zE = c10340xw04.f53886c;
                    abstractC10561zE.getClass();
                    if (abstractC10561zE instanceof C8769oZ) {
                        o22 = a(c10340xw04.f53886c.t0(), arrayList3, vj2, b10);
                    } else if (c10340xw04.f53886c.a2()) {
                        ArrayList arrayList4 = c10340xw04.f53886c.u0().f54321f;
                        int size2 = arrayList4.size();
                        com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[size2];
                        for (int i13 = 0; i13 < size2; i13++) {
                            com.android.tools.r8.graph.M2 a11 = a(b10, (C10340xw0) arrayList4.get(i13));
                            if (a11 != null) {
                                m2Arr[i13] = a11;
                            }
                        }
                        o22 = new com.android.tools.r8.graph.O2(m2Arr);
                    }
                }
                if (o22 != null) {
                    return null;
                }
                String l23 = u22.toString();
                Iterator<C4516j1> it = a10.z1().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    C4516j1 next = it.next();
                    if (next.getReference().f38298g.toString().equals(l23) && next.getReference().f36127i.f36441f.equals(o22)) {
                        a22 = next.getReference();
                        break;
                    }
                }
                return AbstractC10051wB.b(a22);
            }
            o22 = null;
            if (o22 != null) {
            }
        } else {
            if (!c10340xw0.N()) {
                return null;
            }
            C9820uq O10 = c10340xw0.n().O();
            com.android.tools.r8.graph.J2 j23 = O10.f52961l;
            j23.getClass();
            if (j23 instanceof com.android.tools.r8.graph.M2) {
                return AbstractC10051wB.c(O10.f52961l.o0());
            }
            return AbstractC10051wB.a(O10.f52961l.m0());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bf A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.android.tools.r8.graph.J2 a(C4798y c4798y, com.android.tools.r8.graph.L2 l22) {
        com.android.tools.r8.graph.A2 a22;
        String str;
        String str2;
        String l23 = l22.toString();
        List<String> a10 = C10656zq0.a(l23, JavaElement.JEM_IMPORTDECLARATION);
        if (a10.size() <= 2) {
            if (a10.size() == 2) {
                str = a10.get(0);
                str2 = a10.get(1);
            } else {
                int lastIndexOf = l23.lastIndexOf(".");
                if (lastIndexOf <= 0 || lastIndexOf >= l23.length() - 1) {
                    str = null;
                    str2 = null;
                } else {
                    String substring = l23.substring(0, lastIndexOf);
                    str2 = l23.substring(lastIndexOf + 1);
                    str = substring;
                }
            }
            if (str != null) {
                String H10 = C4932Bl.E(str) ? C4932Bl.H(str) : null;
                if (H10 != null) {
                    com.android.tools.r8.graph.E0 c10 = ((C11245i) c4798y.f()).c(c4798y.b().d(H10));
                    if (c10 != null) {
                        a22 = a(c10, str2, (com.android.tools.r8.graph.M2) null);
                        if (a22 == null) {
                            for (C4516j1 c4516j1 : c10.z1()) {
                                if (c4516j1.getReference().f38298g.toString().equals(str2)) {
                                    a22 = c4516j1.getReference();
                                    break;
                                }
                            }
                        }
                        if (a22 == null) {
                            return a22;
                        }
                        String l24 = l22.toString();
                        String H11 = C4932Bl.E(l24) ? C4932Bl.H(l24) : null;
                        if (H11 != null) {
                            return c4798y.b().d(H11);
                        }
                        return null;
                    }
                }
            }
        }
        a22 = null;
        if (a22 == null) {
        }
    }

    public static C4554l1 a(com.android.tools.r8.graph.E0 e02, String str, com.android.tools.r8.graph.M2 m22) {
        for (C4460g1 c4460g1 : e02.I0()) {
            if (c4460g1.getReference().f38298g.toString().equals(str) && (m22 == null || c4460g1.getReference().f37449i == m22)) {
                return c4460g1.getReference();
            }
        }
        return null;
    }

    public static com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, C10340xw0 c10340xw0) {
        if (c10340xw0.j()) {
            return null;
        }
        if (c10340xw0.M()) {
            AbstractC8291lh n10 = c10340xw0.n();
            n10.getClass();
            if (n10 instanceof C7957jh) {
                return c10340xw0.n().F().f49303l;
            }
        }
        AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C5576Mo0)) {
            return null;
        }
        C4555l2 c4555l2 = c4724u1.f37992Y4;
        return (com.android.tools.r8.graph.M2) c4555l2.f37450a.get(c10340xw0.f53886c.K0().getField());
    }

    public static com.android.tools.r8.graph.O2 a(final C8769oZ c8769oZ, ArrayList arrayList, VJ vj2, C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 a10;
        int u22 = c8769oZ.u2();
        if (u22 < 0) {
            return null;
        }
        if (u22 == 0) {
            return com.android.tools.r8.graph.O2.k0();
        }
        com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[u22];
        Set c10 = AbstractC5513Ll0.c();
        c10.addAll(c8769oZ.d().b0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            c10.addAll(((C7942jc) obj).d().b0());
        }
        W5 b10 = c8769oZ.b();
        AE H10 = b10.H();
        H10.a(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return F.a(C8769oZ.this, (AbstractC10561zE) obj2);
            }
        });
        while (true) {
            int i11 = u22;
            while (true) {
                if (H10.hasNext()) {
                    AbstractC10561zE next = H10.next();
                    if (!c10.contains(next)) {
                        continue;
                    } else {
                        if (next == vj2) {
                            if (i11 == 0) {
                                return new com.android.tools.r8.graph.O2(m2Arr);
                            }
                            return null;
                        }
                        if (!next.o1()) {
                            if (!next.t1() || !arrayList.contains(next.D())) {
                            }
                        } else {
                            com.android.tools.r8.internal.T3 A10 = next.A();
                            int b11 = A10.b(m2Arr.length);
                            if (b11 < 0 || (a10 = a(c4724u1, A10.value())) == null) {
                                return null;
                            }
                            if (m2Arr[b11] == null) {
                                i11--;
                            }
                            m2Arr[b11] = a10;
                        }
                    }
                } else {
                    if (!b10.i().G1()) {
                        return null;
                    }
                    b10 = R5.a(b10);
                    if (b10.u().size() != 1 || (H10 = b10.H()) == null) {
                        return null;
                    }
                }
            }
            m2Arr = new com.android.tools.r8.graph.M2[u22];
        }
    }
}
