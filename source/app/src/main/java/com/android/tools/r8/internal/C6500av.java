package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C6500av extends AbstractC6148Wl0 {

    public static final boolean f46647d = true;

    public final boolean f46648c;

    public C6500av(int i10, boolean z10) {
        super(i10);
        this.f46648c = z10;
    }

    @Override
    public final AbstractC6148Wl0 a(int i10, C6807cm0 c6807cm0) {
        throw null;
    }

    @Override
    public final boolean a(VJ vj2) {
        C10340xw0 i10 = vj2.b(this.f45532b).i();
        return i10.d(new C8009jy0()) && (i10.r().J().A2() ^ true) == this.f46648c;
    }

    @Override
    public final AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0) {
        if (cVar.a(this.f45532b).c()) {
            com.android.tools.r8.graph.proto.g a10 = cVar.a(this.f45532b).a();
            if (!a10.f()) {
                if (f46647d) {
                    return C8602nZ.f50980b;
                }
                throw new AssertionError();
            }
            AbstractC5746Pm0 abstractC5746Pm0 = a10.f37616b;
            abstractC5746Pm0.getClass();
            if ((abstractC5746Pm0 instanceof C5341Im0) && abstractC5746Pm0.m().j0() == this.f46648c) {
                return C8188l2.f49866b;
            }
            return C8602nZ.f50980b;
        }
        if (!f46647d) {
            if (cVar.f37604a.a(this.f45532b)) {
                throw new AssertionError();
            }
        }
        return c6807cm0.a(cVar.b(this.f45532b), this.f46648c);
    }
}
