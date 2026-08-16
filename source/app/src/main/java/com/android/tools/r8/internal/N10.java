package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Set;

public final class N10 implements com.android.tools.r8.ir.optimize.A {

    public static final boolean f42480c = true;

    public final C4798y f42481b;

    public N10(C4798y c4798y) {
        this.f42481b = c4798y;
    }

    @Override
    public final Set a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, com.android.tools.r8.graph.proto.j jVar, R00 r00) {
        C7405gK a10;
        C8405mK b10;
        C7405gK a11;
        boolean z10 = f42480c;
        if (!z10 && !(r00 instanceof K10)) {
            throw new AssertionError();
        }
        Set c10 = AbstractC5513Ll0.c();
        ArrayList arrayList = new ArrayList();
        Y5 I10 = c7215fB.k().I();
        B60 position = I10.h().getPosition();
        if (!z10 && com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, jVar.f37623b.f37604a) != 0) {
            throw new AssertionError();
        }
        int l10 = c7215fB.l();
        for (int i10 = 0; i10 < l10; i10++) {
            com.android.tools.r8.graph.proto.b a12 = jVar.f37623b.a(i10);
            AbstractC10561zE next = I10.next();
            if (!f42480c && !next.k1()) {
                throw new AssertionError();
            }
            a12.getClass();
            if ((a12 instanceof com.android.tools.r8.graph.proto.k) && (a11 = a(c7215fB, next.d(), a12.b(), position)) != null) {
                arrayList.add(a11);
            }
        }
        if (!f42480c && I10.h().k1()) {
            throw new AssertionError();
        }
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C7405gK c7405gK = (C7405gK) obj;
            I10.add(c7405gK);
            c10.addAll(c7405gK.d().a0());
        }
        C7549hB p10 = c7215fB.p();
        while (p10.hasNext()) {
            AbstractC10561zE next2 = p10.next();
            if (next2.P1()) {
                VJ e02 = next2.e0();
                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) r00.a(e02.B2(), c7215fB.j().getReference(), e02.w2(), r00.f43777d, AbstractC9530t40.f52519c).f41111a;
                boolean z11 = f42480c;
                if (!z11 && a22 == null) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.proto.j f10 = r00.f(r00.f43777d, a22);
                if (f10.c()) {
                    continue;
                } else {
                    if (!z11 && com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, f10.f37623b.f37604a) != 0) {
                        throw new AssertionError();
                    }
                    for (int i12 = 0; i12 < e02.f54321f.size(); i12++) {
                        com.android.tools.r8.graph.proto.b a13 = f10.f37623b.a(i12);
                        a13.getClass();
                        if ((a13 instanceof com.android.tools.r8.graph.proto.k) && (b10 = b(c7215fB, e02.b(i12), a13.b(), e02.getPosition())) != null) {
                            p10.previous();
                            p10.add(b10);
                            p10.next();
                            e02.a(i12, b10.d());
                        }
                    }
                    if (e02.e1() && (a10 = a(c7215fB, e02.d(), f10.f37624c, e02.getPosition())) != null) {
                        p10.add(a10);
                        c10.addAll(a10.d().a0());
                    }
                }
            } else if (next2.g2() && !next2.G0().v2()) {
                C10471yk0 G02 = next2.G0();
                C8405mK b11 = b(c7215fB, G02.w2(), jVar.f37624c, G02.getPosition());
                if (b11 != null) {
                    p10.previous();
                    p10.add(b11);
                    p10.next();
                    G02.a(G02.w2(), b11.d(), (Set) null);
                }
            }
        }
        return c10;
    }

    public final C8405mK b(C7215fB c7215fB, C10340xw0 c10340xw0, com.android.tools.r8.graph.proto.k kVar, B60 b60) {
        if (kVar == null) {
            return null;
        }
        boolean z10 = f42480c;
        if (!z10 && !kVar.f().Q0()) {
            throw new AssertionError();
        }
        if (!z10 && !kVar.e().P0()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f42481b.b().f38152s6.containsValue(kVar.f())) {
            throw new AssertionError();
        }
        boolean z11 = C8405mK.f50258o;
        C8238lK c8238lK = new C8238lK();
        c8238lK.f44718d = this.f42481b.b().f(kVar.e());
        C8238lK c8238lK2 = (C8238lK) c8238lK.a(c7215fB.f47898e, kVar.e().b(this.f42481b));
        int i10 = AbstractC7552hC.f48487c;
        C8238lK c8238lK3 = (C8238lK) c8238lK2.a(new C5920Sm0(c10340xw0));
        c8238lK3.f52322b = b60;
        return c8238lK3.c();
    }

    public final C7405gK a(C7215fB c7215fB, C10340xw0 c10340xw0, com.android.tools.r8.graph.proto.k kVar, B60 b60) {
        if (kVar == null) {
            return null;
        }
        boolean z10 = f42480c;
        if (!z10 && !kVar.f().Q0()) {
            throw new AssertionError();
        }
        if (!z10 && !kVar.e().P0()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f42481b.b().f38152s6.containsValue(kVar.f())) {
            throw new AssertionError();
        }
        C10340xw0 a10 = c7215fB.a(kVar.f().b(this.f42481b), (C4515j0) null);
        c10340xw0.f(a10);
        boolean z11 = C7405gK.f48231o;
        C7238fK c7238fK = new C7238fK();
        c7238fK.f52321a = a10;
        c7238fK.f44718d = this.f42481b.b().c(kVar.e());
        C7238fK c7238fK2 = (C7238fK) c7238fK.a(c10340xw0);
        c7238fK2.f52322b = b60;
        return c7238fK2.c();
    }
}
