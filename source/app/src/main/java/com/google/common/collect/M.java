package com.google.common.collect;

import com.google.common.collect.B2;
import com.google.common.collect.V1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.c
public final class M<E> extends AbstractC12527i<E> implements Serializable {

    public static final long f65855e = 1;

    public final transient ConcurrentMap<E, AtomicInteger> f65856d;

    public class a extends K0<E> {

        public final Set f65857b;

        public a(M m10, Set set) {
            this.f65857b = set;
        }

        @Override
        public Set<E> k0() {
            return this.f65857b;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return obj != null && C.j(this.f65857b, obj);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return u0(collection);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            return obj != null && C.k(this.f65857b, obj);
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return x0(collection);
        }
    }

    public class b extends AbstractC12503c<V1.a<E>> {

        public final Iterator<Map.Entry<E, AtomicInteger>> f65858d;

        public b() {
            this.f65858d = M.this.f65856d.entrySet().iterator();
        }

        @Override
        @CheckForNull
        public V1.a<E> a() {
            while (this.f65858d.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f65858d.next();
                int i10 = next.getValue().get();
                if (i10 != 0) {
                    return W1.k(next.getKey(), i10);
                }
            }
            return b();
        }
    }

    public class c extends AbstractC12591y0<V1.a<E>> {

        @CheckForNull
        public V1.a<E> f65860b;

        public final Iterator f65861c;

        public c(Iterator it) {
            this.f65861c = it;
        }

        @Override
        public Iterator<V1.a<E>> k0() {
            return this.f65861c;
        }

        @Override
        public V1.a<E> next() {
            V1.a<E> aVar = (V1.a) super.next();
            this.f65860b = aVar;
            return aVar;
        }

        @Override
        public void remove() {
            w2.H.h0(this.f65860b != null, "no calls to next() since the last call to remove()");
            M.this.P9(this.f65860b.getElement(), 0);
            this.f65860b = null;
        }
    }

    public class d extends AbstractC12527i<E>.b {
        public d() {
            super();
        }

        @Override
        public M<E> a() {
            return M.this;
        }

        public final List<V1.a<E>> i() {
            ArrayList v10 = M1.v(size());
            E1.a(v10, iterator());
            return v10;
        }

        @Override
        public Object[] toArray() {
            return i().toArray();
        }

