package com.android.tools.r8.internal;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public abstract class AbstractC5754Pq0<T, V extends AbstractC5754Pq0<T, V>> {
    public static boolean a(Object obj) {
        return true;
    }

    public static boolean b(Object obj) {
        return true;
    }

    public abstract AbstractC5754Pq0 a();

    public abstract AbstractC5754Pq0 a(Function function);

    public abstract AbstractC5754Pq0 a(Predicate predicate);

    public abstract AbstractC5754Pq0 a(Predicate predicate, Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0);

    public abstract V a(ToIntFunction<T> toIntFunction);

    public abstract AbstractC5754Pq0 a(ToLongFunction toLongFunction);

    public abstract AbstractC5754Pq0 b(Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0);

    public abstract AbstractC5754Pq0 b(Predicate predicate);

    public abstract AbstractC5754Pq0 c(Function function);

    public abstract AbstractC5754Pq0 d(Function function);

    public final <S extends InterfaceC5580Mq0<S>> V e(Function<T, S> function) {
        return (V) a((Function) function, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5754Pq0.b(obj);
            }
        });
    }

    public final AbstractC5754Pq0 f(Function function) {
        return i(function.andThen(new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterator it;
                it = Arrays.asList((InterfaceC5580Mq0[]) obj).iterator();
                return it;
            }
        }));
    }

    public final AbstractC5754Pq0 g(Function function) {
        return b(function.andThen(new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterator it;
                it = Arrays.asList((InterfaceC5580Mq0[]) obj).iterator();
                return it;
            }
        }), new InterfaceC5465Kq0() {
            @Override
            public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
                return AbstractC5754Pq0.a((InterfaceC5580Mq0) obj, (InterfaceC5580Mq0) obj2, abstractC8953pf);
            }
        }, new InterfaceC5523Lq0() {
            @Override
            public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
                AbstractC5754Pq0.a((InterfaceC5580Mq0) obj, abstractC9213rA);
            }
        });
    }

    public final AbstractC5754Pq0 h(Function function) {
        return i(function.andThen(new LR0()));
    }

    public final AbstractC5754Pq0 i(Function function) {
        return b(function, new VM0(), new WM0());
    }

    public final AbstractC5754Pq0 j(final Function function) {
        return a(function, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5754Pq0.a(Function.this, obj);
            }
        });
    }

    public abstract AbstractC5754Pq0 k(Function function);

    public final AbstractC5754Pq0 a(Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        return a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5754Pq0.a(obj);
            }
        }, function, interfaceC5465Kq0, interfaceC5523Lq0);
    }

    public final AbstractC5754Pq0 b(Function function) {
        XS xs = XS.f45708a;
        return b(function.andThen(new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterator it;
                it = Arrays.asList((Object[]) obj).iterator();
                return it;
            }
        }), xs, xs);
    }

    public final AbstractC5754Pq0 a(Function function, InterfaceC5407Jq0 interfaceC5407Jq0) {
        return b(function.andThen(new LR0()), interfaceC5407Jq0, interfaceC5407Jq0);
    }

    public static boolean a(Function function, Object obj) {
        return function.apply(obj) != null;
    }

    public final AbstractC5754Pq0 a(Function function, Predicate predicate) {
        return a(predicate, function, new VM0(), new WM0());
    }

    public static int a(InterfaceC5580Mq0 interfaceC5580Mq0, InterfaceC5580Mq0 interfaceC5580Mq02, AbstractC8953pf abstractC8953pf) {
        if (interfaceC5580Mq0 != null && interfaceC5580Mq02 != null) {
            return interfaceC5580Mq0.a(interfaceC5580Mq02, abstractC8953pf);
        }
        return abstractC8953pf.a(interfaceC5580Mq0 != null, interfaceC5580Mq02 != null);
    }

    public static void a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC9213rA abstractC9213rA) {
        if (interfaceC5580Mq0 == null) {
            ((C9547tA) abstractC9213rA).f52553a.a(0);
        } else {
            interfaceC5580Mq0.a(abstractC9213rA);
        }
    }
}
