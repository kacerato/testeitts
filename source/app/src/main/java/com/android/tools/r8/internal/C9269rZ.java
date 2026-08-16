package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Collections;

public final class C9269rZ extends AbstractC10561zE {

    public static final boolean f52061n = true;

    public final int f52062k;

    public final long f52063l;

    public final short[] f52064m;

    public C9269rZ(C10340xw0 c10340xw0, int i10, long j10, short[] sArr) {
        super((C10340xw0) null, c10340xw0);
        this.f52062k = i10;
        this.f52063l = j10;
        this.f52064m = sArr;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.b2()) {
            return false;
        }
        C9269rZ v02 = abstractC10561zE.v0();
        return v02.f52062k == this.f52062k && v02.f52063l == this.f52063l && Arrays.equals(v02.f52064m, this.f52064m);
    }

    @Override
    public final boolean b2() {
        return true;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f52061n) {
            return 0;
        }
        throw new AssertionError((Object) "NewArrayFilledData defines no values.");
    }

    @Override
    public final int r2() {
        return 48;
    }

    @Override
    public final C9269rZ v0() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        C5402Jo c5402Jo = new C5402Jo(c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g));
        c5458Kn.f41769h.add(new C4936Bn(this, c5402Jo));
        c5458Kn.a(this, c5402Jo);
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (a(c4798y, h52, m12, c10394yE) || ((C10340xw0) this.f54321f.get(0)).U() > 1) {
            return true;
        }
        boolean z10 = f52061n;
        if (!z10 && ((C10340xw0) this.f54321f.get(0)).Z() != this) {
            throw new AssertionError();
        }
        if (!z10 && ((C10340xw0) this.f54321f.get(0)).j()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC10561zE abstractC10561zE = ((C10340xw0) this.f54321f.get(0)).f53886c;
            abstractC10561zE.getClass();
            if (!(abstractC10561zE instanceof C8769oZ)) {
                throw new AssertionError();
            }
        }
        return false;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0("Conversion from DEX to classfile not supported for NewArrayFilledData");
    }

    @Override
    public final void a(PS ps) {
        int i10 = this.f52062k;
        long j10 = this.f52063l;
        short[] sArr = this.f52064m;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        ps.a(215, Collections.singletonList(new JS(i10, j10, sArr)), Collections.singletonList(c10340xw0));
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0("Conversion from DEX to classfile not supported for NewArrayFilledData");
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return c4798y.E().f50690i1 || ((C10340xw0) this.f54321f.get(0)).u().v();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        C10394yE c10394yE = C10394yE.f53978a;
        if (!b(c4798y, h52, m12, c10394yE) && this.f52063l <= 2147483647L) {
            if (!f52061n && a(c4798y, h52, m12, c10394yE)) {
                throw new AssertionError();
            }
            MQ a10 = c4798y.f38427t.a((int) this.f52063l);
            boolean z10 = C4997Co0.f39365c;
            a10.getClass();
            return new C4997Co0(a10);
        }
        return C10504yv0.f54195b;
    }
}
