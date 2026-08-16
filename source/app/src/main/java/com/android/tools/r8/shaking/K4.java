package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.InterfaceC10662zs0;
import com.android.tools.r8.internal.InterfaceC4947Bs0;
import com.android.tools.r8.internal.InterfaceC5063Ds0;
import java.util.Set;

public final class K4 implements InterfaceC5063Ds0, InterfaceC10662zs0, InterfaceC4947Bs0 {

    public final AbstractC5308Hz f56668a;

    public final C4724u1 f56669b;

    public final Set f56670c = AbstractC5513Ll0.c();

    public final Set f56671d = AbstractC5513Ll0.c();

    public final Set f56672e = AbstractC5513Ll0.c();

    public K4(C4798y c4798y) {
        this.f56668a = c4798y.v();
        this.f56669b = c4798y.b();
    }

    @Override
    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        Set set = this.f56670c;
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f56669b);
        if (a10.I0()) {
            set.add(a10);
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        Set set = this.f56672e;
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f56669b);
        if (a10.I0()) {
            set.add(a10);
        }
    }

    public final L4 a(AbstractC5308Hz abstractC5308Hz) {
        L4 l42 = new L4(this.f56670c, this.f56671d, this.f56672e);
        return (!abstractC5308Hz.l() || abstractC5308Hz == this.f56668a) ? l42 : l42.a(abstractC5308Hz.d(), this.f56668a);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        Set set = this.f56671d;
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f56669b);
        if (a10.I0()) {
            set.add(a10);
        }
    }
}
