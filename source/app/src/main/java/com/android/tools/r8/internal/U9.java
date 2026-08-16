package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ListIterator;
import java.util.function.BiFunction;

public final class U9 extends F9 {
    public U9(C4554l1 c4554l1) {
        super(c4554l1);
    }

    @Override
    public final int B() {
        return 181;
    }

    @Override
    public final F9 a(C4554l1 c4554l1) {
        return new U9(c4554l1);
    }

    @Override
    public final U9 h() {
        return this;
    }

    public final C7667hv a(S60 s60) {
        return new C7667hv("Frame type " + C7667hv.a(1, s60) + " is not assignable to " + getField().s0().D0());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.c(getField());
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c6382aB.b(c9775ub.a().f51280a, c9775ub.a().f51280a, getField());
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, getField().getType()).b(c4798y, getField().s0(), o82, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return U9.this.a((H9) obj, (S60) obj2);
            }
        });
    }

    public final H9 a(H9 h92, S60 s60) {
        return s60.y() ? a(s60) : h92;
    }
}
