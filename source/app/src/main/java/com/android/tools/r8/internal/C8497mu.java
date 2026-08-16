package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C8497mu {

    public static final boolean f50448f = true;

    public final AbstractC8552nC f50449a;

    public final Q f50450b;

    public final AbstractC8552nC f50451c;

    public final QC f50452d;

    public final int f50453e;

    /* JADX WARN: Multi-variable type inference failed */
    public C8497mu(AbstractC8552nC abstractC8552nC, SG sg2, AbstractC8552nC abstractC8552nC2, QC qc2, int i10) {
        this.f50449a = abstractC8552nC;
        this.f50450b = (Q) sg2;
        this.f50451c = abstractC8552nC2;
        this.f50452d = qc2;
        this.f50453e = i10;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return m23 == m22;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    public final C5341Im0 a(G1 g12, final com.android.tools.r8.graph.M2 m22) {
        if (!f50448f && this.f50450b.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8497mu.a(com.android.tools.r8.graph.M2.this, (com.android.tools.r8.graph.M2) obj);
            }
        }).count() > 1) {
            throw new AssertionError();
        }
        A30 it = this.f50450b.c().iterator();
        while (it.hasNext()) {
            if (((RG) it.next()).getValue() == m22) {
                return g12.a(r1.a() + 1, AbstractC8999pu0.k());
            }
        }
        return null;
    }
}
