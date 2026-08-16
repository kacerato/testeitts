package com.android.tools.r8.internal;

import java.util.Iterator;

public final class XF extends O {

    public final C7731iG f45643c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public XF(C7731iG c7731iG) {
        super(c7731iG);
        this.f45643c = c7731iG;
    }

    @Override
    public final HH iterator() {
        return new WF(this.f45643c);
    }

    @Override
    public final PH iterator() {
        return new WF(this.f45643c);
    }

    @Override
    public final Iterator iterator() {
        return new WF(this.f45643c);
    }
}
