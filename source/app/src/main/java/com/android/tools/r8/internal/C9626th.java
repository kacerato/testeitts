package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C9626th extends AbstractC6148Wl0 {

    public static final boolean f52669c = true;

    public C9626th(int i10) {
        super(i10);
    }

    @Override
    public final AbstractC6148Wl0 a(int i10, C6807cm0 c6807cm0) {
        throw null;
    }

    @Override
    public final AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0) {
        if (cVar.a(this.f45532b).c()) {
            com.android.tools.r8.graph.proto.g a10 = cVar.a(this.f45532b).a();
            if (!a10.f()) {
                if (f52669c) {
                    return C8602nZ.f50980b;
                }
                throw new AssertionError();
            }
            if (a10.f37616b.e0()) {
                return C8188l2.f49866b;
            }
            return C8602nZ.f50980b;
        }
        if (!f52669c) {
            if (cVar.f37604a.a(this.f45532b)) {
                throw new AssertionError();
            }
        }
        return c6807cm0.a(cVar.b(this.f45532b));
    }

    @Override
    public final boolean a(VJ vj2) {
        return vj2.b(this.f45532b).i().d(new C5732Pf1());
    }
}
