package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class A10 extends AbstractC6148Wl0 {

    public static final boolean f38505d = true;

    public final long f38506c;

    public A10(int i10, long j10) {
        super(i10);
        this.f38506c = j10;
    }

    public abstract boolean a(long j10);

    @Override
    public final boolean a(VJ vj2) {
        C10340xw0 i10 = vj2.b(this.f45532b).i();
        return i10.d(new C8009jy0()) && a(i10.r().J().w2());
    }

    @Override
    public final AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0) {
        if (cVar.a(this.f45532b).c()) {
            com.android.tools.r8.graph.proto.g a10 = cVar.a(this.f45532b).a();
            if (!a10.f()) {
                if (f38505d) {
                    return C8602nZ.f50980b;
                }
                throw new AssertionError();
            }
            AbstractC5746Pm0 abstractC5746Pm0 = a10.f37616b;
            abstractC5746Pm0.getClass();
            if ((abstractC5746Pm0 instanceof C5341Im0) && a(abstractC5746Pm0.m().f41207c)) {
                return C8188l2.f49866b;
            }
            return C8602nZ.f50980b;
        }
        if (!f38505d) {
            if (cVar.f37604a.a(this.f45532b)) {
                throw new AssertionError();
            }
        }
        return a(cVar.b(this.f45532b), c6807cm0);
    }
}
