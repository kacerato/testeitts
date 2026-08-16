package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C6405aK extends AbstractC4446f6 {

    public static final boolean f46488g = true;

    public ZJ f46489e;

    public com.android.tools.r8.graph.A2 f46490f;

    public C6405aK(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52);
        this.f46489e = ZJ.f46224g;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, ZJ zj2) {
        if (this.f46489e != ZJ.f46224g) {
            this.f46489e = ZJ.f46223f;
            this.f46490f = null;
        } else {
            if (!f46488g && this.f46490f != null) {
                throw new AssertionError();
            }
            this.f46490f = a22;
            this.f46489e = zj2;
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a(a22, ZJ.f46221d);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        C4798y<C11245i> M10 = this.f37176a.M();
        C11245i f10 = M10.f();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        f10.getClass();
        if (f10.a(a22, h52.getHolder(), M10, M10.f()) != null) {
            a(a22, ZJ.f46222e);
        } else {
            this.f46489e = ZJ.f46223f;
            a();
        }
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        a(a22, ZJ.f46220c);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        this.f46489e = ZJ.f46223f;
        a();
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        a(a22, ZJ.f46219b);
    }
}
