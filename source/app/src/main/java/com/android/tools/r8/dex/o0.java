package com.android.tools.r8.dex;

import com.android.tools.r8.errors.DexFileOverflowDiagnostic;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class o0 extends j0 {
    public o0(C4311k c4311k, Collection collection, C8570nJ c8570nJ) {
        super(c4311k, collection, c8570nJ, AbstractC9148qo0.b());
    }

    @Override
    public final ArrayList a() {
        Map b10 = b();
        Iterator it = this.f35871d.iterator();
        while (it.hasNext()) {
            this.f35873f.a((H2) it.next());
        }
        this.f35873f.f35957c.a();
        t0 t0Var = this.f35873f;
        C5094Ef0 c5094Ef0 = this.f35874g.f50691j;
        if (!t0Var.a(65536)) {
            if (this.f35874g.I() && !b10.isEmpty()) {
                a(b10, AbstractC9148qo0.b());
            }
            return this.f35868c;
        }
        n0 n0Var = t0Var.f35957c;
        long size = n0Var.f35899b.f35940f.size() + n0Var.f35903f.size();
        n0 n0Var2 = t0Var.f35957c;
        c5094Ef0.a(null, new DexFileOverflowDiagnostic(false, size, n0Var2.f35899b.f35941g.size() + n0Var2.f35902e.size()));
        throw c5094Ef0.f39969c;
    }
}
