package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;

public class C8664nu {

    public static final boolean f51107c = true;

    public final AbstractC8552nC f51108a;

    public final AbstractC8552nC f51109b;

    public C8664nu(AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2) {
        this.f51108a = abstractC8552nC;
        this.f51109b = abstractC8552nC2;
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        boolean z10 = f51107c;
        if (!z10 && m23 == null) {
            throw new AssertionError();
        }
        if (z10 || m22 != null) {
            return m23 == m22 || m23 == this.f51109b.get(m22);
        }
        throw new AssertionError();
    }

    public boolean b(com.android.tools.r8.graph.M2 m22) {
        return this.f51108a.containsKey(c(m22));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.M2 c(com.android.tools.r8.graph.M2 m22) {
        Object obj = this.f51109b.get(m22);
        if (obj != 0) {
            m22 = obj;
        }
        return m22;
    }

    public final boolean b(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 c10 = c(c4554l1.s0());
        return this.f51108a.containsKey(c10) && a(c10).f50451c.containsKey(c4554l1);
    }

    public boolean a() {
        return this.f51108a.isEmpty();
    }

    public final C8497mu a(com.android.tools.r8.graph.M2 m22) {
        C8497mu c8497mu = (C8497mu) this.f51108a.get(c(m22));
        if (f51107c || c8497mu != null) {
            return c8497mu;
        }
        throw new AssertionError();
    }

    public final int a(C4554l1 c4554l1) {
        if (!f51107c && !b(c4554l1.s0())) {
            throw new AssertionError();
        }
        C8497mu a10 = a(c(c4554l1.s0()));
        if (C8497mu.f50448f || a10.f50451c.containsKey(c4554l1)) {
            return ((Integer) a10.f50451c.get(c4554l1)).intValue();
        }
        throw new AssertionError();
    }
}
