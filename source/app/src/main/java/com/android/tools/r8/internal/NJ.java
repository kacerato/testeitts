package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public abstract class NJ extends AbstractC10561zE {

    public static final boolean f42556k = true;

    public NJ(List list, C10340xw0 c10340xw0) {
        super(list, c10340xw0);
    }

    public static NJ a(EnumC8071kK enumC8071kK, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.I2 i22, C10340xw0 c10340xw0, List list, boolean z10) {
        switch (enumC8071kK.ordinal()) {
            case 0:
                return new QJ((com.android.tools.r8.graph.A2) abstractC4592n1, c10340xw0, list, z10);
            case 1:
                return new TJ((com.android.tools.r8.graph.A2) abstractC4592n1, c10340xw0, list);
            case 2:
                return new C7405gK((com.android.tools.r8.graph.A2) abstractC4592n1, c10340xw0, list, z10);
            case 3:
                return new C7572hK((com.android.tools.r8.graph.A2) abstractC4592n1, c10340xw0, list, z10);
            case 4:
                return new C8405mK((com.android.tools.r8.graph.A2) abstractC4592n1, c10340xw0, list);
            case 5:
                return new C9103qZ((com.android.tools.r8.graph.M2) abstractC4592n1, c10340xw0, list);
            case 6:
                return new XJ((com.android.tools.r8.graph.M2) abstractC4592n1, c10340xw0, list);
            case 7:
                throw new C5417Jv0("Use InvokeCustom constructor instead");
            case 8:
                return new YJ((com.android.tools.r8.graph.A2) abstractC4592n1, i22, c10340xw0, list);
            default:
                throw new C5417Jv0("Unknown invoke type: " + ((Object) enumC8071kK));
        }
    }

    @Override
    public final boolean N1() {
        return true;
    }

    @Override
    public final String X0() {
        return "Invoke-" + x2();
    }

    @Override
    public final NJ a0() {
        return this;
    }

    public boolean b(C5458Kn c5458Kn) {
        if (this.f54321f.size() == 1) {
            return (b(0).f53896m.C() + c5458Kn.f41765d.b(b(0), this.f54322g)) - 1 > 15;
        }
        return y2() > 5 || a(c5458Kn.f41765d);
    }

    public final void c(C5458Kn c5458Kn) {
        C10340xw0 b10 = b(0);
        int C10 = b10.f53896m.C() + a(c5458Kn, b10);
        for (int i10 = 1; i10 < this.f54321f.size(); i10++) {
            C10340xw0 b11 = b(i10);
            if (!f42556k && C10 != a(c5458Kn, b11)) {
                throw new AssertionError();
            }
            C10 += b11.f53896m.C();
        }
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return (this.f54321f.size() == 1 || y2() > 5 || a((V60) EnumC6871d70.f47286b)) ? 65535 : 15;
    }

    @Override
    public final int q2() {
        return 255;
    }

    public final C10340xw0 u2() {
        return b(this.f54321f.size() - 1);
    }

    public abstract com.android.tools.r8.graph.M2 v2();

    public abstract EnumC8071kK w2();

    public abstract String x2();

    public final int y2() {
        ArrayList arrayList = this.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            i11 += ((C10340xw0) obj).f53896m.C();
        }
        return i11;
    }

    public final boolean a(V60 v60) {
        C8024k3 c8024k3;
        if (this.f54321f.isEmpty() || (c8024k3 = (C8024k3) b(0).a(new NN0())) == null) {
            return false;
        }
        int i10 = 1;
        while (i10 < this.f54321f.size()) {
            C8024k3 c8024k32 = (C8024k3) b(i10).a(new NN0());
            if (c8024k3.Y0() != c8024k32) {
                return false;
            }
            i10++;
            c8024k3 = c8024k32;
        }
        return AbstractC9907vK.a(this.f54321f, v60);
    }

    public final C10340xw0 b(int i10) {
        if (f42556k || i10 < this.f54321f.size()) {
            return (C10340xw0) this.f54321f.get(i10);
        }
        throw new AssertionError();
    }

    public final int a(C5458Kn c5458Kn, int[] iArr) {
        if (!f42556k && b(c5458Kn)) {
            throw new AssertionError();
        }
        ArrayList arrayList = this.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            int a10 = c5458Kn.f41765d.a(c10340xw0, this.f54322g);
            if ((c10340xw0.f53896m.C() + a10) - 1 > 15) {
                a10 = c5458Kn.f41765d.b(c10340xw0, this.f54322g);
            }
            if (!f42556k && (c10340xw0.f53896m.C() + a10) - 1 > 15) {
                throw new AssertionError();
            }
            int i12 = 0;
            while (i12 < c10340xw0.f53896m.C()) {
                if (!f42556k && i11 >= 5) {
                    throw new AssertionError();
                }
                iArr[i11] = a10;
                i12++;
                i11++;
                a10++;
            }
        }
        return i11;
    }

    public final void a(AbstractC5635Np abstractC5635Np, C5458Kn c5458Kn) {
        AbstractC5635Np c5695Oq;
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 != null && c10340xw0.T()) {
            AbstractC8999pu0 u10 = this.f54320e.u();
            int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
            if (u10.z()) {
                c5695Oq = new C5637Nq(b10);
            } else if (u10.A()) {
                c5695Oq = new C5753Pq(b10);
            } else if (u10.y()) {
                c5695Oq = new C5695Oq(b10);
            } else {
                throw new C5417Jv0("Unexpected result type " + ((Object) s2()));
            }
            c5458Kn.a(this, abstractC5635Np, c5695Oq);
            return;
        }
        c5458Kn.a(this, abstractC5635Np);
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        if (!f42556k && (c10340xw0 == null || !c10340xw0.u().y())) {
            throw new AssertionError();
        }
        C10340xw0 c10340xw02 = this.f54320e;
        if (c10340xw02 == null) {
            return false;
        }
        AbstractC8999pu0 u10 = c10340xw02.u();
        if (u10.x()) {
            return false;
        }
        if (c4798y.f().i() && u10.s() && c10340xw0.u().s() && c4798y.f().m().a(u10.b().E(), c10340xw0.u().b().E())) {
            return false;
        }
        return u10.y();
    }

    public final boolean a(final C8421mS c8421mS) {
        Objects.requireNonNull(c8421mS);
        return a(new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C8421mS.this.a((C10340xw0) obj);
            }
        });
    }

    @Override
    public AbstractC8999pu0 a(C4798y c4798y) {
        com.android.tools.r8.graph.M2 v22 = v2();
        if (!v22.S0()) {
            return AbstractC8999pu0.a(v22, C8854p10.h(), (C4798y<?>) c4798y);
        }
        throw new C5417Jv0("void methods have no type.");
    }

    @Override
    public final boolean a(Set set) {
        return v2().F0();
    }

    public final int a(C5458Kn c5458Kn, C10340xw0 c10340xw0) {
        if (a(c5458Kn.f41765d)) {
            C8421mS c8421mS = c5458Kn.f41765d;
            c8421mS.getClass();
            if (C8421mS.f50291s || c10340xw0.H()) {
                return c8421mS.c(c10340xw0.f53891h.f40215e.f40221k);
            }
            throw new AssertionError();
        }
        return c5458Kn.f41765d.b(c10340xw0, this.f54322g);
    }
}
