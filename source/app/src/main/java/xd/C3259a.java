package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public class C3259a<E> implements Collection<E>, Serializable {

    public static final long f28438d = 3053995032091335093L;

    public final Collection<E> f28439b;

    public final Object f28440c;

    public C3259a(Collection<E> collection, Object obj) {
        this.f28439b = collection;
        this.f28440c = obj;
    }

    public final void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28440c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean add(E e10) {
        boolean add;
        synchronized (this.f28440c) {
            add = this.f28439b.add(e10);
        }
        return add;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        boolean addAll;
        synchronized (this.f28440c) {
            addAll = this.f28439b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public void clear() {
        synchronized (this.f28440c) {
            this.f28439b.clear();
        }
    }

    @Override
    public boolean contains(Object obj) {
        boolean contains;
        synchronized (this.f28440c) {
            contains = this.f28439b.contains(obj);
        }
        return contains;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28440c) {
            containsAll = this.f28439b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28440c) {
            isEmpty = this.f28439b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Iterator<E> iterator() {
        return this.f28439b.iterator();
    }

    @Override
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this.f28440c) {
            remove = this.f28439b.remove(obj);
        }
        return remove;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28440c) {
            removeAll = this.f28439b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28440c) {
            retainAll = this.f28439b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28440c) {
            size = this.f28439b.size();
        }
        return size;
    }

    @Override
    public Object[] toArray() {
        Object[] array;
        synchronized (this.f28440c) {
            array = this.f28439b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28440c) {
            obj = this.f28439b.toString();
        }
        return obj;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        synchronized (this.f28440c) {
            tArr2 = (T[]) this.f28439b.toArray(tArr);
        }
        return tArr2;
    }
}
