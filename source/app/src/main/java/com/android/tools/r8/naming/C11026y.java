package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5598Mz0;
import com.android.tools.r8.internal.C8066kH0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Stream;

public final class C11026y {

    public static final boolean f56108d = true;

    public final C11031z f56109a;

    public final C4798y f56110b;

    public final Set f56111c = AbstractC5513Ll0.c();

    public C11026y(C11031z c11031z) {
        this.f56109a = c11031z;
        this.f56110b = c11031z.f56117a;
    }

    public final ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) it.next();
            if (e02 != null && this.f56111c.add(e02.f36245e)) {
                TreeSet a10 = a(e02);
                boolean z10 = f56108d;
                if (!z10 && a10.isEmpty()) {
                    throw new AssertionError();
                }
                if (!z10 && !a10.stream().allMatch(new C5598Mz0())) {
                    throw new AssertionError();
                }
                if (!z10) {
                    Stream map = a10.stream().map(new C8066kH0());
                    Set set = this.f56111c;
                    Objects.requireNonNull(set);
                    if (!map.allMatch(new v.T0(set))) {
                        throw new AssertionError();
                    }
                }
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    public final TreeSet a(com.android.tools.r8.graph.E0 e02) {
        TreeSet treeSet = new TreeSet(Comparator.comparing(new C8066kH0()));
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(e02.f36245e);
        while (!arrayDeque.isEmpty()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) arrayDeque.removeFirst();
            com.android.tools.r8.graph.E0 g10 = this.f56110b.g(m22);
            if (g10 != null) {
                for (com.android.tools.r8.graph.M2 m23 : g10.f36248h.f36675b) {
                    if (this.f56111c.add(m23)) {
                        arrayDeque.add(m23);
                    }
                }
                if (g10.isInterface()) {
                    treeSet.add(g10);
                    for (com.android.tools.r8.graph.M2 m24 : this.f56109a.f56118b.b(m22)) {
                        if (this.f56111c.add(m24)) {
                            arrayDeque.add(m24);
                        }
                    }
                } else if (g10.f36245e != this.f56110b.b().f38068i2) {
                    if (this.f56111c.add(g10.f36247g)) {
                        arrayDeque.add(g10.f36247g);
                    }
                    for (com.android.tools.r8.graph.M2 m25 : this.f56109a.f56118b.a(m22)) {
                        if (this.f56111c.add(m25)) {
                            arrayDeque.add(m25);
                        }
                    }
                }
            }
        }
        return treeSet;
    }
}
