package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H0;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;

public abstract class AbstractC6094Vn<T extends com.android.tools.r8.graph.H0> implements Collection<T> {

    public static final boolean f45164c = true;

    public Map f45165b;

    public AbstractC6094Vn() {
        this.f45165b = a();
    }

    public abstract Map a();

    @Override
    public boolean add(T t10) {
        return ((com.android.tools.r8.graph.H0) this.f45165b.put((com.android.tools.r8.graph.A2) t10.getReference(), t10)) == null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= add((AbstractC6094Vn<T>) it.next());
        }
        return z10;
    }

    public final boolean b(com.android.tools.r8.graph.H0 h02) {
        return this.f45165b.containsKey(h02.getReference());
    }

    @Override
    public final void clear() {
        this.f45165b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof com.android.tools.r8.graph.H0)) {
            return false;
        }
        return this.f45165b.containsKey(((com.android.tools.r8.graph.H0) obj).getReference());
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return AbstractC9907vK.a(collection, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return AbstractC6094Vn.this.contains(obj);
            }
        });
    }

    @Override
    public final boolean isEmpty() {
        return this.f45165b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f45165b.values().iterator();
    }

    public abstract Map j(int i10);

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof com.android.tools.r8.graph.H0) {
            if (((com.android.tools.r8.graph.H0) this.f45165b.remove(((com.android.tools.r8.graph.H0) obj).getReference())) != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= remove(it.next());
        }
        return z10;
    }

    @Override
    public boolean removeIf(Predicate<? super T> predicate) {
        return this.f45165b.values().removeIf(predicate);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        return this.f45165b.values().retainAll(collection);
    }

    @Override
    public final int size() {
        return this.f45165b.size();
    }

    @Override
    public Stream<T> stream() {
        return this.f45165b.values().stream();
    }

    @Override
    public final Object[] toArray() {
        return this.f45165b.values().toArray();
    }

    public boolean a(C4516j1 c4516j1) {
        return ((com.android.tools.r8.graph.H0) this.f45165b.remove(c4516j1.getReference())) != null;
    }

    public final Set b(IntFunction intFunction) {
        final Set set = (Set) intFunction.apply(this.f45165b.size());
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((com.android.tools.r8.graph.H0) obj).getReference());
            }
        });
        return set;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f45165b.values().toArray(objArr);
    }

    public AbstractC6094Vn(int i10) {
        this.f45165b = j(i10);
    }

    public final Set a(IntFunction intFunction) {
        final Set set = (Set) intFunction.apply(this.f45165b.size());
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((com.android.tools.r8.graph.H0) obj).d());
            }
        });
        return set;
    }

    public Set<C4516j1> b() {
        if (f45164c || (this.f45165b instanceof IdentityHashMap)) {
            return a(new EZ0());
        }
        throw new AssertionError();
    }
}
