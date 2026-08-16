package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;

public final class C5701Ot extends AbstractC8849p implements LQ {

    public static final C5701Ot f43063a = new C5701Ot();

    public static final boolean f43064b = true;

    @Override
    public final AbstractC8849p a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.O5 o52) {
        return this;
    }

    @Override
    public final LQ b() {
        return this;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final int size() {
        return 0;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.F0 f02) {
        return false;
    }

    @Override
    public final boolean a(C4460g1 c4460g1) {
        return false;
    }

    @Override
    public final AbstractC8849p a(final C4798y c4798y, com.android.tools.r8.graph.proto.c cVar) {
        if (!cVar.b()) {
            final C9123qg c9123qg = new C9123qg();
            cVar.a(new ZH() {
                @Override
                public final void a(int i10, Object obj) {
                    C5701Ot.a(C4798y.this, c9123qg, i10, (com.android.tools.r8.graph.proto.b) obj);
                }
            });
            if (!c9123qg.f51848a.isEmpty()) {
                return c9123qg;
            }
        }
        return this;
    }

    public static void a(C4798y c4798y, C9123qg c9123qg, int i10, com.android.tools.r8.graph.proto.b bVar) {
        if (bVar.c()) {
            com.android.tools.r8.graph.proto.g a10 = bVar.a();
            if (a10.f() && a10.f37616b.f0()) {
                AbstractC5167Fm0 N10 = a10.f37616b.N();
                C4460g1 b10 = N10.f40306c.b(c4798y.g(N10.f40306c.s0()));
                if (b10 != null) {
                    c9123qg.f51848a.add(b10);
                } else if (!f43064b) {
                    throw new AssertionError();
                }
            }
        }
    }
}
