package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.ToIntFunction;

public abstract class BY extends EY {
    public BY(AbstractC9148qo0 abstractC9148qo0) {
        super(abstractC9148qo0);
    }

    public abstract int a(C4516j1 c4516j1);

    @Override
    public final void a(ArrayList arrayList, com.android.tools.r8.dex.q0 q0Var, com.android.tools.r8.dex.t0 t0Var, com.android.tools.r8.dex.r0 r0Var) {
        ToIntFunction toIntFunction = new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return BY.this.a((com.android.tools.r8.graph.H2) obj);
            }
        };
        final C9115qd0 c9115qd0 = new C9115qd0();
        int i10 = 0;
        c9115qd0.f53665b = 0;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            c9115qd0.b(toIntFunction.applyAsInt(h22), h22);
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj2) {
                return AbstractC10188x1.this.b((com.android.tools.r8.graph.H2) obj2);
            }
        }).thenComparing(new com.android.tools.r8.errors.q()));
        EY.a(arrayList2, t0Var, r0Var);
    }

    public final int a(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = false;
        int i10 = 0;
        for (C4516j1 c4516j1 : h22.z1()) {
            i10 += a(c4516j1);
            z10 |= this.f39942a.a(c4516j1.getReference());
        }
        if (!(this instanceof AY) || z10) {
            return i10;
        }
        return Integer.MAX_VALUE;
    }
}
