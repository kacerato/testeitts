package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.EW;

public final class X40 extends AbstractC4497i0 {

    public final W40 f45606e;

    public final C7198f50 f45607f;

    public X40(C7198f50 c7198f50, W40 w40) {
        this.f45607f = c7198f50;
        this.f45606e = w40;
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return null;
    }

    @Override
    public final boolean c(Object obj) {
        return this.f45606e.equals(obj);
    }

    @Override
    public final int k0() {
        return this.f45606e.hashCode();
    }

    @Override
    public final int q0() {
        return Integer.MAX_VALUE;
    }

    @Override
    public final String toString() {
        return this.f45606e.toString();
    }

    @Override
    public final boolean x0() {
        return false;
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, EW.a aVar) {
        return C6382aB.a(h52, c4798y, new C6865d50(this.f45607f, this.f45606e, h52.getReference())).a(h52, aVar);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC4446f6 abstractC4446f6) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        throw new C5417Jv0();
    }
}
