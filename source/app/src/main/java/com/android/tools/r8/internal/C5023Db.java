package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public class C5023Db {

    public static final boolean f39555e = true;

    public final C8103ka f39556a;

    public final C8103ka f39557b;

    public final List<com.android.tools.r8.graph.M2> f39558c;

    public final List<C8103ka> f39559d;

    public C5023Db(C8103ka c8103ka, C8103ka c8103ka2, List list, List list2) {
        this.f39556a = c8103ka;
        this.f39557b = c8103ka2;
        this.f39558c = list;
        this.f39559d = list2;
        if (f39555e) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) it.next();
            if (!f39555e && m22 == null) {
                throw new AssertionError();
            }
        }
    }

    public final void a(Consumer consumer) {
        this.f39559d.forEach(consumer);
    }

    public final int a(C5023Db c5023Db, AbstractC8953pf abstractC8953pf, final com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, c5023Db, (InterfaceC5638Nq0<C5023Db>) new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C5023Db.a(com.android.tools.r8.graph.O.this, abstractC5754Pq0);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.O o10, AbstractC5754Pq0 abstractC5754Pq0) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                C8103ka c8103ka;
                c8103ka = ((C5023Db) obj).f39556a;
                return c8103ka;
            }
        };
        InterfaceC5407Jq0 a10 = o10.a();
        AbstractC5754Pq0 a11 = abstractC5754Pq0.a(function, a10, a10);
        Function function2 = new Function() {
            @Override
            public final Object apply(Object obj) {
                C8103ka c8103ka;
                c8103ka = ((C5023Db) obj).f39557b;
                return c8103ka;
            }
        };
        InterfaceC5407Jq0 a12 = o10.a();
        a11.a(function2, a12, a12).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((C5023Db) obj).f39558c;
                return collection;
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((C5023Db) obj).f39559d;
                return collection;
            }
        }, o10.a());
    }

    public final void a(final AbstractC4446f6 abstractC4446f6) {
        List<com.android.tools.r8.graph.M2> list = this.f39558c;
        Objects.requireNonNull(abstractC4446f6);
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC4446f6.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }
}
