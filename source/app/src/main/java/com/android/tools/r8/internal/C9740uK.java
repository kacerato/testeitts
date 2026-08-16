package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;

public final class C9740uK extends AbstractC6114Vx {

    public final List f52837b;

    public C9740uK(List list) {
        this.f52837b = list;
    }

    @Override
    public final Iterator iterator() {
        List list = this.f52837b;
        if (list instanceof List) {
            return list.subList(Math.min(list.size(), 1), list.size()).iterator();
        }
        Iterator<E> it = list.iterator();
        it.getClass();
        if (it.hasNext()) {
            it.next();
        }
        return new C9573tK(it);
    }

    @Override
    public final Spliterator spliterator() {
        List list = this.f52837b;
        return list instanceof List ? list.subList(Math.min(list.size(), 1), list.size()).spliterator() : AbstractC6483ap0.a(list).skip(1).spliterator2();
    }
}
