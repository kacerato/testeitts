package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.Function;

public final class C7558hE {

    public static final boolean f48500f = true;

    public final C4798y f48501a;

    public final AbstractC10188x1 f48502b;

    public int f48503c;

    public final ArrayList f48504d;

    public final C10048wA f48505e;

    public C7558hE(C4798y c4798y, AbstractC10188x1 abstractC10188x1, C10048wA c10048wA) {
        ArrayList arrayList = new ArrayList();
        this.f48504d = arrayList;
        this.f48501a = c4798y;
        this.f48502b = abstractC10188x1;
        this.f48505e = c10048wA;
        this.f48503c = 0;
        arrayList.add(new ArrayList());
    }

    public final List a(final AA aa2) {
        if (f48500f || this.f48504d.stream().noneMatch(new C4970Cc1())) {
            return AT.a((Collection) this.f48504d, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7558hE.this.a(aa2, (List) obj);
                }
            });
        }
        throw new AssertionError();
    }

    public final C7725iE a(AA aa2, List list) {
        return new C7725iE(this.f48501a, this.f48502b, aa2, list, this.f48505e, null);
    }

    public final List a(final AA aa2, final C7057eE c7057eE) {
        if (f48500f || this.f48504d.stream().noneMatch(new C4970Cc1())) {
            return AT.a((Collection) this.f48504d, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7558hE.this.a(aa2, c7057eE, (List) obj);
                }
            });
        }
        throw new AssertionError();
    }

    public final C7725iE a(AA aa2, C7057eE c7057eE, List list) {
        return new C7725iE(this.f48501a, this.f48502b, aa2, list, this.f48505e, c7057eE);
    }
}
