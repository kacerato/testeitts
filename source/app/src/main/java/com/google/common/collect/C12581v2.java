package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12581v2<E> extends AbstractC12588x1<E> {

    public static final C12581v2<Comparable> f66927j = new C12581v2<>(AbstractC12521g1.x(), Ordering.A());

    @v2.d
    public final transient AbstractC12521g1<E> f66928i;

    public C12581v2(AbstractC12521g1<E> abstractC12521g1, Comparator<? super E> comparator) {
        super(comparator);
        this.f66928i = abstractC12521g1;
    }

    public int B0(E e10, boolean z10) {
        int binarySearch = Collections.binarySearch(this.f66928i, w2.H.E(e10), comparator());
        return binarySearch >= 0 ? z10 ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    public int C0(E e10, boolean z10) {
        int binarySearch = Collections.binarySearch(this.f66928i, w2.H.E(e10), comparator());
        return binarySearch >= 0 ? z10 ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    public final int D0(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.f66928i, obj, E0());
    }

    public Comparator<Object> E0() {
        return this.f66931g;
    }

    @Override
    public AbstractC12588x1<E> Z() {
        Comparator reverseOrder = Collections.reverseOrder(this.f66931g);
        return isEmpty() ? AbstractC12588x1.c0(reverseOrder) : new C12581v2(this.f66928i.L(), reverseOrder);
    }

    @Override
    public AbstractC12521g1<E> a() {
        return this.f66928i;
    }

    @Override
    @v2.c
    public e3<E> descendingIterator() {
        return this.f66928i.L().iterator();
    }

    @Override
    public int b(Object[] objArr, int i10) {
        return this.f66928i.b(objArr, i10);
    }

    @Override
    @CheckForNull
    public Object[] c() {
        return this.f66928i.c();
    }

    @Override
    @CheckForNull
    public E ceiling(E e10) {
        int C02 = C0(e10, true);
        if (C02 == size()) {
            return null;
        }
        return this.f66928i.get(C02);
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return D0(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof V1) {
            collection = ((V1) collection).S1();
        }
        if (!H2.b(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        e3<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int x02 = x0(next2, next);
                if (x02 < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (x02 == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (x02 > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override
    public int d() {
        return this.f66928i.d();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!H2.b(this.f66931g, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            e3<E> it2 = iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                E next2 = it.next();
                if (next2 == null || x0(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override
    public AbstractC12588x1<E> f0(E e10, boolean z10) {
        return z0(0, B0(e10, z10));
    }

    @Override
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f66928i.get(0);
    }

    @Override
    @CheckForNull
    public E floor(E e10) {
        int B02 = B0(e10, true) - 1;
        if (B02 == -1) {
            return null;
        }
        return this.f66928i.get(B02);
    }

    @Override
    public int g() {
        return this.f66928i.g();
    }

    @Override
    public boolean h() {
        return this.f66928i.h();
    }

    @Override
    @CheckForNull
    public E higher(E e10) {
        int C02 = C0(e10, false);
        if (C02 == size()) {
            return null;
        }
        return this.f66928i.get(C02);
    }

    @Override
    public e3<E> iterator() {
        return this.f66928i.iterator();
    }

    @Override
    public int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int binarySearch = Collections.binarySearch(this.f66928i, obj, E0());
            if (binarySearch >= 0) {
                return binarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    @Override
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f66928i.get(size() - 1);
    }

    @Override
    @CheckForNull
    public E lower(E e10) {
        int B02 = B0(e10, false) - 1;
        if (B02 == -1) {
            return null;
        }
        return this.f66928i.get(B02);
    }

    @Override
    public int size() {
        return this.f66928i.size();
    }

    @Override
    public AbstractC12588x1<E> t0(E e10, boolean z10, E e11, boolean z11) {
        return w0(e10, z10).f0(e11, z11);
    }

    @Override
    public AbstractC12588x1<E> w0(E e10, boolean z10) {
        return z0(C0(e10, z10), size());
    }

    public C12581v2<E> z0(int i10, int i11) {
        return (i10 == 0 && i11 == size()) ? this : i10 < i11 ? new C12581v2<>(this.f66928i.subList(i10, i11), this.f66931g) : AbstractC12588x1.c0(this.f66931g);
    }
}
