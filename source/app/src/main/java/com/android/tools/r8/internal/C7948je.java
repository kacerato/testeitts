package com.android.tools.r8.internal;

import java.util.function.Supplier;

public final class C7948je extends AbstractC7945jd {
    public C7948je() {
        super(null, null);
    }

    @Override
    public final Supplier a(com.android.tools.r8.graph.E0 e02) {
        return (com.android.tools.r8.graph.I0) e02;
    }

    @Override
    public final com.android.tools.r8.graph.V c() {
        return com.android.tools.r8.graph.V.f36878d;
    }

    @Override
    public final String toString() {
        return "classpath classes: " + super.toString();
    }

    public C7948je(AbstractC6014Ud abstractC6014Ud) {
        super(null, abstractC6014Ud);
    }

    @Override
    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03) {
        a((com.android.tools.r8.graph.I0) e02);
        throw null;
    }

    public static void a(com.android.tools.r8.graph.I0 i02) {
        throw new C5325If("Classpath type already present: " + i02.f36245e.j0());
    }
}
