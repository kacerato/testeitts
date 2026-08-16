package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ListIterator;

public final class T9 extends F9 implements InterfaceC5368Ja {
    public T9(C4554l1 c4554l1) {
        super(c4554l1);
    }

    @Override
    public final int B() {
        return 180;
    }

    @Override
    public final F9 a(C4554l1 c4554l1) {
        return new T9(c4554l1);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c6382aB.a(c9775ub.a(new C9108qb(getField().getType())).f51280a, c9775ub.a().f51280a, getField());
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, getField().s0()).a(o82, getField().getType());
    }
}
