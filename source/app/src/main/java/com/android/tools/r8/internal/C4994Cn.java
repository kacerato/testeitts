package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C4994Cn extends AbstractC5168Fn {

    public final AbstractC5635Np f39357e;

    public C4994Cn(AbstractC10561zE abstractC10561zE, AbstractC5635Np abstractC5635Np) {
        super(abstractC10561zE);
        this.f39357e = abstractC5635Np;
    }

    @Override
    public final int a(C5458Kn c5458Kn) {
        this.f39357e.e(a());
        return this.f39357e.y();
    }

    @Override
    public final int b() {
        return this.f39357e.y();
    }

    @Override
    public final int c() {
        return this.f39357e.y();
    }

    @Override
    public final int d() {
        return this.f39357e.y();
    }

    @Override
    public final void a(C5458Kn c5458Kn, ArrayList arrayList) {
        arrayList.add(this.f39357e);
    }

    @Override
    public final boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn) {
        return (abstractC5168Fn instanceof C4994Cn) && this.f39357e.equals(((C4994Cn) abstractC5168Fn).f39357e);
    }
}
