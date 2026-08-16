package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class QU extends AbstractC5055Do0 {

    public final C4724u1 f43590a;

    public final com.android.tools.r8.graph.X1 f43591b;

    public final com.android.tools.r8.graph.A2 f43592c;

    public QU(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f43590a = b10;
        this.f43591b = b10.f38095l5;
        this.f43592c = b10.f38111n5.f37091a;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(this.f43592c)) {
            AbstractC8999pu0 a10 = ee2.n().a();
            if (a10 == null) {
                ee2.i();
                return ee2;
            }
            ee2.b(new C5576Mo0(this.f43591b.f36950b, c7215fB.a(a10, (C4515j0) null)));
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f43590a.f37949S3;
    }
}
