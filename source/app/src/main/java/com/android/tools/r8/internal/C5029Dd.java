package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class C5029Dd extends AbstractC5055Do0 {

    public static final boolean f39569g = true;

    public final C8570nJ f39570a;

    public final C4724u1 f39571b;

    public final com.android.tools.r8.graph.A2 f39572c;

    public final com.android.tools.r8.graph.A2 f39573d;

    public final com.android.tools.r8.graph.A2 f39574e;

    public final com.android.tools.r8.graph.A2 f39575f;

    public C5029Dd(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f39570a = c4798y.E();
        this.f39571b = b10;
        com.android.tools.r8.graph.G1 g12 = b10.f37922O4;
        this.f39572c = g12.f36327i;
        this.f39573d = g12.f36328j;
        this.f39574e = g12.f36329k;
        this.f39575f = g12.f36330l;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        if (reference.a(this.f39572c) || reference.a(this.f39573d) || reference.a(this.f39574e) || reference.a(this.f39575f)) {
            AbstractC6497au.a(vj2, vj2.f54321f.size() - 1, c7215fB, ee2, this.f39570a);
            if (!f39569g && ee2.n() != vj2) {
                throw new AssertionError();
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f39571b.f38180w2;
    }
}
