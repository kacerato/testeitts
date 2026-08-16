package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C6222Xu extends AbstractC6165Wu {

    public static final boolean f45851b = true;

    public final com.android.tools.r8.graph.M2 f45852a;

    public C6222Xu(com.android.tools.r8.graph.M2 m22) {
        if (!f45851b && m22 == null) {
            throw new AssertionError();
        }
        this.f45852a = m22;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(int i10) {
        return this.f45852a;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof C6222Xu) && this.f45852a == ((C6222Xu) obj).f45852a;
    }

    public final int hashCode() {
        return this.f45852a.hashCode();
    }

    @Override
    public final AbstractC6165Wu a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, this.f45852a);
        if (f45851b || c10.I0()) {
            return new C6222Xu(c10);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(C4798y c4798y) {
        return c4798y.I().b(this.f45852a);
    }
}
