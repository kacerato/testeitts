package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;

public class K3 extends AbstractC9617te<C4477h> {

    public static final boolean f41562f = true;

    public final C8570nJ.o f41563e;

    public K3(C4798y<?> c4798y) {
        super(c4798y);
        this.f41563e = this.f52648c.b0();
    }

    @Override
    public final String a() {
        return "ArrayConstructionSimplifier";
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C5650Nw0 c5650Nw0;
        AbstractC10561zE h10;
        T3 A10;
        AbstractC10561zE next;
        T3 A11;
        T3 t32;
        ArrayList arrayList = new ArrayList();
        Iterator<AbstractC10561zE> it = c7215fB.q().iterator();
        while (true) {
            C5650Nw0 c5650Nw02 = null;
            if (!it.hasNext()) {
                break;
            }
            C8769oZ t02 = it.next().t0();
            if (t02 != null) {
                if (t02.q() == null) {
                    C8570nJ.o oVar = this.f41563e;
                    int u22 = t02.u2();
                    oVar.getClass();
                    if (1 <= u22 && u22 <= 8192) {
                        int u23 = t02.u2();
                        if (u23 >= 0 && u23 <= 100000) {
                            C10340xw0 d10 = t02.d();
                            int i10 = u23 - 1;
                            Iterator<AbstractC10561zE> it2 = d10.b0().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    t32 = null;
                                    break;
                                }
                                t32 = it2.next().A();
                                if (t32 != null && t32.u2() == d10) {
                                    int b10 = t32.b(Integer.MAX_VALUE);
                                    if (b10 == -1) {
                                        b10 = -1;
                                    }
                                    if (b10 == i10) {
                                        break;
                                    }
                                }
                            }
                            if (t32 != null && (c5650Nw0 = AbstractC5708Ow0.a(t02, u23, t32, true)) != null) {
                                T3[] t3Arr = c5650Nw0.f42742b;
                                if (t3Arr[i10] == null) {
                                    t3Arr[i10] = t32;
                                    if (c5650Nw0 != null) {
                                        T3[] t3Arr2 = c5650Nw0.f42742b;
                                        int length = t3Arr2.length;
                                        int i11 = 0;
                                        while (true) {
                                            if (i11 < length) {
                                                if (t3Arr2[i11] == null) {
                                                    break;
                                                }
                                                i11++;
                                            } else if (t02.b().c(((T3) X3.b(c5650Nw0.a())).b())) {
                                                com.android.tools.r8.graph.M2 a10 = c5650Nw0.f42743c.f53886c.t0().f51273k.a(1, this.f52647b);
                                                if (!a10.P0() && !a10.a(this.f52647b.f38068i2)) {
                                                    if (com.android.tools.r8.graph.P2.a(this.f52646a, a10.a(this.f52647b), c7215fB.j())) {
                                                        for (T3 t33 : c5650Nw0.a()) {
                                                            C10340xw0 value = t33.value();
                                                            if (!value.c(this.f52646a)) {
                                                                com.android.tools.r8.graph.M2 a11 = value.u().d().a(this.f52647b);
                                                                if (a10.E0()) {
                                                                    if (!a10.a(a11)) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    if (a11.E0()) {
                                                                        break;
                                                                    }
                                                                    if (!a11.N0() && this.f52646a.a(a11, a10).b()) {
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                C10340xw0 c10340xw0 = c5650Nw0.f42743c;
                                                Set c10 = AbstractC5513Ll0.c();
                                                Set<AbstractC10561zE> b02 = c10340xw0.b0();
                                                for (AbstractC10561zE abstractC10561zE : b02) {
                                                    T3 A12 = abstractC10561zE.A();
                                                    if (A12 == null || A12.u2() != c10340xw0) {
                                                        c10.add(abstractC10561zE.b());
                                                    }
                                                }
                                                T3 t34 = (T3) X3.b(c5650Nw0.a());
                                                W5 b11 = t34.b();
                                                W5 b12 = c10340xw0.f53886c.b();
                                                Iterator it3 = c10.iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        W5 w52 = (W5) it3.next();
                                                        InterfaceC6494at interfaceC6494at = InterfaceC6494at.f46642a;
                                                        if (!(b11 == w52 ? true : b12 == w52 ? false : C6332Zs.a(b12, w52, b11, new C6286Yx0(2)))) {
                                                            break;
                                                        }
                                                    } else {
                                                        Y5 it4 = b11.l().iterator();
                                                        while (it4.hasNext() && (next = it4.next()) != t34) {
                                                            if (b02.contains(next) && ((A11 = next.A()) == null || A11.u2() != c10340xw0)) {
                                                                break;
                                                            }
                                                        }
                                                        C10340xw0 c10340xw02 = c5650Nw0.f42743c;
                                                        if (c10340xw02.B()) {
                                                            Set c11 = AbstractC5513Ll0.c();
                                                            Iterator<E> it5 = c10340xw02.f53889f.iterator();
                                                            while (it5.hasNext()) {
                                                                c11.add(((C7201f60) it5.next()).f47862p);
                                                            }
                                                            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                                                            c6286Yx0.f46126b.add(((T3) X3.b(c5650Nw0.a())).b());
                                                            c6286Yx0.b((Iterable) c10340xw02.f53886c.b().p());
                                                            while (c6286Yx0.b()) {
                                                                W5 w53 = (W5) c6286Yx0.d();
                                                                if (c11.contains(w53)) {
                                                                    break;
                                                                }
                                                                if (!w53.z() || (h10 = w53.h()) == null || (A10 = h10.A()) == null || A10.u2() != c10340xw02) {
                                                                    c6286Yx0.b((Iterable) w53.v());
                                                                } else {
                                                                    c6286Yx0.b((Iterable) w53.p());
                                                                }
                                                            }
                                                        }
                                                        c5650Nw02 = c5650Nw0;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        c5650Nw0 = null;
                        if (c5650Nw0 != null) {
                        }
                    }
                }
                if (c5650Nw02 != null) {
                    arrayList.add(c5650Nw02);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        Set<W5> c12 = AbstractC5513Ll0.c();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        int size = arrayList.size();
        int i12 = 0;
        boolean z10 = false;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            C5650Nw0 c5650Nw03 = (C5650Nw0) obj;
            C8769oZ t03 = c5650Nw03.f42743c.f53886c.t0();
            identityHashMap.put(t03, t03);
            W5 b13 = t03.b();
            c12.add(b13);
            T3[] a12 = c5650Nw03.a();
            int length2 = a12.length - 1;
            for (int i13 = 0; i13 < length2; i13++) {
                T3 t35 = a12[i13];
                identityHashMap.put(t35, t35);
                c12.add(t35.b());
            }
            T3 t36 = a12[length2];
            W5 b14 = t36.b();
            c12.add(b14);
            C10340xw0 d11 = t03.d((C10340xw0) null);
            C9103qZ c9103qZ = new C9103qZ(t03.f51273k, d11, c5650Nw03.b());
            c9103qZ.b(t36.getPosition());
            identityHashMap.put(t36, c9103qZ);
            if (d11.B() && b13.z()) {
                b14.N();
                ArrayList a13 = b14.a(b13);
                int size2 = a13.size();
                int i14 = 0;
                while (i14 < size2) {
                    Object obj2 = a13.get(i14);
                    i14++;
                    W5 w54 = (W5) obj2;
                    b13.n().remove(w54);
                    w54.getClass();
                    w54.a(b13, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                }
                b13.f45292e = N8.f42507e;
                z10 = true;
            }
        }
        for (W5 w55 : c12) {
            boolean z11 = w55.z();
            Y5 I10 = w55.I();
            while (I10.hasNext()) {
                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) identityHashMap.get(I10.next());
                if (abstractC10561zE2 != null) {
                    if (abstractC10561zE2.a2()) {
                        I10.a(abstractC10561zE2, (C10696a) null);
                    } else {
                        I10.i();
                        if (!z11) {
                            continue;
                        } else {
                            if (!f41562f && w55.a()) {
                                throw new AssertionError();
                            }
                            w55.N();
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            c7215fB.a(new C10696a(), C6628bi.b());
        }
        c7215fB.x();
        return InterfaceC10118we.f53548b;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(47);
    }
}
