package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.BiPredicate;
import java.util.function.Function;
import java.util.function.Predicate;

public class C9073qK {
    public static boolean a(LinkedList linkedList, Function function) {
        Iterator<E> it = linkedList.iterator();
        if (!it.hasNext()) {
            return true;
        }
        Object apply = function.apply(it.next());
        while (it.hasNext()) {
            if (function.apply(it.next()) != apply) {
                return false;
            }
        }
        return true;
    }

    public static Object b(Iterable iterable, Predicate predicate) {
        for (Object obj : iterable) {
            if (predicate.test(obj)) {
                return obj;
            }
        }
        return null;
    }

    public static <T> int c(Iterable<T> iterable, Predicate<T> predicate) {
        Iterator<T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static Iterator d(Iterable iterable, Predicate predicate) {
        return new C10074wK(iterable.iterator(), predicate);
    }

    public static C9406sK b(Iterable iterable, final Function function) {
        Objects.requireNonNull(function);
        return AbstractC9907vK.a(iterable, new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return Function.this.apply(obj);
            }
        });
    }

    public static <T> int c(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
        }
        return i10;
    }

    public static ArrayList d(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        iterable.forEach(new HU0(arrayList));
        return arrayList;
    }

    public static Iterable b(final Object obj) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C9073qK.a(Object.this);
            }
        };
    }

    public static <T> Iterable<T> b(Iterable<? extends Iterable<T>> iterable) {
        return a(iterable, Function.identity());
    }

    public static boolean a(List list, BiPredicate biPredicate) {
        Object obj = null;
        for (Object obj2 : list) {
            if (!biPredicate.test(obj2, obj)) {
                return false;
            }
            obj = obj2;
        }
        return true;
    }

    public static boolean a(Iterable iterable, Function function, Predicate predicate) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (predicate.test(function.apply(it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(CE ce2, Predicate predicate, Predicate predicate2) {
        for (AbstractC10561zE abstractC10561zE : ce2) {
            if (predicate2.test(abstractC10561zE)) {
                return false;
            }
            if (predicate.test(abstractC10561zE)) {
                return true;
            }
        }
        return false;
    }

    public static <T> T a(Iterable<T> iterable) {
        return iterable.iterator().next();
    }

    public static Iterable a(final Iterable iterable, final Predicate predicate) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C9073qK.d(Iterable.this, predicate);
            }
        };
    }

    public static <T, U> Iterable<U> a(Iterable<T> iterable, final Function<? super T, Iterable<U>> function) {
        Objects.requireNonNull(function);
        return new C5941Sx(AbstractC9907vK.a(iterable, new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return (Iterable) Function.this.apply(obj);
            }
        }));
    }

    public static boolean a(BiPredicate biPredicate, C9406sK c9406sK, C9406sK c9406sK2) {
        CK a10 = JK.a(c9406sK2.f52337b.iterator(), c9406sK2.f52338c);
        CK a11 = JK.a(c9406sK.f52337b.iterator(), c9406sK.f52338c);
        while (a11.f43396b.hasNext()) {
            Object a12 = a11.a(a11.f43396b.next());
            if (!a10.f43396b.hasNext() || !biPredicate.test(a12, a10.a(a10.f43396b.next()))) {
                return false;
            }
        }
        return !a10.f43396b.hasNext();
    }

    public static Iterator a(Object obj) {
        return new EK(obj);
    }
}
