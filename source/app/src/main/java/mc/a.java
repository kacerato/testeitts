package Mc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.AbstractList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;

public class a<T> extends AbstractList<T> implements RandomAccess {

    public final List<T> f14853b;

    public final Set<T> f14854c;

    public final Object f14855d;

    public a() {
        this.f14855d = new Object();
        this.f14853b = new SteppedArrayList();
        this.f14854c = new HashSet();
    }

    public List<T> a() {
        return this.f14853b;
    }

    @Override
    public boolean add(T t10) {
        if (t10 != null) {
            synchronized (this.f14855d) {
                try {
                    if (this.f14854c.contains(t10)) {
                        return false;
                    }
                    this.f14854c.add(t10);
                    if (this.f14853b.add(t10)) {
                        return true;
                    }
                    this.f14854c.remove(t10);
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
    }

    @Override
    public boolean addAll(Collection<? extends T> c10) {
        Iterator<? extends T> it = c10.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    @Override
    public void clear() {
        synchronized (this.f14855d) {
            this.f14853b.clear();
            this.f14854c.clear();
        }
    }

    @Override
    public boolean contains(Object o10) {
        boolean contains;
        if (o10 == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        synchronized (this.f14855d) {
            contains = this.f14854c.contains(o10);
        }
        return contains;
    }

    @Override
    public boolean containsAll(Collection<?> c10) {
        if (c10.isEmpty()) {
            return false;
        }
        Iterator<?> it = c10.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public T get(int i10) {
        T t10;
        synchronized (this.f14855d) {
            t10 = this.f14853b.get(i10);
        }
        return t10;
    }

    @Override
    public int indexOf(Object o10) {
        if (o10 == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        synchronized (this.f14855d) {
            try {
                if (!this.f14854c.contains(o10)) {
                    return -1;
                }
                return this.f14853b.indexOf(o10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f14855d) {
            isEmpty = this.f14853b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public int lastIndexOf(Object o10) {
        if (o10 == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        synchronized (this.f14855d) {
            try {
                if (!this.f14854c.contains(o10)) {
                    return -1;
                }
                return this.f14853b.lastIndexOf(o10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public T remove(int index) {
        T remove;
        synchronized (this.f14855d) {
            try {
                remove = this.f14853b.remove(index);
                if (remove != null) {
                    this.f14854c.remove(remove);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return remove;
    }

    @Override
    public T set(int index, T element) {
        T t10;
        if (element == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        synchronized (this.f14855d) {
            this.f14854c.remove(this.f14853b.get(index));
            this.f14854c.add(element);
            t10 = this.f14853b.set(index, element);
        }
        return t10;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f14855d) {
            size = this.f14853b.size();
        }
        return size;
    }

    @Override
    public boolean addAll(int index, Collection<? extends T> c10) {
        Iterator<? extends T> it = c10.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    public a(int inittialCapacity) {
        this.f14855d = new Object();
        this.f14853b = new SteppedArrayList(inittialCapacity);
        this.f14854c = new HashSet(inittialCapacity);
    }

    @Override
    public boolean remove(Object element) {
        if (element != null) {
            synchronized (this.f14855d) {
                try {
                    if (!this.f14854c.contains(element)) {
                        return false;
                    }
                    this.f14854c.remove(element);
                    this.f14853b.remove(element);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
    }

    @Override
    public void add(int index, T element) {
        if (element != null) {
            synchronized (this.f14855d) {
                try {
                    if (!this.f14854c.contains(element)) {
                        if (index < this.f14853b.size()) {
                            this.f14854c.remove(this.f14853b.get(index));
                            this.f14854c.add(element);
                            this.f14853b.set(index, element);
                        } else {
                            this.f14854c.add(element);
                            this.f14853b.add(element);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
    }
}
