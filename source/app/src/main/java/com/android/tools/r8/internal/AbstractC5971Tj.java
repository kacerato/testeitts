package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Function;

public abstract class AbstractC5971Tj extends AbstractC6029Uj {

    public static final boolean f44554e = true;

    public final IdentityHashMap f44555d = new IdentityHashMap();

    public abstract C6276Ys0 a(C5855Rj c5855Rj, List list);

    public abstract AbstractC6333Zs0 a(C5855Rj c5855Rj, Function function);

    public final Object c(Object obj) {
        return ((C5855Rj) ((C5797Qj) this.f44848b.get(obj))).f43973d;
    }

    @Override
    public final C5797Qj a(Object obj) {
        return new C5855Rj(obj);
    }

    @Override
    public final AbstractC6333Zs0 b(C5855Rj c5855Rj) {
        final ArrayList arrayList = new ArrayList();
        List list = (List) this.f44555d.put(c5855Rj, arrayList);
        if (f44554e || list == null) {
            return a(c5855Rj, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC5971Tj.this.a(arrayList, obj);
                }
            });
        }
        throw new AssertionError();
    }

    public static List c(C5855Rj c5855Rj) {
        if (f44554e) {
            return Collections.EMPTY_LIST;
        }
        throw new AssertionError((Object) "Unexpected joining of not visited node");
    }

    public final C5855Rj a(List list, Object obj) {
        C5855Rj c5855Rj = (C5855Rj) b(obj);
        list.add(c5855Rj);
        return c5855Rj;
    }

    @Override
    public final AbstractC6333Zs0 a(C5855Rj c5855Rj) {
        return a(c5855Rj, (List) TU.a(this.f44555d, c5855Rj, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5971Tj.c((C5855Rj) obj);
            }
        }));
    }

    @Override
    public final List a(Collection collection) {
        return AT.a(collection, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5971Tj.this.c(obj);
            }
        });
    }
}
