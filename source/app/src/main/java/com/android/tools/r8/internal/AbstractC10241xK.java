package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.ListIterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC10241xK {

    public static final boolean f53735a = true;

    public static int a(Iterator it) {
        final IH ih2 = new IH();
        it.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IH.this.c();
            }
        });
        return ih2.a();
    }

    public static Object b(Z5 z52, Predicate predicate) {
        while (z52.f46159b.hasPrevious()) {
            Object previous = z52.previous();
            if (predicate.test(previous)) {
                return previous;
            }
        }
        return null;
    }

    public static Object b(ListIterator listIterator) {
        if (!listIterator.hasPrevious()) {
            return null;
        }
        Object previous = listIterator.previous();
        Object next = listIterator.next();
        if (f53735a || previous == next) {
            return previous;
        }
        throw new AssertionError();
    }

    public static Object a(Iterator it, Predicate predicate) {
        while (it.hasNext()) {
            Object next = it.next();
            if (predicate.test(next)) {
                return next;
            }
        }
        return null;
    }

    public static Object a(ListIterator listIterator) {
        if (!listIterator.hasNext()) {
            return null;
        }
        Object next = listIterator.next();
        Object previous = listIterator.previous();
        if (f53735a || previous == next) {
            return next;
        }
        throw new AssertionError();
    }

    public static Object a(Z5 z52, Predicate predicate) {
        while (z52.hasPrevious()) {
            W5 previous = z52.previous();
            if (predicate.test(previous)) {
                return previous;
            }
        }
        throw new C5417Jv0();
    }

    public static void a(EE ee2, int i10) {
        int i11 = 0;
        if (i10 >= 0) {
            while (i11 < i10) {
                ee2.next();
                i11++;
            }
        } else {
            while (i11 > i10) {
                ee2.previous();
                i11--;
            }
        }
    }
}
