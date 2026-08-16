package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.List;

public abstract class J3 extends AbstractC10561zE implements YC {
    public J3(List list, C10340xw0 c10340xw0) {
        super(list, c10340xw0);
    }

    @Override
    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        int v22 = v2();
        return v22 < 0 || b(v22) < 0;
    }

    public final int b(int i10) {
        int i11;
        C9126qh J10;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(1);
        if (!c10340xw0.M() || (J10 = c10340xw0.f53886c.J()) == null || (i11 = J10.u2()) < 0) {
            i11 = -1;
        }
        if (i11 < i10) {
            return i11;
        }
        return -1;
    }

    @Override
    public final boolean m1() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    public C10340xw0 u2() {
        return (C10340xw0) this.f54321f.get(0);
    }

    public final int v2() {
        C9126qh J10;
        int u22;
        C10340xw0 i10 = u2().i();
        if (!i10.d(new C6571bJ0())) {
            return -1;
        }
        AbstractC10561zE r10 = i10.r();
        r10.getClass();
        if (!(r10 instanceof C8769oZ)) {
            return r10.u0().f54321f.size();
        }
        C10340xw0 c10340xw0 = (C10340xw0) r10.t0().f54321f.get(0);
        if (c10340xw0.M() && (J10 = c10340xw0.f53886c.J()) != null && (u22 = J10.u2()) >= 0) {
            return u22;
        }
        return -1;
    }

    public abstract J3 w2();

    @Override
    public final J3 x() {
        return this;
    }
}
