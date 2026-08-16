package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class ZW {
    public static AbstractC8374m80 a(C4798y c4798y, C4387c4 c4387c4, Collection collection, final Predicate predicate) {
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        final AbstractC8374m80 c11 = AbstractC8374m80.c();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            h22.l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ZW.a(Predicate.this, h22, c11, c10, (com.android.tools.r8.graph.H5) obj);
                }
            });
        }
        if (!c11.f45165b.isEmpty()) {
            new XW(c4798y, c4387c4, c10, c11).a(collection);
        }
        YW yw = new YW(c4798y, c4387c4, c10, c11);
        yw.a(collection);
        return yw.f46008g;
    }

    public static void a(Predicate predicate, com.android.tools.r8.graph.H2 h22, AbstractC8374m80 abstractC8374m80, AbstractC8374m80 abstractC8374m802, com.android.tools.r8.graph.H5 h52) {
        if (predicate.test(h52)) {
            if (h22.isInterface()) {
                abstractC8374m80.add((AbstractC8374m80) h52);
            } else {
                abstractC8374m802.add((AbstractC8374m80) h52);
            }
        }
    }
}
