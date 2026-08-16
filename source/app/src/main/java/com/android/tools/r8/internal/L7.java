package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Set;

public abstract class L7 {

    public static final boolean f41867a = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x000c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static S7 a(C4516j1 c4516j1, C7215fB c7215fB) {
        Y5 I10 = c7215fB.k().I();
        WJ wj2 = null;
        Set set = null;
        WJ wj3 = null;
        while (I10.hasNext()) {
            AbstractC10561zE next = I10.next();
            int r22 = next.r2();
            if (r22 != 5) {
                if (r22 != 24) {
                    if (r22 != 33) {
                        if (r22 == 56) {
                            C10471yk0 G02 = next.G0();
                            if (wj2 != null) {
                                if (G02.v2()) {
                                    continue;
                                } else if (G02.w2().i() == (wj3 != null ? wj3 : wj2).d()) {
                                }
                            }
                            return null;
                        }
                        if (r22 == 9) {
                            continue;
                        } else {
                            if (r22 == 10) {
                                C7942jc D10 = next.D();
                                if (wj2 != null) {
                                    C10340xw0 d10 = wj2.d();
                                    C10340xw0 i10 = D10.n().i();
                                    C10340xw0 d11 = D10.d();
                                    if (!d11.B()) {
                                        if (i10 == d10) {
                                            if (D10.f49274k == c4516j1.u1()) {
                                                if (!d11.y()) {
                                                    if (d11.C()) {
                                                        if (!d11.Z().g2()) {
                                                        }
                                                        if (wj2 == null) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return null;
                                }
                                C10340xw0 i11 = D10.n().i();
                                if (i11.H()) {
                                    int b10 = i11.f53886c.v().b(true);
                                    C10340xw0 d12 = D10.d();
                                    if (!d12.B()) {
                                        if (!d12.y()) {
                                            if (d12.C()) {
                                                VJ e02 = d12.Z().e0();
                                                if (e02 != null) {
                                                    if (e02.f54321f.size() > b10) {
                                                        int a10 = b10 - C8704o7.a(e02.Q1());
                                                        if (a10 != -1) {
                                                            if (D10.f49274k == e02.B2().f36127i.f36441f.f36675b[a10]) {
                                                                if (e02.b(b10) != d12) {
                                                                }
                                                                if (wj2 == null) {
                                                                    continue;
                                                                } else {
                                                                    if (wj3 != null) {
                                                                        return null;
                                                                    }
                                                                    wj3 = D10;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return null;
                            }
                            if (r22 != 39 && r22 != 40) {
                                return null;
                            }
                        }
                    }
                    if (wj2 != null) {
                        return null;
                    }
                    wj2 = next.f0();
                    for (int i12 = 0; i12 < wj2.f54321f.size(); i12++) {
                        C10340xw0 i13 = wj2.b(i12).i();
                        if (i13.j() || (i13.H() && i12 != i13.r().v().b(true))) {
                            return null;
                        }
                        if (!f41867a && !i13.H()) {
                            if (i13.r().t1()) {
                                C10340xw0 b11 = wj2.b(i12);
                                D4 d42 = D4.f39431a;
                                b11.getClass();
                                C6371a70 c6371a70 = EnumC6871d70.f47287c;
                                if (b11.a(d42, c6371a70).H()) {
                                    C10340xw0 b12 = wj2.b(i12);
                                    b12.getClass();
                                    if (b12.a(d42, c6371a70).r().v().b(true) == i12) {
                                    }
                                }
                            }
                            throw new AssertionError();
                        }
                    }
                } else {
                    C4960Bz U10 = next.U();
                    W5 v22 = U10.v2();
                    if (v22.z()) {
                        return null;
                    }
                    if (set == null) {
                        if (!f41867a && !U10.b().u().isEmpty()) {
                            throw new AssertionError();
                        }
                        W5 k10 = c7215fB.k();
                        set = AbstractC5513Ll0.c();
                        set.add(k10);
                    }
                    if (!set.add(v22)) {
                        return null;
                    }
                    I10 = v22.I();
                }
            }
        }
        boolean z10 = f41867a;
        if (!z10 && wj2 == null) {
            throw new AssertionError();
        }
        if (!z10 && !wj2.O1() && !(wj2 instanceof C7572hK) && !wj2.T1()) {
            throw new AssertionError();
        }
        int ordinal = wj2.w2().ordinal();
        if (ordinal == 0) {
            wj2.B2();
            return new C5989Ts();
        }
        if (ordinal == 3) {
            wj2.B2();
            return new C5986Tq0();
        }
        if (ordinal == 4) {
            return new C8841ox0(wj2.B2());
        }
        throw new C5417Jv0();
    }
}
