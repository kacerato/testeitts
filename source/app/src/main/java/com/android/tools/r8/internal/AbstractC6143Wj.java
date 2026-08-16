package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC6143Wj {

    public static final boolean f45514e = true;

    public final C4798y f45515a;

    public final C4387c4 f45516b;

    public final IdentityHashMap f45517c = new IdentityHashMap();

    public final ArrayList f45518d = new ArrayList();

    public AbstractC6143Wj(C4798y c4798y, C4387c4 c4387c4) {
        this.f45515a = c4798y;
        this.f45516b = c4387c4;
    }

    public void a(Collection collection) {
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (c(h22)) {
                arrayDeque.add(h22);
            }
        }
        while (!arrayDeque.isEmpty()) {
            k((com.android.tools.r8.graph.H2) arrayDeque.removeLast());
            a(arrayDeque);
        }
    }

    public final boolean b(com.android.tools.r8.graph.H2 h22) {
        return this.f45517c.get(h22) == EnumC6086Vj.f45136b;
    }

    public boolean c(com.android.tools.r8.graph.H2 h22) {
        if (h22.i1()) {
            if (com.android.tools.r8.graph.H2.a(this.f45515a.g(h22.a1())) != null) {
                return false;
            }
        }
        Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
        while (it.hasNext()) {
            if (com.android.tools.r8.graph.H2.a(this.f45515a.g(it.next())) != null) {
                return false;
            }
        }
        return true;
    }

    public final boolean d(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f45514e;
        if (!z10 && !c(h22)) {
            throw new AssertionError();
        }
        if (z10 || b(h22)) {
            return true;
        }
        throw new AssertionError();
    }

    public final boolean e(com.android.tools.r8.graph.H2 h22) {
        return !b(h22);
    }

    public final void f(com.android.tools.r8.graph.H2 h22) {
        if (!f45514e && this.f45517c.containsKey(h22)) {
            throw new AssertionError();
        }
        i(h22);
        g(h22);
        if (c(h22)) {
            this.f45518d.add(h22);
        }
    }

    public final void g(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f45514e;
        if (!z10 && b(h22)) {
            throw new AssertionError();
        }
        if (!z10 && a(h22)) {
            throw new AssertionError();
        }
        l(h22);
        if (!z10 && this.f45517c.containsKey(h22)) {
            throw new AssertionError();
        }
        this.f45517c.put(h22, EnumC6086Vj.f45136b);
    }

    public final void h(com.android.tools.r8.graph.H2 h22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC6143Wj.this.k((com.android.tools.r8.graph.H2) obj);
            }
        }, h22);
    }

    public final void i(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f45514e;
        if (!z10 && b(h22)) {
            throw new AssertionError();
        }
        if (!z10 && a(h22)) {
            throw new AssertionError();
        }
        this.f45516b.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC6143Wj.this.e((com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC6143Wj.this.f((com.android.tools.r8.graph.H2) obj);
            }
        }, h22);
    }

    public abstract void j(com.android.tools.r8.graph.H2 h22);

    public final void k(com.android.tools.r8.graph.H2 h22) {
        if (a(h22)) {
            return;
        }
        if (!b(h22)) {
            i(h22);
            g(h22);
        }
        h(h22);
        if (!f45514e && !b(h22)) {
            throw new AssertionError();
        }
        this.f45517c.put(h22, EnumC6086Vj.f45137c);
        j(h22);
    }

    public abstract void l(com.android.tools.r8.graph.H2 h22);

    public final void a(ArrayDeque arrayDeque) {
        if (!f45514e && !this.f45518d.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC6143Wj.this.d((com.android.tools.r8.graph.H2) obj);
            }
        })) {
            throw new AssertionError();
        }
        arrayDeque.addAll(this.f45518d);
        this.f45518d.clear();
    }

    public void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        ((List) this.f45516b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)).forEach(consumer);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return this.f45517c.get(h22) == EnumC6086Vj.f45137c;
    }
}
