package com.android.tools.r8.graph;

import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.QC;

public final class C4799y0 {

    public boolean f38434a;

    public boolean f38435b;

    public final IC f38436c;

    public final IC f38437d;

    public final IC f38438e;

    public C4799y0() {
        int i10 = QC.f43505c;
        this.f38436c = new IC();
        this.f38437d = new IC();
        this.f38438e = new IC();
    }

    public final void a(M2 m22) {
        synchronized (this.f38438e) {
            this.f38438e.a(m22);
        }
    }

    public final void b(M2 m22) {
        synchronized (this.f38437d) {
            this.f38437d.a(m22);
        }
    }
}
