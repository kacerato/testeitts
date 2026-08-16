package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import java.util.Set;

public final class C5405Jp0 implements InterfaceC5636Np0 {

    public static final boolean f41505a = true;

    /* JADX WARN: Code restructure failed: missing block: B:58:0x007b, code lost:
    
        if (r7.p() != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015e A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(AbstractC5289Hp0 abstractC5289Hp0, AbstractC5289Hp0 abstractC5289Hp02, C5578Mp0 c5578Mp0) {
        boolean z10;
        com.android.tools.r8.graph.A2 B22;
        C4724u1 c4724u1;
        C4650q2 c4650q2;
        boolean z11;
        C4650q2 c4650q22;
        boolean contains = c5578Mp0.f42411c.contains(abstractC5289Hp0);
        boolean z12 = false;
        while (abstractC5289Hp02 != null) {
            if (!(abstractC5289Hp02 instanceof C5115Ep0) || c5578Mp0.f42413e.contains(abstractC5289Hp0)) {
                if (!(abstractC5289Hp02 instanceof C9818up0) || contains) {
                    if ((abstractC5289Hp02 instanceof C10319xp0) && abstractC5289Hp02.o()) {
                        AbstractC5289Hp0 m10 = abstractC5289Hp02.m();
                        m10.getClass();
                        if (m10 instanceof C4999Cp0) {
                            if (abstractC5289Hp02.f40880a.isEmpty()) {
                                if (!contains) {
                                    if (c5578Mp0.f42410b.a((WJ) abstractC5289Hp02.i().f53847e)) {
                                    }
                                    abstractC5289Hp02.s();
                                    if (abstractC5289Hp02.r()) {
                                        AbstractC10561zE a10 = abstractC5289Hp02.l().a();
                                        InterfaceC7982jp0 interfaceC7982jp0 = (InterfaceC7982jp0) c5578Mp0.f42409a.get(a10);
                                        if (interfaceC7982jp0 == null || interfaceC7982jp0.b()) {
                                            c5578Mp0.f42409a.put(a10, C6982dp0.f47529a);
                                        } else {
                                            if (!f41505a && !interfaceC7982jp0.a()) {
                                                throw new AssertionError();
                                            }
                                            interfaceC7982jp0.c().f48107e = true;
                                        }
                                    }
                                    abstractC5289Hp02 = abstractC5289Hp02.o() ? abstractC5289Hp02.m() : null;
                                    z12 = true;
                                }
                            }
                        }
                    }
                    return false;
                }
                C9818up0 g10 = abstractC5289Hp02.g();
                boolean z13 = !c5578Mp0.f42412d.contains(abstractC5289Hp0) && ((Set) c5578Mp0.f42414f.get(abstractC5289Hp0)).isEmpty();
                if (c5578Mp0.f42413e.contains(abstractC5289Hp0)) {
                    C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                    c6286Yx0.b((C6286Yx0) abstractC5289Hp02);
                    boolean z14 = false;
                    while (true) {
                        if (!c6286Yx0.b()) {
                            break;
                        }
                        AbstractC5289Hp0 abstractC5289Hp03 = (AbstractC5289Hp0) c6286Yx0.c();
                        abstractC5289Hp03.getClass();
                        if (abstractC5289Hp03 instanceof C4999Cp0) {
                            z14 = true;
                        }
                        if (!(abstractC5289Hp03 instanceof C4883Ap0)) {
                            c6286Yx0.b((Iterable) abstractC5289Hp03.f40881b);
                        } else if (z14) {
                        }
                    }
                }
                if (abstractC5289Hp02.f40880a.isEmpty()) {
                    z10 = true;
                    C8405mK c8405mK = abstractC5289Hp02.g().f52955e;
                    boolean z15 = (g10.d() && !g10.e() && c5578Mp0.f42410b.a((WJ) c8405mK)) ? false : true;
                    C5752Pp0 c5752Pp0 = c5578Mp0.f42410b;
                    c5752Pp0.getClass();
                    c8405mK.Q1();
                    B22 = c8405mK.e0().B2();
                    c4724u1 = c5752Pp0.f43386a;
                    c4650q2 = c4724u1.f38174v4;
                    if (c4650q2.f37652d != B22 && c4650q2.f37654f != B22) {
                        c4650q22 = c4724u1.f38182w4;
                        if (c4650q22.f37652d != B22 && c4650q22.f37654f != B22) {
                            z11 = false;
                            if (z13) {
                                if (z10) {
                                    if (z15) {
                                        if (z11) {
                                        }
                                        abstractC5289Hp02.s();
                                        if (abstractC5289Hp02.r()) {
                                        }
                                        if (abstractC5289Hp02.o()) {
                                        }
                                        z12 = true;
                                    }
                                }
                            }
                            return false;
                        }
                    }
                    z11 = true;
                    if (z13) {
                    }
                    return false;
                }
                z10 = false;
                C8405mK c8405mK2 = abstractC5289Hp02.g().f52955e;
                if (g10.d()) {
                }
                C5752Pp0 c5752Pp02 = c5578Mp0.f42410b;
                c5752Pp02.getClass();
                c8405mK2.Q1();
                B22 = c8405mK2.e0().B2();
                c4724u1 = c5752Pp02.f43386a;
                c4650q2 = c4724u1.f38174v4;
                if (c4650q2.f37652d != B22) {
                    c4650q22 = c4724u1.f38182w4;
                    if (c4650q22.f37652d != B22) {
                        z11 = false;
                        if (z13) {
                        }
                        return false;
                    }
                }
                z11 = true;
                if (z13) {
                }
                return false;
            }
            if (!abstractC5289Hp02.f40880a.isEmpty() && !abstractC5289Hp02.o()) {
                return false;
            }
            abstractC5289Hp02.s();
            if (abstractC5289Hp02.r()) {
            }
            if (abstractC5289Hp02.o()) {
            }
            z12 = true;
        }
        return z12;
    }
}
