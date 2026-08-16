package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.function.IntConsumer;

public abstract class AbstractC5554Me0 {

    public static final boolean f42337a = true;

    public static void a(C5439Ke0 c5439Ke0, HashSet hashSet, QF qf2, ArrayDeque arrayDeque, TreeSet treeSet, ArrayList arrayList) {
        boolean z10;
        arrayDeque.addLast(c5439Ke0);
        boolean add = treeSet.add(c5439Ke0);
        if (!f42337a && !add) {
            throw new AssertionError();
        }
        TreeSet treeSet2 = (TreeSet) qf2.get(c5439Ke0.f41726c);
        Set<C5439Ke0> set = treeSet2;
        if (c5439Ke0.f41725b.A()) {
            TreeSet treeSet3 = (TreeSet) qf2.get(c5439Ke0.f41726c + 1);
            set = treeSet2;
            if (treeSet2 == null) {
                set = treeSet3;
            } else if (treeSet3 != null) {
                TreeSet treeSet4 = new TreeSet((SortedSet) treeSet2);
                treeSet4.addAll(treeSet3);
                set = treeSet4;
            }
        }
        if (set == null) {
            set = Collections.EMPTY_SET;
        }
        for (C5439Ke0 c5439Ke02 : set) {
            if (!hashSet.contains(c5439Ke02)) {
                c5439Ke02.getClass();
                if (c5439Ke02 != c5439Ke0) {
                    if (treeSet.contains(c5439Ke02)) {
                        ArrayDeque arrayDeque2 = new ArrayDeque();
                        while (c5439Ke02 != ((C5439Ke0) arrayDeque2.peekFirst())) {
                            arrayDeque2.addFirst((C5439Ke0) arrayDeque.removeLast());
                        }
                        arrayDeque.addAll(arrayDeque2);
                        TreeSet treeSet5 = new TreeSet(arrayDeque2);
                        Iterator it = treeSet5.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z10 = true;
                                break;
                            }
                            C5439Ke0 c5439Ke03 = (C5439Ke0) it.next();
                            z10 = false;
                            for (int i10 = 0; i10 < c5439Ke03.f41725b.C(); i10++) {
                                TreeSet treeSet6 = (TreeSet) qf2.get(c5439Ke03.f41726c + i10);
                                if (treeSet6 != null) {
                                    Iterator it2 = treeSet6.iterator();
                                    while (it2.hasNext()) {
                                        if (!treeSet5.contains((C5439Ke0) it2.next())) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        arrayList.add(new C5497Le0(treeSet5, z10));
                    } else {
                        a(c5439Ke02, hashSet, qf2, arrayDeque, treeSet, arrayList);
                    }
                }
            }
        }
        C5439Ke0 c5439Ke04 = (C5439Ke0) arrayDeque.removeLast();
        boolean z11 = f42337a;
        if (!z11) {
            c5439Ke04.getClass();
            if (c5439Ke04 != c5439Ke0) {
                throw new AssertionError();
            }
        }
        boolean remove = treeSet.remove(c5439Ke0);
        if (!z11 && !remove) {
            throw new AssertionError();
        }
        boolean add2 = hashSet.add(c5439Ke0);
        if (!z11 && !add2) {
            throw new AssertionError();
        }
    }

    public static QF a(TreeSet treeSet) {
        final QF qf2 = new QF(16);
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            final C5439Ke0 c5439Ke0 = (C5439Ke0) it.next();
            c5439Ke0.b(new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    AbstractC5554Me0.a(FF.this, c5439Ke0, i10);
                }
            });
        }
        return qf2;
    }

    public static void a(FF ff2, C5439Ke0 c5439Ke0, int i10) {
        if (ff2.a(i10)) {
            ((TreeSet) ff2.get(i10)).add(c5439Ke0);
            return;
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(c5439Ke0);
        ff2.a(i10, treeSet);
    }
}