        public d(M m10, a aVar) {
            this();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) i().toArray(tArr);
        }
    }

    public static class e {

        public static final B2.b<M> f65864a = B2.a(M.class, "countMap");
    }

    @v2.d
    public M(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        w2.H.u(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.f65856d = concurrentMap;
    }

    public static <E> M<E> i() {
        return new M<>(new ConcurrentHashMap());
    }

    public static <E> M<E> j(Iterable<? extends E> iterable) {
        M<E> i10 = i();
        D1.a(i10, iterable);
        return i10;
    }

    @InterfaceC15800a
    public static <E> M<E> k(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new M<>(concurrentMap);
    }

    private void l(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        e.f65864a.b(this, (ConcurrentMap) objectInputStream.readObject());
    }

    private void o(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f65856d);
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override
    @I2.a
    public int P9(E e10, int i10) {
        AtomicInteger atomicInteger;
        int i11;
        AtomicInteger atomicInteger2;
        w2.H.E(e10);
        B.b(i10, oc.c.f98682m);
        do {
            atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, e10);
            if (atomicInteger == null && (i10 == 0 || (atomicInteger = this.f65856d.putIfAbsent(e10, new AtomicInteger(i10))) == null)) {
                return 0;
            }
            do {
                i11 = atomicInteger.get();
                if (i11 == 0) {
                    if (i10 != 0) {
                        atomicInteger2 = new AtomicInteger(i10);
                        if (this.f65856d.putIfAbsent(e10, atomicInteger2) == null) {
                            break;
                        }
                    } else {
                        return 0;
                    }
                }
            } while (!atomicInteger.compareAndSet(i11, i10));
            if (i10 == 0) {
                this.f65856d.remove(e10, atomicInteger);
            }
            return i11;
        } while (!this.f65856d.replace(e10, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override
    public Set S1() {
        return super.S1();
    }

    @Override
    public Set<E> a() {
        return new a(this, this.f65856d.o());
    }

    @Override
    @Deprecated
    public Set<V1.a<E>> b() {
        return new d(this, null);
    }

    @Override
    public int c() {
        return this.f65856d.size();
    }

    @Override
    public void clear() {
        this.f65856d.clear();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override
    public Iterator<E> d() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    @I2.a
    public boolean e7(E e10, int i10, int i11) {
        w2.H.E(e10);
        B.b(i10, "oldCount");
        B.b(i11, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, e10);
        if (atomicInteger == null) {
            if (i10 != 0) {
                return false;
            }
            return i11 == 0 || this.f65856d.putIfAbsent(e10, new AtomicInteger(i11)) == null;
        }
        int i12 = atomicInteger.get();
        if (i12 == i10) {
            if (i12 == 0) {
                if (i11 == 0) {
                    this.f65856d.remove(e10, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i11);
                return this.f65856d.putIfAbsent(e10, atomicInteger2) == null || this.f65856d.replace(e10, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i12, i11)) {
                if (i11 == 0) {
                    this.f65856d.remove(e10, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public Iterator<V1.a<E>> g() {
        return new c(new b());
    }

    @Override
    public boolean isEmpty() {
        return this.f65856d.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return W1.n(this);
    }

    @I2.a
    public boolean m(@CheckForNull Object obj, int i10) {
        int i11;
        int i12;
        if (i10 == 0) {
            return true;
        }
        B.d(i10, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i11 = atomicInteger.get();
            if (i11 < i10) {
                return false;
            }
            i12 = i11 - i10;
        } while (!atomicInteger.compareAndSet(i11, i12));
        if (i12 == 0) {
            this.f65856d.remove(obj, atomicInteger);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<E> n() {
        ArrayList v10 = M1.v(size());
        for (V1.a aVar : entrySet()) {
            Object element = aVar.getElement();
            for (int count = aVar.getCount(); count > 0; count--) {
                v10.add(element);
            }
        }
        return v10;
    }

    @Override
    @I2.a
    public int pc(@CheckForNull Object obj, int i10) {
        int i11;
        int max;
        if (i10 == 0) {
            return Ad(obj);
        }
        B.d(i10, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i11 = atomicInteger.get();
            if (i11 == 0) {
                return 0;
            }
            max = Math.max(0, i11 - i10);
        } while (!atomicInteger.compareAndSet(i11, max));
        if (max == 0) {
            this.f65856d.remove(obj, atomicInteger);
        }
        return i11;
    }

    @Override
    public int size() {
        long j10 = 0;
        while (this.f65856d.values().iterator().hasNext()) {
            j10 += r0.next().get();
        }
        return com.google.common.primitives.l.x(j10);
    }

    @Override
    public Object[] toArray() {
        return n().toArray();
    }

    @Override
    @I2.a
    public int y6(E e10, int i10) {
        AtomicInteger atomicInteger;
        int i11;
        AtomicInteger atomicInteger2;
        w2.H.E(e10);
        if (i10 == 0) {
            return Ad(e10);
        }
        B.d(i10, "occurrences");
        do {
            atomicInteger = (AtomicInteger) Q1.p0(this.f65856d, e10);
            if (atomicInteger == null && (atomicInteger = this.f65856d.putIfAbsent(e10, new AtomicInteger(i10))) == null) {
                return 0;
            }
            do {
                i11 = atomicInteger.get();
                if (i11 == 0) {
                    atomicInteger2 = new AtomicInteger(i10);
                    if (this.f65856d.putIfAbsent(e10, atomicInteger2) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        StringBuilder sb2 = new StringBuilder(65);
                        sb2.append("Overflow adding ");
                        sb2.append(i10);
                        sb2.append(" occurrences to a count of ");
                        sb2.append(i11);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                }
            } while (!atomicInteger.compareAndSet(i11, E2.f.c(i11, i10)));
            return i11;
        } while (!this.f65856d.replace(e10, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) n().toArray(tArr);
    }
}
