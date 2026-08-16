package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7127ei extends AbstractC7391gE {

    public final Y00 f47755a;

    public C7127ei(Y00 y00) {
        this.f47755a = y00;
    }

    @Override
    public final AbstractC7224fE a() {
        return this.f47755a;
    }

    @Override
    public final AbstractC7224fE b() {
        return this.f47755a;
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final AbstractC7391gE a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar) {
        Y00 y00 = this.f47755a;
        Y00 y002 = new Y00(y00.f45891a, y00.f45892b.a(cVar), y00.f45893c.a(c4798y, cVar), y00.f45894d);
        return y002 != this.f47755a ? new C7127ei(y002) : this;
    }

    @Override
    public final AbstractC7391gE a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, com.android.tools.r8.graph.O5 o52) {
        Y00 y00 = this.f47755a;
        Y00 y002 = new Y00(y00.f45891a, y00.f45892b.a(c4798y, abstractC5308Hz, abstractC5308Hz2), y00.f45893c.a(c4798y, abstractC5308Hz, o52), abstractC5308Hz.d(abstractC5308Hz2, y00.f45894d));
        return y002 != this.f47755a ? new C7127ei(y002) : this;
    }
}
