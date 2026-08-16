package Mc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.AbstractList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;

public class b<T> extends AbstractList<T> implements RandomAccess {

    public final List<T> f14856b;

    public final Set<T> f14857c;

    public b() {
        this.f14856b = new SteppedArrayList();
        this.f14857c = new HashSet();
    }

    public List<T> a() {
        return this.f14856b;
    }

    @Override
    public boolean add(T t10) {
        if (t10 != null) {
            if (this.f14857c.contains(t10)) {
                return false;
            }
            this.f14857c.add(t10);
            if (this.f14856b.add(t10)) {
                return true;
            }
            this.f14857c.remove(t10);
            return false;
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
        this.f14856b.clear();
        this.f14857c.clear();
    }

    @Override
    public boolean contains(Object o10) {
        if (o10 != null) {
            return this.f14857c.contains(o10);
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
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
        return this.f14856b.get(i10);
    }

    @Override
    public int indexOf(Object o10) {
        if (o10 == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        if (this.f14857c.contains(o10)) {
            return this.f14856b.indexOf(o10);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.f14856b.isEmpty();
    }

    @Override
    public int lastIndexOf(Object o10) {
        if (o10 == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        if (this.f14857c.contains(o10)) {
            return this.f14856b.lastIndexOf(o10);
        }
        return -1;
    }

    @Override
    public T remove(int index) {
        T remove = this.f14856b.remove(index);
        if (remove != null) {
            this.f14857c.remove(remove);
        }
        return remove;
    }

    @Override
    public T set(int index, T element) {
        if (element == null) {
            throw new NullPointerException("HashSetArrayList doesn't support null elements");
        }
        this.f14857c.remove(this.f14856b.get(index));
        this.f14857c.add(element);
        return this.f14856b.set(index, element);
    }

    @Override
    public int size() {
        return this.f14856b.size();
    }

    @Override
    public boolean addAll(int index, Collection<? extends T> c10) {
        Iterator<? extends T> it = c10.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    @Override
    public boolean remove(Object element) {
        if (element != null) {
            if (!this.f14857c.contains(element)) {
                return false;
            }
            this.f14857c.remove(element);
            this.f14856b.remove(element);
            return true;
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
    }

    public b(int capacity) {
        this.f14856b = new SteppedArrayList(capacity);
        this.f14857c = new HashSet(capacity);
    }

    @Override
    public void add(int index, T element) {
        if (element != null) {
            if (this.f14857c.contains(element)) {
                return;
            }
            if (index < this.f14856b.size()) {
                this.f14857c.remove(this.f14856b.get(index));
                this.f14857c.add(element);
                this.f14856b.set(index, element);
                return;
            }
            this.f14857c.add(element);
            this.f14856b.add(element);
            return;
        }
        throw new NullPointerException("HashSetArrayList doesn't support null elements");
    }
}
