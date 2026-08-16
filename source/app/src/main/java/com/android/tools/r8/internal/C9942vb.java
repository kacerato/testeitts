package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ListIterator;

public class C9942vb extends F9 implements InterfaceC5484La {
    public C9942vb(C4554l1 c4554l1) {
        super(c4554l1);
    }

    @Override
    public final int B() {
        return 178;
    }

    @Override
    public final boolean H() {
        return true;
    }

    @Override
    public final boolean T() {
        return true;
    }

    @Override
    public final F9 a(C4554l1 c4554l1) {
        return new C9942vb(c4554l1);
    }

    @Override
    public final C9942vb u() {
        return this;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 type = getField().getType();
        c9775ub.getClass();
        c6382aB.a(c9775ub.a(new C9108qb(type)).f51280a, getField());
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, getField().getType());
    }
}
