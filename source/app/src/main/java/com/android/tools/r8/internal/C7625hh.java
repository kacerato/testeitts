package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C7625hh {

    public final C4798y f48671a;

    public final LinkedList f48672b;

    public final C6674bx0 f48673c;

    public final ArrayList f48674d = new ArrayList();

    public final C8507mx0 f48675e;

    public C7625hh(C4798y c4798y, LinkedList linkedList) {
        boolean z10 = C8674nx0.f51119d;
        this.f48675e = new C8507mx0();
        this.f48671a = c4798y;
        this.f48672b = linkedList;
        this.f48673c = new C6674bx0();
    }

    public static com.android.tools.r8.graph.M2 a(C8340lx0 c8340lx0) {
        return c8340lx0.f50154b.getType();
    }

    public final C7839ix0 a(final C9114qd c9114qd) {
        LinkedList linkedList = this.f48672b;
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7625hh.a((C8340lx0) obj);
            }
        });
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(linkedList);
        arrayList.sort(comparing);
        List a10 = AT.a((Collection) arrayList, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7625hh.this.a(c9114qd, (C8340lx0) obj);
            }
        });
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C8446md) obj).b();
            }
        });
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C8446md) obj).a();
            }
        });
        return new C7839ix0(this.f48673c, this.f48674d, this.f48675e);
    }

    public final C8446md a(C9114qd c9114qd, C8340lx0 c8340lx0) {
        return new C8446md(this.f48671a, this.f48673c, c9114qd, this.f48674d, this.f48675e, c8340lx0);
    }
}
