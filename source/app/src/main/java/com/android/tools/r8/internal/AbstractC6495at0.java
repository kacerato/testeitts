package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class AbstractC6495at0 {
    public static Object a(Function function) {
        return ((AbstractC6333Zs0) function.apply(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC6333Zs0.a(obj);
            }
        })).a().e();
    }

    public static boolean a(final int i10, Consumer consumer) {
        final IH ih2 = new IH();
        consumer.accept(C5480Ky.a(new Supplier() {
            @Override
            public final Object get() {
                AbstractC6333Zs0 a10;
                IH ih3 = IH.this;
                int i11 = i10;
                a10 = AbstractC6333Zs0.a(r0.d() > r1);
                return a10;
            }
        }));
        return ih2.a() == i10;
    }

    public static boolean a(Consumer consumer) {
        final IH ih2 = new IH();
        final int i10 = 2;
        consumer.accept(C5480Ky.a(new Supplier() {
            @Override
            public final Object get() {
                AbstractC6333Zs0 a10;
                IH ih3 = IH.this;
                int i11 = i10;
                a10 = AbstractC6333Zs0.a(r0.d() > r1);
                return a10;
            }
        }));
        return ih2.a() > 2;
    }

    public static AbstractC6333Zs0 a(Object obj, Collection collection, BiFunction biFunction) {
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(obj);
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(it.next(), c6276Ys0.b().f());
            if (c6276Ys0.c()) {
                break;
            }
        }
        return c6276Ys0;
    }
}
