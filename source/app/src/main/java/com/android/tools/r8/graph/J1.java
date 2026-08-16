package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class J1 extends AbstractC4423e2 {

    public static final boolean f36481n = true;

    public final C4554l1 f36482a;

    public final C4554l1 f36483b;

    public final A2 f36484c;

    public final A2 f36485d;

    public final A2 f36486e;

    public final A2 f36487f;

    public final A2 f36488g;

    public final A2 f36489h;

    public final A2 f36490i;

    public final A2 f36491j;

    public final A2 f36492k;

    public final A2 f36493l;

    public final C4724u1 f36494m;

    public J1(C4724u1 c4724u1) {
        this.f36494m = c4724u1;
        this.f36482a = c4724u1.a(c4724u1.f38108n2, c4724u1.f38052g2, "name");
        this.f36483b = c4724u1.a(c4724u1.f38108n2, c4724u1.f37884J1, "ordinal");
        this.f36489h = c4724u1.a(c4724u1.f38108n2, c4724u1.a(c4724u1.f37884J1, c4724u1.f38068i2), "compareTo");
        this.f36492k = c4724u1.a(c4724u1.f38108n2, c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2, c4724u1.f37884J1), c4724u1.f38067i1);
        this.f36493l = c4724u1.a(c4724u1.f38108n2, c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.f38162u0);
        L2 l22 = c4724u1.f37988Y0;
        this.f36484c = c4724u1.a(l22, c4724u1.f38082k0, l22, new L2[]{c4724u1.f37946S0, c4724u1.f37925P0});
        L2 l23 = c4724u1.f37988Y0;
        L2 l24 = c4724u1.f38170v0;
        L2 l25 = c4724u1.f37823B;
        L2[] l2Arr = L2.f36559g;
        this.f36485d = c4724u1.a(l23, l24, l25, l2Arr);
        this.f36486e = c4724u1.a(c4724u1.f37988Y0, c4724u1.f38178w0, c4724u1.f37925P0, l2Arr);
        this.f36487f = c4724u1.a(c4724u1.f37988Y0, c4724u1.f38098m0, c4724u1.f37925P0, l2Arr);
        L2 l26 = c4724u1.f37988Y0;
        this.f36488g = c4724u1.a(l26, c4724u1.f38034e0, c4724u1.f37823B, new L2[]{l26});
        this.f36490i = c4724u1.a(c4724u1.f37988Y0, c4724u1.f37980X, c4724u1.f38177w, new L2[]{c4724u1.f37932Q0});
        this.f36491j = c4724u1.a(c4724u1.f37988Y0, c4724u1.f37987Y, c4724u1.f37823B, l2Arr);
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36482a);
        consumer.accept(this.f36483b);
    }

    public final void b(Consumer consumer) {
        consumer.accept(this.f36482a);
        consumer.accept(this.f36483b);
    }

    public final boolean a(F5 f52, M2 m22) {
        C4537k3 accessFlags = f52.getAccessFlags();
        if (f36481n || accessFlags.n()) {
            return f52.getReference().getType().E0() && f52.getReference().getType().a(1, this.f36494m) == m22 && accessFlags.o() && accessFlags.e();
        }
        throw new AssertionError();
    }
}
