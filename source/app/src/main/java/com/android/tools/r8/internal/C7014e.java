package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C7014e extends AbstractC8489mr0 {

    public final com.android.tools.r8.graph.A2 f47563c;

    public final boolean f47564d;

    public final com.android.tools.r8.graph.A2 f47565e;

    public final com.android.tools.r8.graph.A2[] f47566f;

    public final int f47567g;

    public final C4554l1 f47568h;

    public C7014e(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2[] a2Arr) {
        super(c4798y, m22);
        this.f47563c = a22;
        this.f47564d = z10;
        this.f47565e = a23;
        this.f47566f = a2Arr;
        this.f47567g = z10 ? 185 : 182;
        this.f47568h = null;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        if (a22.w0() == 2) {
            if (z10) {
                throw new C5325If("Unsupported conversion with two parameters on static method");
            }
            if (!z10) {
                arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
                if (this.f47568h != null) {
                    arrayList.add(new T9(this.f47568h));
                }
            }
        } else if (a22.w0() != 1) {
            throw new C5325If("Unsupported conversion with invalid number of parameters (" + a22.w0() + ")");
        }
        arrayList.add(new C7437ga(184, a22, false));
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.f47567g == 184;
        if (!z10) {
            arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
            if (this.f47568h != null) {
                arrayList.add(new T9(this.f47568h));
            }
        }
        int a10 = C8704o7.a(!z10);
        for (int i10 = 0; i10 < this.f47563c.w0(); i10++) {
            EnumC5477Kw0 a11 = EnumC5477Kw0.a(this.f47563c.k(i10));
            arrayList.add(new C8938pa(a11, a10));
            com.android.tools.r8.graph.A2 a22 = this.f47566f[i10];
            if (a22 != null) {
                a(a22, arrayList, z10);
            }
            a10 += a11.b() ? 2 : 1;
        }
        arrayList.add(new C7437ga(this.f47567g, this.f47563c, this.f47564d));
        com.android.tools.r8.graph.A2 a23 = this.f47565e;
        if (a23 != null) {
            a(a23, arrayList, z10);
        }
        if (this.f47563c.z0().S0()) {
            arrayList.add(new C6607bb());
        } else {
            arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f47563c.z0())));
        }
        return a(arrayList);
    }

    public C7014e(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2[] a2Arr, int i10) {
        super(c4798y, m22);
        this.f47563c = a22;
        this.f47564d = z10;
        this.f47565e = a23;
        this.f47566f = a2Arr;
        this.f47567g = i10;
        this.f47568h = null;
    }

    public C7014e(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2[] a2Arr, C4554l1 c4554l1) {
        super(c4798y, m22);
        this.f47563c = a22;
        this.f47564d = z10;
        this.f47565e = a23;
        this.f47566f = a2Arr;
        this.f47567g = z10 ? 185 : 182;
        this.f47568h = c4554l1;
    }
}
