package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.IdentityHashMap;
import java.util.Iterator;

public final class C10638zk0 extends AbstractC9617te {

    public static final boolean f54481f = true;

    public final C10340xw0 f54482e;

    public C10638zk0(C4798y c4798y) {
        super(c4798y);
        this.f54482e = new C10340xw0(-1, AbstractC8999pu0.p(), null);
    }

    @Override
    public final String a() {
        return "ReturnBlockCanonicalizerRewriter";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            C10471yk0 G02 = next.f45293f.a().G0();
            if (G02 != null && !next.A()) {
                C10340xw0 c10340xw0 = this.f54482e;
                if (!G02.v2()) {
                    c10340xw0 = G02.w2();
                }
                identityHashMap.putIfAbsent(c10340xw0, next);
            }
        }
        Iterator<W5> it2 = c7215fB.f47897d.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            W5 next2 = it2.next();
            C10471yk0 G03 = next2.f45293f.a().G0();
            if (G03 != null && !next2.A()) {
                C10340xw0 c10340xw02 = this.f54482e;
                if (!G03.v2()) {
                    c10340xw02 = G03.w2();
                }
                W5 w52 = (W5) identityHashMap.getOrDefault(c10340xw02, next2);
                if (w52 != next2) {
                    for (W5 w53 : next2.u()) {
                        w53.b(next2, w52);
                        if (!w52.u().contains(w53)) {
                            w52.m().add(w53);
                        }
                        if (w53.i().l2()) {
                            AbstractC6489ar0 Q02 = w53.i().Q0();
                            if (Q02.u2() == w52) {
                                C6822cr0 c6822cr0 = new C6822cr0(Q02);
                                for (int i10 = 0; i10 < Q02.v2(); i10++) {
                                    if (Q02.f46639l[i10] == Q02.f46640m) {
                                        if (c6822cr0.f47193g == null) {
                                            c6822cr0.f47193g = new C6901dI(16);
                                        }
                                        c6822cr0.f47193g.add(i10);
                                    }
                                }
                                c6822cr0.b();
                            }
                        }
                    }
                    next2.m().clear();
                    z10 = true;
                }
            }
        }
        if (z10) {
            c7215fB.a(new C10696a(), C6628bi.b());
            c7215fB.z();
            c7215fB.x();
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (!f54481f && this.f52648c.f50690i1) {
            throw new AssertionError();
        }
        return this.f52648c.F().f50856Z;
    }
}
