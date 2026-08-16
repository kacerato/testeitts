package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C7201f60;
import java.util.Iterator;

public final class C7368g60 extends C7201f60 {

    public static final boolean f48187v = true;

    public C7368g60(int i10, W5 w52, AbstractC8999pu0 abstractC8999pu0, C4515j0 c4515j0, C7201f60.a aVar) {
        super(i10, w52, abstractC8999pu0, c4515j0, aVar);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        boolean z10 = f48187v;
        if (!z10 && c4798y.m()) {
            throw new AssertionError();
        }
        if (this.f53896m.x()) {
            return this.f53896m.c().a(c4798y.b());
        }
        if (this.f53896m.r()) {
            return this.f53896m.a().a(c4798y.b());
        }
        if (z10 || this.f53896m.s()) {
            return this.f53896m.b().E();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC8999pu0 d(C4798y c4798y) {
        boolean z10 = f48187v;
        if (!z10 && c4798y.m()) {
            throw new AssertionError();
        }
        if (this.f53896m.x()) {
            return this.f53896m;
        }
        if (!z10 && !this.f53896m.y()) {
            throw new AssertionError();
        }
        C8854p10 a10 = C8854p10.a();
        Iterator<C10340xw0> it = c0().iterator();
        while (it.hasNext()) {
            a10 = a10.a(it.next().f53896m.B());
        }
        return this.f53896m.d().a(a10);
    }
}
