package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C9523t2 extends VT {
    public C9523t2(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 & i11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C7309fn(i10, i11);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C7975jn(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        return new C8142kn(i10, i11, i12);
    }

    @Override
    public final int r2() {
        return 4;
    }

    @Override
    public final C9523t2 u() {
        return this;
    }

    @Override
    public final boolean v2() {
        return true;
    }

    @Override
    public final EnumC9105qa z2() {
        return EnumC9105qa.f51810e;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 & j11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        return new C7643hn(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C7809in(i10, i11, i12);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9523t2) && abstractC10561zE.u().f52781k == this.f52781k;
    }

    @Override
    public final C9523t2 a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw0 == ((C10340xw0) this.f54321f.get(0)) && c10340xw02 == y2()) {
            return this;
        }
        return null;
    }

    @Override
    public final boolean a(Set set) {
        return ((C10340xw0) this.f54321f.get(0)).a(set) && y2().a(set);
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C7476gn(i10, i11, i12);
    }

    @Override
    public final F1 a(C4798y c4798y, F1 f12, F1 f13) {
        return AbstractC8348m.a(c4798y, f12, f13);
    }
}
