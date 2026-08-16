package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C8504mw0 extends VT {
    public C8504mw0(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final C8504mw0 S0() {
        return this;
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 >>> i11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C5178Fs(i10, i11);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C5352Is(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        return new C5410Js(i10, i11, i12);
    }

    @Override
    public final boolean e(C10340xw0 c10340xw0) {
        return this.f52781k == T10.f44369e && c10340xw0.M() && c10340xw0.n().J().x2();
    }

    @Override
    public final int r2() {
        return 67;
    }

    @Override
    public final boolean v2() {
        return false;
    }

    @Override
    public final EnumC9105qa z2() {
        return EnumC9105qa.f51809d;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 >>> ((int) j11);
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        throw new C5417Jv0("Unsupported instruction ShrIntLit16");
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C5294Hs(i10, i11, i12);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8504mw0) && abstractC10561zE.S0().f52781k == this.f52781k;
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C5236Gs(i10, i11, i12);
    }

    @Override
    public final F1 a(C4798y c4798y, F1 f12, F1 f13) {
        f13.getClass();
        if (!(f13 instanceof C5341Im0)) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        int i11 = ((int) f13.m().f41207c) & 31;
        if (i11 == 0) {
            return f12;
        }
        if (f12 instanceof C5341Im0) {
            return c4798y.f38427t.a(((int) ((C5341Im0) f12).f41207c) >>> i11);
        }
        if (f12.V()) {
            return c4798y.f38427t.a(f12.R() >>> i11, (f12.S() >>> i11) | (Integer.MIN_VALUE >> (i11 - 1)));
        }
        int i12 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
