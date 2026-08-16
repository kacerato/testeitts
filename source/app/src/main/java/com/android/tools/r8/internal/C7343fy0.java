package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C7343fy0 extends VT {
    public C7343fy0(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final C7343fy0 T0() {
        return this;
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 ^ i11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C5641Ns(i10, i11);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C5873Rs(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        return new C5931Ss(i10, i11, i12);
    }

    @Override
    public final int r2() {
        return 68;
    }

    @Override
    public final boolean v2() {
        return true;
    }

    @Override
    public final EnumC9105qa z2() {
        return EnumC9105qa.f51812g;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 ^ j11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        return new C5757Ps(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C5815Qs(i10, i11, i12);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7343fy0) && abstractC10561zE.T0().f52781k == this.f52781k;
    }

    @Override
    public final F1 a(C4798y c4798y, F1 f12, F1 f13) {
        if (f12 instanceof C5341Im0) {
            f13.getClass();
            if (f13 instanceof C5341Im0) {
                return c4798y.f38427t.a(((int) ((C5341Im0) f12).f41207c) ^ ((int) f13.m().f41207c));
            }
        }
        if (f12.V() && f13.V()) {
            return c4798y.f38427t.a((f12.R() & f13.S()) | (f12.S() & f13.R()), (f12.S() & f13.S()) | (f12.R() & f13.R()));
        }
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final boolean a(Set set) {
        return ((C10340xw0) this.f54321f.get(0)).a(set) && y2().a(set);
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C5699Os(i10, i11, i12);
    }
}
