package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class K9 implements O8 {

    public final C6876d9 f41598a;

    public final com.android.tools.r8.graph.G f41599b;

    public final com.android.tools.r8.graph.H5 f41600c;

    public K9(C4798y c4798y, com.android.tools.r8.graph.G g10, com.android.tools.r8.graph.H5 h52) {
        this.f41598a = c4798y.H().f50874f0 ? new C10610zb(c4798y.L(), 0) : new C6876d9(c4798y);
        this.f41599b = g10;
        this.f41600c = h52;
    }

    @Override
    public final int a() {
        return this.f41599b.f36304g;
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c() {
        return this.f41600c.getReference();
    }

    @Override
    public final int d() {
        return this.f41599b.G0();
    }

    @Override
    public final C6876d9 e() {
        return this.f41598a;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return m22.a(this.f41600c.getHolder().a1());
    }
}
