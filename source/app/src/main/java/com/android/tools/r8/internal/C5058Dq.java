package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C5058Dq implements Collection {

    public static final C5058Dq f39660c = new C5058Dq(Collections.EMPTY_SET);

    public final Set f39661b;

    public C5058Dq(Set set) {
        this.f39661b = set;
    }

    public static C5058Dq b() {
        return new C5058Dq(new LinkedHashSet());
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return this.f39661b.add(AbstractC9280rd.a(a22, a22));
    }

    @Override
    public final boolean add(Object obj) {
        return this.f39661b.add((com.android.tools.r8.graph.F2) obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return this.f39661b.addAll(collection);
    }

    public final boolean c(C4516j1 c4516j1) {
        return this.f39661b.remove(c4516j1.Z0());
    }

    @Override
    public final void clear() {
        this.f39661b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39661b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f39661b.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return this.f39661b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f39661b.iterator();
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f39661b.remove(obj);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        return this.f39661b.removeAll(collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        return this.f39661b.retainAll(collection);
    }

    @Override
    public final int size() {
        return this.f39661b.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f39661b.toArray();
    }

    public final boolean b(C4516j1 c4516j1) {
        return this.f39661b.contains(c4516j1.Z0());
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f39661b.toArray(objArr);
    }

    public static C5058Dq a() {
        return new C5058Dq(new HashSet());
    }

    public final boolean a(C4516j1 c4516j1) {
        return a(c4516j1.getReference());
    }

    public final void b(Iterable iterable) {
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5058Dq.this.c((C4516j1) obj);
            }
        });
    }

    public final boolean a(com.android.tools.r8.graph.H0 h02) {
        return a(h02.getReference());
    }

    public final void a(Iterable iterable) {
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5058Dq.this.a((C4516j1) obj);
            }
        });
    }

    public final void a(Iterable iterable, Function function) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            AbstractC9907vK.a((Iterable) function.apply(it.next()), this);
        }
    }
}
