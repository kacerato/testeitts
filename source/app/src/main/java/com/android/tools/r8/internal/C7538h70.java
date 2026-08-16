package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Objects;

public final class C7538h70 {

    public final com.android.tools.r8.graph.L4 f48445a;

    public final boolean f48446b;

    public final AbstractC9530t40 f48447c;

    public C7538h70(C4516j1 c4516j1, boolean z10) {
        boolean z11 = com.android.tools.r8.graph.L4.f36564f;
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        if (c4516j1.getAccessFlags().h()) {
            k42.f37168a.u();
        } else {
            k42.f37168a.A();
        }
        if (c4516j1.getAccessFlags().k()) {
            k42.f37168a.v();
        } else {
            k42.f37168a.B();
        }
        com.android.tools.r8.graph.K4 k43 = (com.android.tools.r8.graph.K4) k42.a(c4516j1.getAccessFlags().l());
        if (c4516j1.getAccessFlags().K()) {
            ((com.android.tools.r8.graph.L4) k43.f37168a).a(2048);
        } else {
            ((com.android.tools.r8.graph.L4) k43.f37168a).b(2048);
        }
        if (c4516j1.getAccessFlags().L()) {
            ((com.android.tools.r8.graph.L4) k43.f37168a).a(32);
        } else {
            ((com.android.tools.r8.graph.L4) k43.f37168a).b(32);
        }
        this.f48445a = (com.android.tools.r8.graph.L4) k43.f37168a;
        this.f48446b = z10;
        this.f48447c = c4516j1.k1();
    }

    public final boolean equals(Object obj) {
        if (obj == null || C7538h70.class != obj.getClass()) {
            return false;
        }
        C7538h70 c7538h70 = (C7538h70) obj;
        return this.f48445a.equals(c7538h70.f48445a) && this.f48446b == c7538h70.f48446b && this.f48447c == c7538h70.f48447c;
    }

    public final int hashCode() {
        return Objects.hash(this.f48445a, Boolean.valueOf(this.f48446b), Integer.valueOf(this.f48447c.f()));
    }
}
