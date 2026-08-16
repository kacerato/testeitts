package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10382yA extends AbstractC9536t60 {

    public static final boolean f53958b = true;

    public static void b(AA aa2, AA aa3) {
        aa3.getClass();
        aa2.getClass();
    }

    @Override
    public final LinkedList a(AbstractC9369s60 abstractC9369s60, LinkedList linkedList, ExecutorService executorService) {
        if (abstractC9369s60.j()) {
            a(abstractC9369s60.c(), linkedList);
            return linkedList;
        }
        if (abstractC9369s60.h()) {
            return a(abstractC9369s60.a(), linkedList);
        }
        if (f53958b || abstractC9369s60.i()) {
            return a(abstractC9369s60.b(), linkedList, executorService);
        }
        throw new AssertionError();
    }

    public static void a(final AbstractC10644zm0 abstractC10644zm0, LinkedList linkedList) {
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            AA aa2 = (AA) it.next();
            boolean j10 = aa2.j();
            int size = aa2.f38553b.size();
            aa2.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10382yA.a(AbstractC10644zm0.this, (com.android.tools.r8.graph.H2) obj);
                }
            });
            if (!f53958b) {
                int i10 = AbstractC7552hC.f48487c;
                abstractC10644zm0.a(j10, size, new C5920Sm0(aa2));
            }
            if (aa2.k()) {
                it.remove();
            }
        }
    }

    public static boolean a(AbstractC10644zm0 abstractC10644zm0, com.android.tools.r8.graph.H2 h22) {
        return !abstractC10644zm0.a(h22);
    }

    public static LinkedList a(final AbstractC10102wY abstractC10102wY, LinkedList linkedList) {
        final LinkedList linkedList2 = new LinkedList();
        linkedList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10382yA.a(AbstractC10102wY.this, linkedList2, (AA) obj);
            }
        });
        return linkedList2;
    }

    public static void a(AbstractC10102wY abstractC10102wY, LinkedList linkedList, final AA aa2) {
        boolean j10 = aa2.j();
        int size = aa2.f38553b.size();
        Collection a10 = abstractC10102wY.a(aa2);
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10382yA.a(AA.this, (AA) obj);
            }
        });
        if (!f53958b) {
            abstractC10102wY.a(j10, size, a10);
        }
        linkedList.addAll(a10);
    }

    public static void a(AA aa2, AA aa3) {
        aa3.getClass();
        aa2.getClass();
    }

    public static LinkedList a(final AbstractC10269xY abstractC10269xY, LinkedList linkedList, ExecutorService executorService) {
        final Object a10 = abstractC10269xY.a(linkedList, executorService);
        final LinkedList linkedList2 = new LinkedList();
        linkedList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10382yA.a(AbstractC10269xY.this, a10, linkedList2, (AA) obj);
            }
        });
        return linkedList2;
    }

    public static void a(AbstractC10269xY abstractC10269xY, Object obj, LinkedList linkedList, final AA aa2) {
        boolean j10 = aa2.j();
        int size = aa2.f38553b.size();
        Collection a10 = abstractC10269xY.a(aa2, obj);
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C10382yA.b(AA.this, (AA) obj2);
            }
        });
        if (!f53958b) {
            abstractC10269xY.a(j10, size, a10);
        }
        linkedList.addAll(a10);
    }
}
