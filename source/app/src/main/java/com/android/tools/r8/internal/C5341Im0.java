package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;

public class C5341Im0 extends AbstractC4935Bm0 implements InterfaceC4924Bh {

    public static final boolean f41206d = true;

    public final long f41207c;

    public C5341Im0(long j10) {
        this.f41207c = j10;
    }

    @Override
    public final long A() {
        return this.f41207c;
    }

    @Override
    public final InterfaceC4924Bh G() {
        return this;
    }

    @Override
    public final int R() {
        return (int) this.f41207c;
    }

    @Override
    public final int S() {
        return ~((int) this.f41207c);
    }

    @Override
    public final boolean V() {
        return true;
    }

    @Override
    public final boolean Z() {
        return this.f41207c == 0;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final F1 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final boolean c0() {
        return Z() || h0();
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public final boolean h0() {
        return this.f41207c == 1;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public final boolean i0() {
        return true;
    }

    public final boolean j0() {
        if (!f41206d) {
            long j10 = this.f41207c;
            if (j10 != 0 && j10 != 1) {
                throw new AssertionError();
            }
        }
        return this.f41207c != 0;
    }

    @Override
    public final C5341Im0 m() {
        return this;
    }

    @Override
    public final String toString() {
        return "SingleNumberValue(" + this.f41207c + ")";
    }

    @Override
    public final SD b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y) {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final AbstractC9530t40 a(int[] iArr) {
        int i10 = (int) this.f41207c;
        boolean z10 = X3.f45604a;
        int length = iArr.length;
        boolean z11 = false;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                break;
            }
            if (iArr[i11] == i10) {
                z11 = true;
                break;
            }
            i11++;
        }
        return AbstractC9530t40.a(z11);
    }

    @Override
    public final boolean a(int i10) {
        return i10 == ((int) this.f41207c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean a(InterfaceC4924Bh interfaceC4924Bh) {
        F1 f12 = (F1) interfaceC4924Bh;
        f12.getClass();
        if (f12 instanceof C5392Jj) {
            return true;
        }
        if (f12 instanceof C5341Im0) {
            return this == interfaceC4924Bh.m();
        }
        if (!f41206d && !(f12 instanceof C10189x10) && !(f12 instanceof AbstractC10356y10)) {
            throw new AssertionError();
        }
        return interfaceC4924Bh.k().a((int) this.f41207c);
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        return new AbstractC10561zE[]{a(c4798y, interfaceC10674zw0, dv)};
    }

    public final C9126qh a(C4798y c4798y, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        AbstractC8999pu0 a10 = dv.a();
        C4515j0 q10 = dv.q();
        B60 position = dv.getPosition();
        if (!f41206d && !a10.x()) {
            throw new AssertionError();
        }
        boolean z10 = C9126qh.f51850m;
        C8959ph c8959ph = new C8959ph();
        c8959ph.f52321a = interfaceC10674zw0.a(a10, q10);
        C8959ph c8959ph2 = (C8959ph) c8959ph.a(position, c4798y.E());
        c8959ph2.f51588d = this.f41207c;
        return c8959ph2.c();
    }
}
