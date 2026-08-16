package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import java.util.ListIterator;

public final class C6773cb extends C7710i9 {
    public C6773cb(com.android.tools.r8.graph.M2 m22) {
        super(m22, true);
    }

    @Override
    public final void a(C6382aB c6382aB, C8774ob c8774ob) {
        c6382aB.a(c8774ob.f51280a, getType(), true);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.e(getType());
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C6773cb(m22);
    }
}
