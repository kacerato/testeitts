package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.L2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class i0 {

    public final C4798y f35866a;

    public final C4311k f35867b;

    public final ArrayList f35868c = new ArrayList();

    public i0(C4311k c4311k) {
        this.f35866a = c4311k.f35876a;
        this.f35867b = c4311k;
    }

    public abstract ArrayList a();

    public final void a(t0 t0Var) {
        List list = this.f35867b.f35882g;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = this.f35867b.f35882g.iterator();
        while (it.hasNext()) {
            t0Var.f35957c.a((L2) it.next());
        }
        t0Var.f35957c.a();
    }
}
