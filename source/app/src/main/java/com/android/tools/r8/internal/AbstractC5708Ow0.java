package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Set;

public abstract class AbstractC5708Ow0 {
    public static C5650Nw0 a(C10340xw0 c10340xw0, VJ vj2) {
        int u22;
        if (c10340xw0.u().r() && !c10340xw0.y() && !c10340xw0.j()) {
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            C8769oZ t02 = abstractC10561zE.t0();
            C9103qZ u02 = abstractC10561zE.u0();
            if (u02 != null) {
                if (!c10340xw0.C() || c10340xw0.B()) {
                    return null;
                }
                return new C5650Nw0(c10340xw0, u02.f54321f);
            }
            if (t02 != null && (u22 = t02.u2()) >= 0 && u22 <= 100000) {
                return a(t02, u22, vj2, false);
            }
        }
        return null;
    }

    public static C5650Nw0 a(C8769oZ c8769oZ, int i10, AbstractC10561zE abstractC10561zE, boolean z10) {
        InterfaceC6494at c6332Zs;
        C6275Ys c6275Ys;
        int b10;
        T3[] t3Arr = new T3[i10];
        C10340xw0 d10 = c8769oZ.d();
        W5 b11 = abstractC10561zE.b();
        for (AbstractC10561zE abstractC10561zE2 : d10.b0()) {
            T3 A10 = abstractC10561zE2.A();
            if (A10 != null && A10.u2() == d10) {
                if (A10.value() == d10) {
                    return null;
                }
                if (abstractC10561zE2.b() != b11) {
                    int b12 = A10.b(i10);
                    if (b12 < 0 || t3Arr[b12] != null) {
                        return null;
                    }
                    t3Arr[b12] = A10;
                } else {
                    continue;
                }
            } else if (abstractC10561zE2 != abstractC10561zE && !z10) {
                return null;
            }
        }
        W5 b13 = c8769oZ.b();
        InterfaceC6494at interfaceC6494at = InterfaceC6494at.f46642a;
        if (b13 == b11) {
            c6332Zs = new C6275Ys(Collections.singleton(b13));
        } else {
            Set c10 = AbstractC5513Ll0.c();
            c10.add(b13);
            while (true) {
                if (b13.D()) {
                    b13 = b13.y();
                    if (c10.add(b13)) {
                        if (b13 == b11) {
                            c6275Ys = new C6275Ys(c10);
                            break;
                        }
                    } else if (AbstractC6218Xs.f45844a) {
                        c6332Zs = InterfaceC6494at.f46642a;
                    } else {
                        throw new AssertionError();
                    }
                } else if (b13.v().isEmpty()) {
                    c6332Zs = InterfaceC6494at.f46642a;
                } else {
                    c10.add(b11);
                    W5 w52 = b11;
                    while (w52.B() && w52.x().v().size() == 1) {
                        w52 = w52.x();
                        if (!c10.add(w52)) {
                            if (b13 == w52) {
                                c6275Ys = new C6275Ys(c10);
                            } else if (AbstractC6218Xs.f45844a) {
                                c6332Zs = InterfaceC6494at.f46642a;
                            } else {
                                throw new AssertionError();
                            }
                        }
                    }
                    if (w52.u().isEmpty()) {
                        c6332Zs = InterfaceC6494at.f46642a;
                    } else {
                        c6332Zs = new C6332Zs(b13, w52, c10);
                    }
                }
            }
            c6332Zs = c6275Ys;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            T3 t32 = t3Arr[i11];
            if (t32 != null && !c6332Zs.b(t32.b())) {
                return null;
            }
        }
        Y5 it = b11.l().iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            AbstractC10561zE next = it.next();
            if (next == abstractC10561zE) {
                z11 = true;
            } else {
                T3 A11 = next.A();
                if (A11 != null && A11.u2() == d10) {
                    if (z11 || (b10 = A11.b(i10)) < 0 || t3Arr[b10] != null) {
                        return null;
                    }
                    t3Arr[b10] = A11;
                }
            }
        }
        return new C5650Nw0(d10, t3Arr);
    }
}
