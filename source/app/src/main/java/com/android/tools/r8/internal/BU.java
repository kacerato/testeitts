package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;

public final class BU {

    public static final boolean f38908s = true;

    public final IdentityHashMap f38909a = new IdentityHashMap();

    public final IC f38910b;

    public final IdentityHashMap f38911c;

    public final C8051kC f38912d;

    public final C8051kC f38913e;

    public final C8051kC f38914f;

    public final C8051kC f38915g;

    public final C8051kC f38916h;

    public final C8051kC f38917i;

    public final C8051kC f38918j;

    public final C8051kC f38919k;

    public final LinkedHashMap f38920l;

    public final C8051kC f38921m;

    public final IC f38922n;

    public final C8051kC f38923o;

    public final IC f38924p;

    public final C8051kC f38925q;

    public final C8051kC f38926r;

    public BU() {
        int i10 = QC.f43505c;
        this.f38910b = new IC();
        this.f38911c = new IdentityHashMap();
        this.f38912d = new C8051kC(4);
        this.f38913e = new C8051kC(4);
        this.f38914f = new C8051kC(4);
        this.f38915g = new C8051kC(4);
        this.f38916h = new C8051kC(4);
        this.f38917i = new C8051kC(4);
        this.f38918j = new C8051kC(4);
        this.f38919k = new C8051kC(4);
        this.f38920l = new LinkedHashMap();
        this.f38921m = new C8051kC(4);
        this.f38922n = new IC();
        this.f38923o = new C8051kC(4);
        this.f38924p = new IC();
        this.f38925q = new C8051kC(4);
        this.f38926r = new C8051kC(4);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        this.f38914f.a(a22, a23);
    }

    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        boolean z10 = f38908s;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && m23 == null) {
            throw new AssertionError();
        }
        if (!z10 && m22 == m23) {
            throw new AssertionError();
        }
        if (!z10 && this.f38909a.containsKey(m22) && this.f38909a.get(m22) != m23) {
            throw new AssertionError();
        }
        this.f38909a.put(m22, m23);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2[] a2Arr) {
        this.f38918j.a(a22, a2Arr);
    }

    public final void a(com.android.tools.r8.graph.A2 a22) {
        this.f38924p.a(a22);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        this.f38921m.a(m22, m23);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        this.f38922n.a(m22);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.L4 l42) {
        this.f38925q.a(a22, l42);
    }

    public final void a(C4554l1 c4554l1, C4537k3 c4537k3) {
        this.f38926r.a(c4554l1, c4537k3);
    }

    public final void a(QC qc2) {
        ArrayList arrayList = new ArrayList();
        for (com.android.tools.r8.graph.M2 m22 : this.f38909a.o()) {
            if (qc2.contains(m22)) {
                arrayList.add(m22);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        throw new C5325If("The compilation cannot proceed because the desugared library specification contains ambiguous flags that the compiler cannot interpret: The following types are both rewritten and maintained " + ((Object) arrayList));
    }

    public final CU a() {
        QC a10 = this.f38910b.a();
        a(a10);
        return new CU(this.f38909a, a10, this.f38911c, this.f38912d.b(), this.f38913e.b(), this.f38914f.b(), this.f38915g.b(), this.f38916h.b(), this.f38917i.b(), this.f38918j.b(), this.f38919k.b(), this.f38920l, this.f38921m.b(), this.f38922n.a(), this.f38923o.b(), this.f38924p.a(), this.f38925q.b(), this.f38926r.b());
    }
}
