package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC9867v50 extends D1 {
    public abstract AbstractC9700u50 a(int i10);

    public abstract AbstractC9867v50 a(int i10, AbstractC9700u50 abstractC9700u50);

    @Override
    public final D1 b(C4798y c4798y, D1 d12) {
        AbstractC9867v50 abstractC9867v50 = (AbstractC9867v50) d12;
        if (this instanceof C9872v7) {
            return abstractC9867v50;
        }
        abstractC9867v50.getClass();
        return abstractC9867v50 instanceof C9872v7 ? this : ((this instanceof C10170wv0) || (abstractC9867v50 instanceof C10170wv0)) ? C10170wv0.f53641b : d().a(abstractC9867v50.d());
    }

    @Override
    public final D1 c() {
        return this;
    }

    public O00 d() {
        return null;
    }

    public abstract AbstractC9867v50 e();
}
