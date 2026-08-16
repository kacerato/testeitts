package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.function.BiFunction;

public final class C6226Xw {

    public static final boolean f45866d = true;

    public final C8570nJ.o f45867a;

    public final IdentityHashMap f45868b = new IdentityHashMap();

    public final IdentityHashMap f45869c = new IdentityHashMap();

    public C6226Xw(C8570nJ.o oVar, C9103qZ c9103qZ) {
        this.f45867a = oVar;
        ArrayList arrayList = c9103qZ.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            if (!c10340xw0.w()) {
                if (c10340xw0.L()) {
                    a(c10340xw0.r().K().u2());
                } else if (c10340xw0.I()) {
                    a(c10340xw0.r().F().f49303l);
                } else if (c10340xw0.d(new J21())) {
                    a(c10340xw0.r().K0().getField());
                }
            }
        }
    }

    public final C10340xw0 a(C10340xw0 c10340xw0) {
        if (c10340xw0.L()) {
            com.android.tools.r8.graph.L2 u22 = c10340xw0.r().K().u2();
            C10340xw0 c10340xw02 = (C10340xw0) this.f45869c.get(u22);
            if (c10340xw02 == null) {
                return null;
            }
            b(u22);
            return c10340xw02;
        }
        if (c10340xw0.I()) {
            com.android.tools.r8.graph.M2 m22 = c10340xw0.r().F().f49303l;
            C10340xw0 c10340xw03 = (C10340xw0) this.f45869c.get(m22);
            if (c10340xw03 == null) {
                return null;
            }
            b(m22);
            return c10340xw03;
        }
        if (!c10340xw0.d(new J21())) {
            return null;
        }
        C4554l1 field = c10340xw0.r().K0().getField();
        C10340xw0 c10340xw04 = (C10340xw0) this.f45869c.get(field);
        if (c10340xw04 == null) {
            return null;
        }
        b(field);
        return c10340xw04;
    }

    public final void b(C10340xw0 c10340xw0) {
        AbstractC4406d4 abstractC4406d4;
        AbstractC10561zE r10 = c10340xw0.r();
        if (r10.x1()) {
            abstractC4406d4 = r10.K().u2();
        } else if (r10 instanceof C5576Mo0) {
            abstractC4406d4 = r10.K0().getField();
        } else {
            if (!f45866d && !(r10 instanceof C7957jh)) {
                throw new AssertionError();
            }
            abstractC4406d4 = r10.F().f49303l;
        }
        boolean z10 = f45866d;
        if (!z10 && !this.f45868b.containsKey(abstractC4406d4)) {
            throw new AssertionError();
        }
        if (!z10 && this.f45869c.containsKey(abstractC4406d4)) {
            throw new AssertionError();
        }
        if (this.f45869c.size() < this.f45867a.f50803a) {
            this.f45869c.put(abstractC4406d4, c10340xw0);
        } else {
            if (!z10 && this.f45869c.size() != this.f45867a.f50803a) {
                throw new AssertionError();
            }
            int i10 = Integer.MAX_VALUE;
            AbstractC4592n1 abstractC4592n1 = null;
            for (AbstractC4592n1 abstractC4592n12 : this.f45869c.o()) {
                int intValue = ((Integer) this.f45868b.get(abstractC4592n12)).intValue();
                if (intValue < i10) {
                    abstractC4592n1 = abstractC4592n12;
                    i10 = intValue;
                } else if (intValue != i10) {
                    continue;
                } else {
                    if (!f45866d && abstractC4592n1 == null) {
                        throw new AssertionError();
                    }
                    abstractC4592n1 = a(abstractC4592n1, abstractC4592n12);
                }
            }
            int intValue2 = ((Integer) this.f45868b.get(abstractC4406d4)).intValue();
            if (intValue2 > i10 || (intValue2 == i10 && a(abstractC4592n1, abstractC4406d4) == abstractC4592n1)) {
                this.f45869c.remove(abstractC4592n1);
                this.f45869c.put(abstractC4406d4, c10340xw0);
            }
            if (!f45866d && this.f45869c.size() != this.f45867a.f50803a) {
                throw new AssertionError();
            }
        }
        b(abstractC4406d4);
    }

    public static AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1, AbstractC4592n1 abstractC4592n12) {
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.L2) {
            if (abstractC4592n12 instanceof com.android.tools.r8.graph.L2) {
                return ((com.android.tools.r8.graph.L2) abstractC4592n1).compareTo((com.android.tools.r8.graph.L2) abstractC4592n12) < 0 ? abstractC4592n1 : abstractC4592n12;
            }
            if (f45866d || (abstractC4592n12 instanceof C4554l1) || (abstractC4592n12 instanceof com.android.tools.r8.graph.M2)) {
                return abstractC4592n12;
            }
            throw new AssertionError();
        }
        if (abstractC4592n1 instanceof C4554l1) {
            if (abstractC4592n12 instanceof C4554l1) {
                return ((C4554l1) abstractC4592n1).compareTo((C4554l1) abstractC4592n12) < 0 ? abstractC4592n1 : abstractC4592n12;
            }
            if (abstractC4592n12 instanceof com.android.tools.r8.graph.L2) {
                return abstractC4592n1;
            }
            if (f45866d || (abstractC4592n12 instanceof com.android.tools.r8.graph.M2)) {
                return abstractC4592n12;
            }
            throw new AssertionError();
        }
        boolean z10 = f45866d;
        if (!z10 && !(abstractC4592n1 instanceof com.android.tools.r8.graph.M2)) {
            throw new AssertionError();
        }
        if (abstractC4592n12 instanceof com.android.tools.r8.graph.M2) {
            if (((com.android.tools.r8.graph.M2) abstractC4592n1).compareTo((com.android.tools.r8.graph.M2) abstractC4592n12) >= 0) {
                return abstractC4592n12;
            }
        } else {
            if (z10 || (abstractC4592n12 instanceof com.android.tools.r8.graph.L2) || (abstractC4592n12 instanceof C4554l1)) {
                return abstractC4592n1;
            }
            throw new AssertionError();
        }
        return abstractC4592n1;
        return abstractC4592n12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(AbstractC4406d4 abstractC4406d4) {
        if (((Integer) this.f45868b.compute(abstractC4406d4, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Integer valueOf;
                Integer num = (Integer) obj2;
                valueOf = Integer.valueOf(r1 == null ? Integer.MAX_VALUE : num.intValue() - 1);
                return valueOf;
            }
        })).intValue() == 0) {
            this.f45868b.remove(abstractC4406d4);
            this.f45869c.remove(abstractC4406d4);
        }
    }

    public final void a(AbstractC4406d4 abstractC4406d4) {
        this.f45868b.compute(abstractC4406d4, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Integer valueOf;
                valueOf = Integer.valueOf(r1 != null ? 1 + ((Integer) obj2).intValue() : 1);
                return valueOf;
            }
        });
    }
}
