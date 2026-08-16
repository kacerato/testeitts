package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.shaking.C11498x;
import java.util.function.Consumer;

public final class W2 implements InterfaceC10104wZ, InterfaceC10605zZ, AZ, BZ, CZ, DZ, FZ {

    public static final boolean f45265d = true;

    public final C4798y f45266a;

    public final com.android.tools.r8.androidapi.a f45267b;

    public final com.android.tools.r8.androidapi.f f45268c;

    public W2(C4798y c4798y) {
        this.f45266a = c4798y;
        this.f45267b = c4798y.f38404S;
        this.f45268c = c4798y.f38405T;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52) {
        a((com.android.tools.r8.graph.G0) f52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.shaking.N n10) {
        a((com.android.tools.r8.graph.G0) h52);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C11498x c11498x) {
        if (!f45265d && !c11498x.f57881h.d(this.f45268c)) {
            throw new AssertionError();
        }
        if (this.f45266a.E().a().f40664k != null) {
            this.f45266a.E().a().f40664k.accept(h52.w(), c11498x.f57881h);
        }
        a((com.android.tools.r8.graph.G0) h52);
        h52.d().f(c11498x.f57881h);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        a((com.android.tools.r8.graph.G0) h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52) {
        a((com.android.tools.r8.graph.G0) f52);
    }

    public final void a(InterfaceC4440f0 interfaceC4440f0) {
        interfaceC4440f0.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W2.this.a((com.android.tools.r8.graph.H0) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.G0 g02) {
        AbstractC4479h1 d10 = g02.d();
        com.android.tools.r8.androidapi.a aVar = this.f45267b;
        AbstractC4744v2 reference = g02.getReference();
        C4724u1 b10 = this.f45266a.b();
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        aVar.getClass();
        d10.f37261e = aVar.a(reference.a(b10));
    }
}
