package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ListIterator;

public final class C10109wb extends F9 {
    public C10109wb(C4554l1 c4554l1) {
        super(c4554l1);
    }

    @Override
    public final int B() {
        return 179;
    }

    @Override
    public final boolean J() {
        return true;
    }

    @Override
    public final F9 a(C4554l1 c4554l1) {
        return new C10109wb(c4554l1);
    }

    @Override
    public final C10109wb v() {
        return this;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c6382aB.b(c9775ub.a().f51280a, getField());
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, getField().getType());
    }
}
