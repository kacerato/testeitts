package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public abstract class AbstractC6349a0 extends W implements TH {
    @Override
    public final int compareTo(List list) {
        if (list == this) {
            return 0;
        }
        if (list instanceof TH) {
            UH o10 = o(0);
            UH listIterator = ((TH) list).listIterator();
            while (o10.hasNext() && listIterator.hasNext()) {
                int compare = Integer.compare(o10.r(), listIterator.r());
                if (compare != 0) {
                    return compare;
                }
            }
            if (listIterator.hasNext()) {
                return -1;
            }
            return o10.hasNext() ? 1 : 0;
        }
        Iterator o11 = o(0);
        ListIterator listIterator2 = list.listIterator();
        while (o11.hasNext() && listIterator2.hasNext()) {
            int compareTo = Integer.valueOf(((X) o11).r()).compareTo((Integer) listIterator2.next());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (listIterator2.hasNext()) {
            return -1;
        }
        return o11.hasNext() ? 1 : 0;
    }

    public abstract boolean a(int i10, TH th2);

    public void add(int i10, Object obj) {
        b(i10, ((Integer) obj).intValue());
    }

    @Override
    public abstract boolean add(int i10);

    public boolean addAll(int i10, Collection collection) {
        k(i10);
        Iterator it = collection.iterator();
        boolean hasNext = it.hasNext();
        while (it.hasNext()) {
            b(i10, ((Integer) it.next()).intValue());
            i10++;
        }
        return hasNext;
    }

    @Override
    public void clear() {
        a(0, size());
    }

    @Override
    public TH subList(int i10, int i11) {
        k(i10);
        k(i11);
        if (i10 <= i11) {
            return new Z(this, i10, i11);
        }
        throw new IndexOutOfBoundsException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof TH) {
            UH o10 = o(0);
            UH listIterator = ((TH) list).listIterator();
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return true;
                }
                if (o10.r() != listIterator.r()) {
                    return false;
                }
                size = i10;
            }
        } else {
            Iterator o11 = o(0);
            ListIterator listIterator2 = list.listIterator();
            while (true) {
                int i11 = size - 1;
                if (size == 0) {
                    return true;
                }
                if (!Integer.valueOf(((X) o11).r()).equals(listIterator2.next())) {
                    return false;
                }
                size = i11;
            }
        }
    }

    public Object get(int i10) {
        return Integer.valueOf(c(i10));
    }

    @Override
    public final boolean h(int i10) {
        return m(i10) >= 0;
    }

    @Override
    public final int hashCode() {
        UH o10 = o(0);
        int size = size();
        int i10 = 1;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 = (i10 * 31) + o10.r();
            size = i11;
        }
    }

    @Override
    public final int indexOf(Object obj) {
        return m(((Integer) obj).intValue());
    }

    @Override
    public PH iterator() {
        return o(0);
    }

    public final void k(int i10) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(HC.a(i10, "Index (", ") is negative"));
        }
        if (i10 <= size()) {
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than list size (");
        a10.append(size());
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    public final void l(int i10) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(HC.a(i10, "Index (", ") is negative"));
        }
        if (i10 < size()) {
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(size());
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int lastIndexOf(Object obj) {
        return n(((Integer) obj).intValue());
    }

    @Override
    public final UH listIterator() {
        return o(0);
    }

    public int m(int i10) {
        UH o10 = o(0);
        while (o10.hasNext()) {
            if (i10 == o10.r()) {
                return o10.previousIndex();
            }
        }
        return -1;
    }

    public int n(int i10) {
        UH o10 = o(size());
        while (o10.hasPrevious()) {
            if (i10 == o10.c()) {
                return o10.nextIndex();
            }
        }
        return -1;
    }

    public abstract UH o(int i10);

    public Object remove(int i10) {
        return Integer.valueOf(i(i10));
    }

    public Object set(int i10, Object obj) {
        return Integer.valueOf(c(i10, ((Integer) obj).intValue()));
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        UH o10 = o(0);
        int size = size();
        boolean z10 = true;
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                sb2.append("]");
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(String.valueOf(o10.r()));
            size = i10;
        }
    }

    @Override
    public final UH iterator() {
        return o(0);
    }

    public ListIterator listIterator() {
        return o(0);
    }

    @Override
    public Iterator iterator() {
        return o(0);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
