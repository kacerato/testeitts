package com.android.tools.r8.graph;

import com.android.tools.r8.internal.InterfaceC6160Wr0;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public abstract class T {

    public static final boolean f36813f = true;

    public final C4798y f36814a;

    public final int f36815b;

    public final HashSet f36816c = new HashSet();

    public final ArrayDeque f36817d = new ArrayDeque();

    public boolean f36818e = false;

    public T(C4798y c4798y, int i10) {
        this.f36814a = c4798y;
        this.f36815b = i10;
    }

    public abstract void a(E0 e02);

    public final void a(Collection collection, InterfaceC6160Wr0 interfaceC6160Wr0) {
        Iterator<E> it = collection.iterator();
        while (true) {
            if (!it.hasNext() && this.f36817d.isEmpty()) {
                this.f36816c.clear();
                return;
            }
            if (this.f36817d.isEmpty()) {
                a((E0) it.next());
                if (this.f36817d.isEmpty()) {
                    continue;
                }
            }
            E0 e02 = (E0) this.f36817d.removeFirst();
            if (!this.f36816c.add(e02)) {
                continue;
            } else {
                if (!f36813f && this.f36815b == 4 && !e02.e0()) {
                    throw new AssertionError();
                }
                interfaceC6160Wr0.accept(e02);
            }
        }
    }
}
