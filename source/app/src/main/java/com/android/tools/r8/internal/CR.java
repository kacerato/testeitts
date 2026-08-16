package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.origin.Origin;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CR implements InterfaceC9975vm {

    public final boolean f39221a;

    public final MR f39222b;

    public final IR f39223c;

    public CR(MR mr, IR ir, boolean z10) {
        this.f39221a = z10;
        this.f39222b = mr;
        this.f39223c = ir;
    }

    @Override
    public final String a() {
        return this.f39222b.f42295d;
    }

    @Override
    public boolean b() {
        return this.f39221a;
    }

    @Override
    public final Set c() {
        int i10 = QC.f43505c;
        return C7119ef0.f47742j;
    }

    @Override
    public final C2 d() {
        return this.f39222b.f42292a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List] */
    @Override
    public final List e() {
        return this.f39222b.f42297f;
    }

    @Override
    public final String f() {
        return this.f39222b.f42293b;
    }

    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> g() {
        return this.f39223c.f41086e;
    }

    @Override
    public final boolean isEmpty() {
        IR ir = this.f39223c;
        return ir.f41082a.isEmpty() && ir.f41083b.isEmpty() && ir.f41084c.isEmpty();
    }

    @Override
    public final C10261xU a(AbstractC4780x0 abstractC4780x0, C8659ns0 c8659ns0) {
        JR jr = new JR(c8659ns0);
        jr.f41395a.b("Legacy to Human convert");
        AbstractC7087eS.a(abstractC4780x0, b(), this.f39222b.f42292a);
        SA a10 = JR.a(this.f39222b);
        Origin unknown = Origin.unknown();
        IA a11 = jr.a(this.f39223c, abstractC4780x0, unknown);
        if (b()) {
            jr.f41395a.b("Legacy hacks");
            IA.a b10 = a11.b(abstractC4780x0.f38366d.f50691j, unknown);
            JR.a(this.f39222b.f42294c, abstractC4780x0.f38367e, abstractC4780x0.f38366d.z(), b10);
            a11 = b10.a();
            jr.f41395a.d();
        }
        jr.a(abstractC4780x0.f38366d.f50691j);
        jr.f41395a.d();
        return new DA(a10, a11, b()).a(abstractC4780x0, c8659ns0);
    }
}
