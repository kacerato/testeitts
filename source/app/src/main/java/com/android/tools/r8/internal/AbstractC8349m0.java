package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public abstract class AbstractC8349m0 extends AbstractC7848j0 implements InterfaceC8425mU {
    @Override
    public InterfaceC8258lU a() {
        return l(0);
    }

    public void add(int i10, Object obj) {
        a(i10, ((Long) obj).longValue());
    }

    public boolean addAll(int i10, Collection collection) {
        j(i10);
        Iterator it = collection.iterator();
        boolean hasNext = it.hasNext();
        while (it.hasNext()) {
            a(i10, ((Long) it.next()).longValue());
            i10++;
        }
        return hasNext;
    }

    @Override
    public final boolean b(long j10) {
        return d(j10) >= 0;
    }

    @Override
    public void clear() {
        a(0, size());
    }

    public int d(long j10) {
        AbstractC8516n0 l10 = l(0);
        while (l10.hasNext()) {
            if (j10 == l10.l()) {
                return l10.previousIndex();
            }
        }
        return -1;
    }

    public int e(long j10) {
        AbstractC8516n0 l10 = l(size());
        while (l10.hasPrevious()) {
            if (j10 == l10.a()) {
                return l10.nextIndex();
            }
        }
        return -1;
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
        if (list instanceof InterfaceC8425mU) {
            AbstractC8516n0 l10 = l(0);
            AbstractC8516n0 l11 = ((AbstractC8349m0) ((InterfaceC8425mU) list)).l(0);
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return true;
                }
                if (l10.l() != l11.l()) {
                    return false;
                }
                size = i10;
            }
        } else {
            AbstractC8516n0 l12 = l(0);
            ListIterator listIterator = list.listIterator();
            while (true) {
                int i11 = size - 1;
                if (size == 0) {
                    return true;
                }
                if (!Long.valueOf(l12.l()).equals(listIterator.next())) {
                    return false;
                }
                size = i11;
            }
        }
    }

    public Object get(int i10) {
        return Long.valueOf(d(i10));
    }

    @Override
    public final int hashCode() {
        AbstractC8516n0 l10 = l(0);
        int size = size();
        int i10 = 1;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            long l11 = l10.l();
            i10 = (i10 * 31) + ((int) (l11 ^ (l11 >>> 32)));
            size = i11;
        }
    }

    @Override
    public final int indexOf(Object obj) {
        return d(((Long) obj).longValue());
    }

    @Override
    public Iterator iterator() {
        return l(0);
    }

    public final void j(int i10) {
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

    public final void k(int i10) {
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

    public abstract AbstractC8516n0 l(int i10);

    @Override
    public final int lastIndexOf(Object obj) {
        return e(((Long) obj).longValue());
    }

    public ListIterator listIterator() {
        return l(0);
    }

    public Object remove(int i10) {
        return Long.valueOf(f(i10));
    }

    public Object set(int i10, Object obj) {
        return Long.valueOf(b(i10, ((Long) obj).longValue()));
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        AbstractC8516n0 l10 = l(0);
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
            sb2.append(String.valueOf(l10.l()));
            size = i10;
        }
    }

    @Override
    public final int compareTo(List list) {
        if (list == this) {
            return 0;
        }
        if (list instanceof InterfaceC8425mU) {
            AbstractC8516n0 l10 = l(0);
            AbstractC8516n0 l11 = ((AbstractC8349m0) ((InterfaceC8425mU) list)).l(0);
            while (l10.hasNext() && l11.hasNext()) {
                int compare = Long.compare(l10.l(), l11.l());
                if (compare != 0) {
                    return compare;
                }
            }
            if (l11.hasNext()) {
                return -1;
            }
            return l10.hasNext() ? 1 : 0;
        }
        AbstractC8516n0 l12 = l(0);
        ListIterator listIterator = list.listIterator();
        while (l12.hasNext() && listIterator.hasNext()) {
            int compareTo = Long.valueOf(l12.l()).compareTo((Long) listIterator.next());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (listIterator.hasNext()) {
            return -1;
        }
        return l12.hasNext() ? 1 : 0;
    }

    @Override
    public C8182l0 subList(int i10, int i11) {
        j(i10);
        j(i11);
        if (i10 <= i11) {
            return new C8182l0(this, i10, i11);
        }
        throw new IndexOutOfBoundsException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
