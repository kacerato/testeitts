package com.google.common.collect;

import javax.annotation.CheckForNull;

@X
@v2.c
public final class U<E> extends AbstractC12588x1<E> {

    public final AbstractC12588x1<E> f66239i;

    public U(AbstractC12588x1<E> abstractC12588x1) {
        super(Ordering.i(abstractC12588x1.comparator()).F());
        this.f66239i = abstractC12588x1;
    }

    @Override
    @v2.c("NavigableSet")
    public AbstractC12588x1<E> Z() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    @v2.c("NavigableSet")
    public e3<E> descendingIterator() {
        return this.f66239i.iterator();
    }

    @Override
    @v2.c("NavigableSet")
    public AbstractC12588x1<E> descendingSet() {
        return this.f66239i;
    }

    @Override
    @CheckForNull
    public E ceiling(E e10) {
        return this.f66239i.floor(e10);
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f66239i.contains(obj);
    }

    @Override
    public AbstractC12588x1<E> f0(E e10, boolean z10) {
        return this.f66239i.tailSet(e10, z10).descendingSet();
    }

    @Override
    @CheckForNull
    public E floor(E e10) {
        return this.f66239i.ceiling(e10);
    }

    @Override
    public boolean h() {
        return this.f66239i.h();
    }

    @Override
    @CheckForNull
    public E higher(E e10) {
        return this.f66239i.lower(e10);
    }

    @Override
    public e3<E> iterator() {
        return this.f66239i.descendingIterator();
    }

    @Override
    public int indexOf(@CheckForNull Object obj) {
        int indexOf = this.f66239i.indexOf(obj);
        return indexOf == -1 ? indexOf : (size() - 1) - indexOf;
    }

    @Override
    @CheckForNull
    public E lower(E e10) {
        return this.f66239i.higher(e10);
    }

    @Override
    public int size() {
        return this.f66239i.size();
    }

    @Override
    public AbstractC12588x1<E> t0(E e10, boolean z10, E e11, boolean z11) {
        return this.f66239i.subSet(e11, z11, e10, z10).descendingSet();
    }

    @Override
    public AbstractC12588x1<E> w0(E e10, boolean z10) {
        return this.f66239i.headSet(e10, z10).descendingSet();
    }
}
