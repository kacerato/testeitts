package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.LinkedList;

public final class C7172ex extends AbstractC10102wY {

    public static final boolean f47810c = true;

    public final C4798y f47811b;

    public C7172ex(C4798y c4798y) {
        this.f47811b = c4798y;
    }

    @Override
    public final Collection a(AA aa2) {
        if (this.f47811b.m()) {
            aa2.b(this.f47811b);
            aa2.a(this.f47811b.L());
        } else {
            boolean z10 = f47810c;
            if (!z10 && aa2.h()) {
                throw new AssertionError();
            }
            if (!z10 && aa2.g()) {
                throw new AssertionError();
            }
            aa2.b(this.f47811b);
            C5412Jt c5412Jt = new C5412Jt();
            if (!AA.f38552f && aa2.g()) {
                throw new AssertionError();
            }
            aa2.f38556e = c5412Jt;
        }
        boolean z11 = AT.f38618a;
        LinkedList linkedList = new LinkedList();
        linkedList.add(aa2);
        return linkedList;
    }

    @Override
    public final String f() {
        return "FinalizeMergeGroup";
    }
}
