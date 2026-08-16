package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Set;

public class JA {

    public final com.android.tools.r8.graph.M2 f41338a;

    public final Set f41339b;

    public JA(com.android.tools.r8.graph.M2 m22, Set set) {
        this.f41338a = m22;
        this.f41339b = set;
    }

    public boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        return this.f41339b.contains(a22);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof JA)) {
            return false;
        }
        JA ja2 = (JA) obj;
        return this.f41338a.a(ja2.f41338a) && this.f41339b.equals(ja2.f41339b);
    }

    public final int hashCode() {
        return this.f41339b.hashCode() + (this.f41338a.hashCode() * 7);
    }

    public JA a(JA ja2) {
        if (this.f41338a.a(ja2.f41338a)) {
            int i10 = QC.f43505c;
            IC ic2 = new IC();
            ic2.a((Iterable) this.f41339b);
            ic2.a((Iterable) ja2.f41339b);
            return new JA(this.f41338a, ic2.a());
        }
        throw new UnsupportedOperationException("Emulated interface descriptor can only be merged on the same rewritten type.");
    }
}
