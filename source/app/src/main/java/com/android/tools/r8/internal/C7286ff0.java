package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C7286ff0 extends WC {

    public static final C7286ff0 f48035i = new C7286ff0(C6190Xe0.f45779e, C6935dZ.f47416b);

    public final transient AbstractC7552hC f48036h;

    public C7286ff0(AbstractC7552hC abstractC7552hC, Comparator comparator) {
        super(comparator);
        this.f48036h = abstractC7552hC;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        return this.f48036h.a(i10, objArr);
    }

    @Override
    public final Object[] b() {
        return this.f48036h.b();
    }

    @Override
    public final int c() {
        return this.f48036h.c();
    }

    @Override
    public final Object ceiling(Object obj) {
        int b10 = b(obj, true);
        if (b10 == this.f48036h.size()) {
            return null;
        }
        return this.f48036h.get(b10);
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.f48036h, obj, this.f45337e) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean containsAll(Collection collection) {
        boolean z10;
        Comparator comparator;
        if (collection instanceof LY) {
            collection = ((LY) collection).w();
        }
        Comparator comparator2 = this.f45337e;
        comparator2.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            comparator = ((SortedSet) collection).comparator();
            if (comparator == null) {
                comparator = C6935dZ.f47416b;
            }
        } else {
            if (!(collection instanceof InterfaceC7976jn0)) {
                z10 = false;
                if (z10 || collection.size() <= 1) {
                    return super.containsAll(collection);
                }
                AbstractC4895Av0 it = this.f48036h.iterator();
                Iterator it2 = collection.iterator();
                if (!it.hasNext()) {
                    return false;
                }
                Object next = it2.next();
                Object next2 = it.next();
                while (true) {
                    try {
                        int compare = this.f45337e.compare(next2, next);
                        if (compare < 0) {
                            if (!it.hasNext()) {
                                return false;
                            }
                            next2 = it.next();
                        } else if (compare == 0) {
                            if (!it2.hasNext()) {
                                return true;
                            }
                            next = it2.next();
                        } else if (compare > 0) {
                            break;
                        }
                    } catch (ClassCastException | NullPointerException unused) {
                    }
                }
                return false;
            }
            comparator = ((InterfaceC7976jn0) collection).comparator();
        }
        z10 = comparator2.equals(comparator);
        if (z10) {
        }
        return super.containsAll(collection);
    }

    @Override
    public final int d() {
        return this.f48036h.d();
    }

    @Override
    public final Iterator descendingIterator() {
        return this.f48036h.i().iterator();
    }

    public final C7286ff0 e(int i10, int i11) {
        return (i10 == 0 && i11 == this.f48036h.size()) ? this : i10 < i11 ? new C7286ff0(this.f48036h.subList(i10, i11), this.f45337e) : WC.a(this.f45337e);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z10;
        Comparator comparator;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.f48036h.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator comparator2 = this.f45337e;
        comparator2.getClass();
        if (set instanceof SortedSet) {
            comparator = ((SortedSet) set).comparator();
            if (comparator == null) {
                comparator = C6935dZ.f47416b;
            }
        } else {
            if (!(set instanceof InterfaceC7976jn0)) {
                z10 = false;
                if (z10) {
                    return containsAll(set);
                }
                Iterator it = set.iterator();
                try {
                    AbstractC4895Av0 it2 = this.f48036h.iterator();
                    while (it2.hasNext()) {
                        Object next = it2.next();
                        Object next2 = it.next();
                        if (next2 == null || this.f45337e.compare(next, next2) != 0) {
                            return false;
                        }
                    }
                    return true;
                } catch (ClassCastException | NoSuchElementException unused) {
                    return false;
                }
            }
            comparator = ((InterfaceC7976jn0) set).comparator();
        }
        z10 = comparator2.equals(comparator);
        if (z10) {
        }
    }

    @Override
    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f48036h.get(0);
    }

    @Override
    public final Object floor(Object obj) {
        int a10 = a(obj, true) - 1;
        if (a10 == -1) {
            return null;
        }
        return this.f48036h.get(a10);
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f48036h.forEach(consumer);
    }

    @Override
    public final boolean g() {
        return this.f48036h.g();
    }

    @Override
    public final Object higher(Object obj) {
        int b10 = b(obj, false);
        if (b10 == this.f48036h.size()) {
            return null;
        }
        return this.f48036h.get(b10);
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return this.f48036h.iterator();
    }

    @Override
    public final AbstractC7552hC j() {
        return this.f48036h.size() <= 1 ? this.f48036h : new RC(this, this.f48036h);
    }

    @Override
    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f48036h.get(r0.size() - 1);
    }

    @Override
    public final Object lower(Object obj) {
        int a10 = a(obj, false) - 1;
        if (a10 == -1) {
            return null;
        }
        return this.f48036h.get(a10);
    }

    @Override
    public final int size() {
        return this.f48036h.size();
    }

    @Override
    public final Spliterator spliterator() {
        return a().spliterator();
    }

    public final int a(Object obj, boolean z10) {
        AbstractC7552hC abstractC7552hC = this.f48036h;
        obj.getClass();
        int binarySearch = Collections.binarySearch(abstractC7552hC, obj, this.f45337e);
        return binarySearch >= 0 ? z10 ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    public final int b(Object obj, boolean z10) {
        AbstractC7552hC abstractC7552hC = this.f48036h;
        obj.getClass();
        int binarySearch = Collections.binarySearch(abstractC7552hC, obj, this.f45337e);
        return binarySearch >= 0 ? z10 ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    @Override
    public final Iterator iterator() {
        return this.f48036h.iterator();
    }
}
