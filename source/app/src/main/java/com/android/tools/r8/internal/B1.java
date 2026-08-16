package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public abstract class B1 extends AbstractC10355y1 implements InterfaceC5841Rd0 {
    public boolean addAll(int i10, Collection collection) {
        j(i10);
        Iterator it = collection.iterator();
        boolean hasNext = it.hasNext();
        while (it.hasNext()) {
            add(i10, it.next());
            i10++;
        }
        return hasNext;
    }

    @Override
    public void clear() {
        a(0, size());
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public A1 subList(int i10, int i11) {
        j(i10);
        j(i11);
        if (i10 <= i11) {
            return new A1(this, i10, i11);
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
        G30 l10 = l(0);
        ListIterator listIterator = list.listIterator();
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                return true;
            }
            if (l10.next() != listIterator.next()) {
                return false;
            }
            size = i10;
        }
    }

    @Override
    public final int hashCode() {
        G30 l10 = l(0);
        int size = size();
        int i10 = 1;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 = (i10 * 31) + System.identityHashCode(l10.next());
            size = i11;
        }
    }

    @Override
    public int indexOf(Object obj) {
        G30 l10 = l(0);
        while (l10.hasNext()) {
            if (obj == l10.next()) {
                return l10.previousIndex();
            }
        }
        return -1;
    }

    @Override
    public A30 iterator() {
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

    public abstract G30 l(int i10);

    @Override
    public int lastIndexOf(Object obj) {
        G30 l10 = l(size());
        while (l10.hasPrevious()) {
            if (obj == l10.previous()) {
                return l10.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator listIterator() {
        return l(0);
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        G30 l10 = l(0);
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
            E next = l10.next();
            if (this == next) {
                sb2.append("(this list)");
            } else {
                sb2.append(String.valueOf(next));
            }
            size = i10;
        }
    }

    @Override
    public Iterator iterator() {
        return l(0);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
