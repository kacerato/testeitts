package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C5898Sd extends AbstractC6014Ud {

    public static final boolean f44250d = true;

    public final AbstractC6014Ud f44251b;

    public final QC f44252c;

    public C5898Sd(com.android.tools.r8.graph.V v10, AbstractC6014Ud abstractC6014Ud, QC qc2) {
        super(v10);
        if (!f44250d && (abstractC6014Ud instanceof C5898Sd)) {
            throw new AssertionError((Object) "Nested Filtering class providers");
        }
        this.f44251b = abstractC6014Ud;
        this.f44252c = qc2;
    }

    @Override
    public final C5898Sd a(C5978Tm0 c5978Tm0) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) this.f44252c);
        Iterator it = c5978Tm0.iterator();
        while (true) {
            EK ek2 = (EK) it;
            if (ek2.hasNext()) {
                ic2.a(ek2.next());
            } else {
                return new C5898Sd(this.f44814a, this.f44251b, ic2.a());
            }
        }
    }

    public final String toString() {
        return ((Object) this.f44251b) + " without " + ((Object) this.f44252c);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        if (this.f44252c.contains(m22)) {
            return;
        }
        this.f44251b.a(m22, consumer);
    }

    @Override
    public final Collection a() {
        Collection a10 = this.f44251b.a();
        a10.removeAll(this.f44252c);
        return a10;
    }
}
