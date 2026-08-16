package com.android.tools.r8.internal;

public final class C6124Wb0 extends AbstractC6295Zb0 {

    public final com.android.tools.r8.graph.A2 f45481E;

    public final AbstractC8999pu0 f45482F;

    public final AbstractC8999pu0 f45483G;

    public C6124Wb0(com.android.tools.r8.graph.A2 a22, AbstractC8999pu0 abstractC8999pu0, AbstractC8999pu0 abstractC8999pu02) {
        this.f45481E = a22;
        this.f45482F = abstractC8999pu0;
        this.f45483G = abstractC8999pu02;
    }

    @Override
    public final Object a() {
        return AbstractC7552hC.a(C6124Wb0.class, this.f45481E);
    }

    public final String toString() {
        String j02 = this.f45481E.j0();
        AbstractC8999pu0 abstractC8999pu0 = this.f45482F;
        String j03 = abstractC8999pu0.s() ? abstractC8999pu0.b().E().j0() : abstractC8999pu0.toString();
        AbstractC8999pu0 abstractC8999pu02 = this.f45483G;
        return "NonComparableElements(" + j02 + " - " + j03 + " vs " + (abstractC8999pu02.s() ? abstractC8999pu02.b().E().j0() : abstractC8999pu02.toString()) + ")";
    }
}
