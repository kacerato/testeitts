package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class A40 extends VT {
    public A40(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final A40 A0() {
        return this;
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 | i11;
    }

    @Override
    public final A40 b(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw0 == ((C10340xw0) this.f54321f.get(0)) && c10340xw02 == y2()) {
            return this;
        }
        return null;
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C9322rr(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        return new C9489sr(i10, i11, i12);
    }

    @Override
    public final int r2() {
        return 53;
    }

    @Override
    public final boolean v2() {
        return true;
    }

    @Override
    public final EnumC9105qa z2() {
        return EnumC9105qa.f51811f;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 | j11;
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C9156qr(i10, i11, i12);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C8655nr(i10, i11);
    }

    @Override
    public final boolean a(Set set) {
        return ((C10340xw0) this.f54321f.get(0)).a(set) && y2().a(set);
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        return new C8989pr(i10, i11, i12);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof A40) && abstractC10561zE.A0().f52781k == this.f52781k;
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C8822or(i10, i11, i12);
    }

    @Override
    public final F1 a(C4798y c4798y, F1 f12, F1 f13) {
        return AbstractC8348m.b(c4798y, f12, f13);
    }
}
