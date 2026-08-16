package com.android.tools.r8.shaking;

public final class H0 extends AbstractC11279k0 {

    public final com.android.tools.r8.graph.F5 f56519a;

    public final com.android.tools.r8.graph.H5 f56520b;

    public final J f56521c;

    public H0(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        this.f56519a = f52;
        this.f56520b = h52;
        this.f56521c = null;
    }

    @Override
    public final void a(N n10) {
        J j10 = this.f56521c;
        if (j10 == null) {
            com.android.tools.r8.graph.F5 f52 = this.f56519a;
            com.android.tools.r8.graph.H5 h52 = this.f56520b;
            n10.f56796g.a(f52);
            if (n10.a(f52.getReference(), h52, false, true) || n10.a(f52.getReference(), h52, true, true)) {
                n10.b(f52, h52, new T1(h52.d()));
                return;
            }
            return;
        }
        if (j10.a()) {
            com.android.tools.r8.graph.F5 f53 = this.f56519a;
            com.android.tools.r8.graph.H5 h53 = this.f56520b;
            n10.f56796g.a(f53);
            if (n10.a(f53.getReference(), h53, true, true)) {
                n10.b(f53, h53, new T1(h53.d()));
                return;
            }
            return;
        }
        com.android.tools.r8.graph.F5 f54 = this.f56519a;
        com.android.tools.r8.graph.H5 h54 = this.f56520b;
        n10.f56796g.a(f54);
        if (n10.a(f54.getReference(), h54, false, true)) {
            n10.b(f54, h54, new T1(h54.d()));
        }
    }

    public H0(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52, J j10) {
        this.f56519a = f52;
        this.f56520b = h52;
        this.f56521c = j10;
    }
}
