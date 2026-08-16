package com.android.tools.r8.internal;

public final class C5020Da implements O8 {

    public final com.android.tools.r8.graph.H5 f39550a;

    public final com.android.tools.r8.graph.G f39551b;

    public final C5252Ha f39552c;

    public C5020Da(C5252Ha c5252Ha, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.G g10) {
        this.f39552c = c5252Ha;
        this.f39550a = h52;
        this.f39551b = g10;
    }

    @Override
    public final int a() {
        return this.f39551b.f36304g;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c() {
        return this.f39550a.getReference();
    }

    @Override
    public final int d() {
        return this.f39551b.G0();
    }

    @Override
    public final C6876d9 e() {
        return this.f39552c.f40790b;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return m22 == this.f39550a.getHolder().a1();
    }
}
