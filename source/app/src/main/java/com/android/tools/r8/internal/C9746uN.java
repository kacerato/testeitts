package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Set;
import java.util.function.Consumer;

public final class C9746uN extends AbstractC10581zN {

    public final C10247xN f52840b;

    public C9746uN(C10247xN c10247xN) {
        this.f52840b = c10247xN;
    }

    @Override
    public final QC a() {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) C10414yN.f54000c.f54001b);
        ic2.a((Iterable) this.f52840b.f53744b);
        return ic2.a();
    }

    @Override
    public final Set b() {
        return this.f52840b.b();
    }

    @Override
    public final C6748cP a(C6748cP c6748cP) {
        C6748cP a10 = this.f52840b.a(c6748cP);
        C6748cP c6748cP2 = C6748cP.f47035b;
        C6415aP c6415aP = new C6415aP(false);
        for (EnumC6582bP enumC6582bP : (EnumC6582bP[]) EnumC6582bP.f46761h.clone()) {
            if (!a10.f47036a.contains(enumC6582bP) || !c6748cP.f47036a.contains(enumC6582bP)) {
                c6415aP.f46512b.add(enumC6582bP);
            }
        }
        return c6415aP.a();
    }

    @Override
    public final void a(Consumer consumer, final Consumer consumer2) {
        this.f52840b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((KeepSpecProtos.Constraints) obj).getConstraintsList().forEach(Consumer.this);
            }
        }, consumer2);
    }
}
