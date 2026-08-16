package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;

public abstract class AbstractC10185x0 extends AbstractCollection {

    public final Object f53657b;

    public Collection f53658c;

    public final C10519z0 f53659d;

    public final Collection f53660e;

    public final A0 f53661f;

    public AbstractC10185x0(A0 a02, Object obj, List list, C10519z0 c10519z0) {
        this.f53661f = a02;
        this.f53657b = obj;
        this.f53658c = list;
        this.f53659d = c10519z0;
        this.f53660e = c10519z0 == null ? null : c10519z0.f53658c;
    }

    public final void a() {
        C10519z0 c10519z0 = this.f53659d;
        if (c10519z0 != null) {
            c10519z0.a();
        } else {
            this.f53661f.f38497f.put(this.f53657b, this.f53658c);
        }
    }

    @Override
    public final boolean add(Object obj) {
        b();
        boolean isEmpty = this.f53658c.isEmpty();
        boolean add = this.f53658c.add(obj);
        if (add) {
            this.f53661f.f38498g++;
            if (isEmpty) {
                a();
            }
        }
        return add;
    }

    @Override
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.f53658c.size();
        boolean addAll = this.f53658c.addAll(collection);
        if (addAll) {
            int size2 = this.f53658c.size();
            this.f53661f.f38498g += size2 - size;
            if (size == 0) {
                a();
            }
        }
        return addAll;
    }

    public final void b() {
        Collection collection;
        C10519z0 c10519z0 = this.f53659d;
        if (c10519z0 != null) {
            c10519z0.b();
            if (this.f53659d.f53658c != this.f53660e) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f53658c.isEmpty() || (collection = (Collection) this.f53661f.f38497f.get(this.f53657b)) == null) {
                return;
            }
            this.f53658c = collection;
        }
    }

    public final void c() {
        C10519z0 c10519z0 = this.f53659d;
        if (c10519z0 != null) {
            c10519z0.c();
        } else if (this.f53658c.isEmpty()) {
            this.f53661f.f38497f.remove(this.f53657b);
        }
    }

    @Override
    public final void clear() {
        b();
        int size = this.f53658c.size();
        if (size == 0) {
            return;
        }
        this.f53658c.clear();
        this.f53661f.f38498g -= size;
        c();
    }

    @Override
    public final boolean contains(Object obj) {
        b();
        return this.f53658c.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        b();
        return this.f53658c.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.f53658c.equals(obj);
    }

    @Override
    public final int hashCode() {
        b();
        return this.f53658c.hashCode();
    }

    @Override
    public final Iterator iterator() {
        b();
        return new C10018w0(this);
    }

    @Override
    public final boolean remove(Object obj) {
        b();
        boolean remove = this.f53658c.remove(obj);
        if (remove) {
            A0 a02 = this.f53661f;
            a02.f38498g--;
            c();
        }
        return remove;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.f53658c.size();
        boolean removeAll = this.f53658c.removeAll(collection);
        if (removeAll) {
            int size2 = this.f53658c.size();
            this.f53661f.f38498g += size2 - size;
            c();
        }
        return removeAll;
    }

    @Override
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        b();
        int size = this.f53658c.size();
        boolean retainAll = this.f53658c.retainAll(collection);
        if (retainAll) {
            int size2 = this.f53658c.size();
            this.f53661f.f38498g += size2 - size;
            c();
        }
        return retainAll;
    }

    @Override
    public final int size() {
        b();
        return this.f53658c.size();
    }

    @Override
    public final Spliterator spliterator() {
        b();
        return this.f53658c.spliterator();
    }

    @Override
    public final String toString() {
        b();
        return this.f53658c.toString();
    }
}
