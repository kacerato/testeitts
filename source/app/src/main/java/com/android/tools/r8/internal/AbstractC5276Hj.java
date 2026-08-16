package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC5276Hj extends R00 {
    public AbstractC5276Hj(C4798y c4798y) {
        super(c4798y, c4798y.v());
    }

    @Override
    public boolean a(AbstractC5308Hz abstractC5308Hz) {
        if (this == abstractC5308Hz) {
            return true;
        }
        return this.f43777d.a(abstractC5308Hz);
    }

    @Override
    public C4554l1 b(C4554l1 c4554l1) {
        return c4554l1;
    }

    @Override
    public com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return a22;
    }

    @Override
    public com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        return a22;
    }

    @Override
    public com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    @Override
    public C7835iw b(C7835iw c7835iw) {
        return c7835iw;
    }

    @Override
    public C4554l1 c(C4554l1 c4554l1) {
        return c4554l1;
    }

    @Override
    public com.android.tools.r8.graph.M2 d(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    @Override
    public com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (this == abstractC5308Hz) {
            return com.android.tools.r8.graph.proto.j.f37620d;
        }
        return this.f43777d.f((AbstractC5308Hz) null, d(a22));
    }

    public AbstractC5276Hj(C4798y c4798y, AbstractC5308Hz abstractC5308Hz) {
        super(c4798y, abstractC5308Hz);
    }

    @Override
    public NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        return nw.a(this);
    }

    @Override
    public Iterable b(com.android.tools.r8.graph.M2 m22) {
        return this.f43777d.b(m22);
    }
}
