package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4724u1;
import java.util.function.Predicate;

public final class C5345Io0 extends AbstractC5171Fo0 {

    public static final boolean f41217c = true;

    public final C8051kC f41218a = new C8051kC(4);

    public F1 f41219b;

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, F1 f12, C4724u1 c4724u1) {
        F1 f13;
        if (c4724u1.f37943R4.a(f52, f52.p())) {
            if (f12.f0()) {
                Q30 U10 = f12.N().U();
                U10.getClass();
                if (U10 instanceof C6336Zu) {
                    if (!f41217c && (f13 = this.f41219b) != null && !f13.equals(f12)) {
                        throw new AssertionError();
                    }
                    this.f41219b = f12;
                    this.f41218a.a(f52.getReference(), f12.N().U());
                    return;
                }
                return;
            }
            return;
        }
        c4724u1.f37943R4.getClass();
        C4537k3 accessFlags = f52.getAccessFlags();
        if (!com.android.tools.r8.graph.J1.f36481n && !accessFlags.n()) {
            throw new AssertionError();
        }
        if (AbstractC4458g.d(accessFlags.f37197c, 16384) && accessFlags.e() && f12.f0() && !f12.N().U().e()) {
            this.f41218a.a(f52.getReference(), f12.N().U());
        }
    }

    @Override
    public final AbstractC5461Ko0 a() {
        AbstractC8552nC b10 = this.f41218a.b();
        if (b10.isEmpty()) {
            return C5287Ho0.f40876a;
        }
        if (f41217c || b10.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Q30) obj).e();
            }
        })) {
            return new C5403Jo0(b10);
        }
        throw new AssertionError();
    }
}
