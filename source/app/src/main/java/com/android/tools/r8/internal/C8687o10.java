package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C8687o10 extends AbstractC6148Wl0 {

    public static final boolean f51134d = true;

    public final C8854p10 f51135c;

    public C8687o10(int i10, C8854p10 c8854p10) {
        super(i10);
        if (!f51134d && !c8854p10.e() && !c8854p10.d()) {
            throw new AssertionError();
        }
        this.f51135c = c8854p10;
    }

    @Override
    public final AbstractC6148Wl0 a(int i10, C6807cm0 c6807cm0) {
        throw null;
    }

    @Override
    public final boolean a(VJ vj2) {
        C10340xw0 b10 = vj2.b(this.f45532b);
        AbstractC8999pu0 u10 = b10.u();
        if (!f51134d && !u10.y()) {
            throw new AssertionError();
        }
        if (u10.B() == this.f51135c) {
            return true;
        }
        return b10.d(new C10231xF0()) && b10.i().u().B() == this.f51135c;
    }

    @Override
    public final AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0) {
        com.android.tools.r8.graph.proto.b a10 = cVar.a(this.f45532b);
        if (a10.c()) {
            com.android.tools.r8.graph.proto.g a11 = cVar.a(this.f45532b).a();
            if (!a11.f()) {
                if (f51134d) {
                    return C8602nZ.f50980b;
                }
                throw new AssertionError();
            }
            AbstractC5746Pm0 abstractC5746Pm0 = a11.f37616b;
            abstractC5746Pm0.getClass();
            if ((abstractC5746Pm0 instanceof C5283Hm0) && this.f51135c.e()) {
                return C8188l2.f49866b;
            }
            return C8602nZ.f50980b;
        }
        int b10 = cVar.b(this.f45532b);
        if ((a10 instanceof com.android.tools.r8.graph.proto.k) && a10.b().e().L0()) {
            if (this.f51135c.e()) {
                c6807cm0.getClass();
                return new C6667bv(b10, 0L);
            }
            c6807cm0.getClass();
            return new C7186f10(b10, 0L);
        }
        return c6807cm0.a(b10, this.f51135c);
    }
}
