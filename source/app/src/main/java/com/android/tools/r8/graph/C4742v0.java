package com.android.tools.r8.graph;

import com.android.tools.r8.synthesis.C11549b;
import java.util.Objects;

public final class C4742v0 implements InterfaceC4403d1 {

    public final C11549b f38292a;

    public final AbstractC4780x0 f38293b;

    public C4742v0(C11549b c11549b, AbstractC4780x0 abstractC4780x0) {
        this.f38292a = c11549b;
        this.f38293b = abstractC4780x0;
    }

    @Override
    public final C4724u1 b() {
        return this.f38293b.f38367e;
    }

    @Override
    public final InterfaceC4364b0 f(M2 m22) {
        C11549b c11549b = this.f38292a;
        AbstractC4780x0 abstractC4780x0 = this.f38293b;
        Objects.requireNonNull(abstractC4780x0);
        return c11549b.a(new C4774wd(abstractC4780x0), m22);
    }

    @Override
    public final E0 g(M2 m22) {
        C11549b c11549b = this.f38292a;
        AbstractC4780x0 abstractC4780x0 = this.f38293b;
        Objects.requireNonNull(abstractC4780x0);
        return c11549b.a(new C4774wd(abstractC4780x0), m22).D();
    }
}
