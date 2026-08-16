package com.google.common.cache;

import com.google.common.cache.CacheLoader;
import com.google.common.cache.a;
import com.google.common.cache.d;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12539l;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import com.google.common.collect.E1;
import com.google.common.collect.Q1;
import com.google.common.util.concurrent.C12612g0;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.H0;
import com.google.common.util.concurrent.Q;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Z;
import com.google.common.util.concurrent.r0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import w2.AbstractC15896m;
import w2.InterfaceC15902t;
import w2.O;
import w2.U;

@v2.b(emulated = true)
public class k<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    public static final int f65436A = 63;

    public static final int f65437B = 16;

    public static final Logger f65438C = Logger.getLogger(k.class.getName());

    public static final A<Object, Object> f65439D = new C12456a();

    public static final Queue<?> f65440E = new C12457b();

    public static final int f65441x = 1073741824;

    public static final int f65442y = 65536;

    public static final int f65443z = 3;

    public final int f65444b;

    public final int f65445c;

    public final r<K, V>[] f65446d;

    public final int f65447e;

    public final AbstractC15896m<Object> f65448f;

    public final AbstractC15896m<Object> f65449g;

    public final t f65450h;

    public final t f65451i;

    public final long f65452j;

    public final com.google.common.cache.x<K, V> f65453k;

    public final long f65454l;

    public final long f65455m;

    public final long f65456n;

    public final Queue<com.google.common.cache.v<K, V>> f65457o;

    public final com.google.common.cache.r<K, V> f65458p;

    public final U f65459q;

    public final EnumC12461f f65460r;

    public final a.b f65461s;

    @CheckForNull
    public final CacheLoader<? super K, V> f65462t;

    @q3.h
    @CheckForNull
    public Set<K> f65463u;

    @q3.h
    @CheckForNull
    public Collection<V> f65464v;

    @q3.h
    @CheckForNull
    public Set<Map.Entry<K, V>> f65465w;

    public interface A<K, V> {
        @CheckForNull
        com.google.common.cache.p<K, V> a();

        void b(@CheckForNull V v10);

        V c() throws ExecutionException;

        boolean d();

        A<K, V> e(ReferenceQueue<V> referenceQueue, @CheckForNull V v10, com.google.common.cache.p<K, V> pVar);

        @CheckForNull
        V get();

        int getWeight();

        boolean isActive();
    }

    public final class B extends AbstractCollection<V> {
        public B() {
        }

        @Override
        public void clear() {
            k.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return k.this.containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return k.this.isEmpty();
        }

        @Override
        public Iterator<V> iterator() {
            return new z(k.this);
        }

        @Override
        public int size() {
            return k.this.size();
        }

        @Override
        public Object[] toArray() {
            return k.U(this).toArray();
        }

        @Override
        public <E> E[] toArray(E[] eArr) {
            return (E[]) k.U(this).toArray(eArr);
        }
    }

    public static final class C<K, V> extends E<K, V> {

        public volatile long f65467e;

        @q3.i
        public com.google.common.cache.p<K, V> f65468f;

        @q3.i
        public com.google.common.cache.p<K, V> f65469g;

        public C(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(referenceQueue, k10, i10, pVar);
            this.f65467e = Long.MAX_VALUE;
            this.f65468f = k.F();
            this.f65469g = k.F();
        }

        @Override
        public void c(com.google.common.cache.p<K, V> pVar) {
            this.f65469g = pVar;
        }

        @Override
        public void h(long j10) {
            this.f65467e = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> j() {
            return this.f65469g;
        }

        @Override
        public com.google.common.cache.p<K, V> o() {
            return this.f65468f;
        }

        @Override
        public long q() {
            return this.f65467e;
        }

        @Override
        public void r(com.google.common.cache.p<K, V> pVar) {
            this.f65468f = pVar;
        }
    }

    public static final class D<K, V> extends E<K, V> {

        public volatile long f65470e;

        @q3.i
        public com.google.common.cache.p<K, V> f65471f;

        @q3.i
        public com.google.common.cache.p<K, V> f65472g;

        public volatile long f65473h;

        @q3.i
        public com.google.common.cache.p<K, V> f65474i;

        @q3.i
        public com.google.common.cache.p<K, V> f65475j;

        public D(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(referenceQueue, k10, i10, pVar);
            this.f65470e = Long.MAX_VALUE;
            this.f65471f = k.F();
            this.f65472g = k.F();
            this.f65473h = Long.MAX_VALUE;
            this.f65474i = k.F();
            this.f65475j = k.F();
        }

        @Override
        public void c(com.google.common.cache.p<K, V> pVar) {
            this.f65472g = pVar;
        }

        @Override
        public com.google.common.cache.p<K, V> d() {
            return this.f65475j;
        }

        @Override
        public long g() {
            return this.f65473h;
        }

        @Override
        public void h(long j10) {
            this.f65470e = j10;
        }

        @Override
        public void i(long j10) {
            this.f65473h = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> j() {
            return this.f65472g;
        }

        @Override
        public com.google.common.cache.p<K, V> k() {
            return this.f65474i;
        }

        @Override
        public com.google.common.cache.p<K, V> o() {
            return this.f65471f;
        }

        @Override
        public long q() {
            return this.f65470e;
        }

        @Override
        public void r(com.google.common.cache.p<K, V> pVar) {
            this.f65471f = pVar;
        }

        @Override
        public void s(com.google.common.cache.p<K, V> pVar) {
            this.f65474i = pVar;
        }

        @Override
        public void u(com.google.common.cache.p<K, V> pVar) {
            this.f65475j = pVar;
        }
    }

    public static class E<K, V> extends WeakReference<K> implements com.google.common.cache.p<K, V> {

        public final int f65476b;

        @CheckForNull
        public final com.google.common.cache.p<K, V> f65477c;

        public volatile A<K, V> f65478d;

        public E(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(k10, referenceQueue);
            this.f65478d = k.V();
            this.f65476b = i10;
            this.f65477c = pVar;
        }

        @Override
        public A<K, V> a() {
            return this.f65478d;
        }

        @Override
        public int b() {
            return this.f65476b;
        }

        public void c(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.p<K, V> d() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void e(A<K, V> a10) {
            this.f65478d = a10;
        }

        public long g() {
            throw new UnsupportedOperationException();
        }

        @Override
        public K getKey() {
            return get();
        }

        @Override
        public com.google.common.cache.p<K, V> getNext() {
            return this.f65477c;
        }

        public void h(long j10) {
            throw new UnsupportedOperationException();
        }

        public void i(long j10) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.p<K, V> j() {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.p<K, V> k() {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.p<K, V> o() {
            throw new UnsupportedOperationException();
        }

        public long q() {
            throw new UnsupportedOperationException();
        }

        public void r(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public void s(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public void u(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }
    }

    public static class F<K, V> extends WeakReference<V> implements A<K, V> {

        public final com.google.common.cache.p<K, V> f65479b;

        public F(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            super(v10, referenceQueue);
            this.f65479b = pVar;
        }

        @Override
        public com.google.common.cache.p<K, V> a() {
            return this.f65479b;
        }

        @Override
        public void b(V v10) {
        }

        @Override
        public V c() {
            return get();
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public A<K, V> e(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            return new F(referenceQueue, v10, pVar);
        }

        @Override
        public int getWeight() {
            return 1;
        }

        @Override
        public boolean isActive() {
            return true;
        }
    }

    public static final class G<K, V> extends E<K, V> {

        public volatile long f65480e;

        @q3.i
        public com.google.common.cache.p<K, V> f65481f;

        @q3.i
        public com.google.common.cache.p<K, V> f65482g;

        public G(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(referenceQueue, k10, i10, pVar);
            this.f65480e = Long.MAX_VALUE;
            this.f65481f = k.F();
            this.f65482g = k.F();
        }

        @Override
        public com.google.common.cache.p<K, V> d() {
            return this.f65482g;
        }

        @Override
        public long g() {
            return this.f65480e;
        }

        @Override
        public void i(long j10) {
            this.f65480e = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> k() {
            return this.f65481f;
        }

        @Override
        public void s(com.google.common.cache.p<K, V> pVar) {
            this.f65481f = pVar;
        }

        @Override
        public void u(com.google.common.cache.p<K, V> pVar) {
            this.f65482g = pVar;
        }
    }

    public static final class H<K, V> extends s<K, V> {

        public final int f65483c;

        public H(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar, int i10) {
            super(referenceQueue, v10, pVar);
            this.f65483c = i10;
        }

        @Override
        public A<K, V> e(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            return new H(referenceQueue, v10, pVar, this.f65483c);
        }

        @Override
        public int getWeight() {
            return this.f65483c;
        }
    }

    public static final class I<K, V> extends x<K, V> {

        public final int f65484c;

        public I(V v10, int i10) {
            super(v10);
            this.f65484c = i10;
        }

        @Override
        public int getWeight() {
            return this.f65484c;
        }
    }

    public static final class J<K, V> extends F<K, V> {

        public final int f65485c;

        public J(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar, int i10) {
            super(referenceQueue, v10, pVar);
            this.f65485c = i10;
        }

        @Override
        public A<K, V> e(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            return new J(referenceQueue, v10, pVar, this.f65485c);
        }

        @Override
        public int getWeight() {
            return this.f65485c;
        }
    }

    public static final class K<K, V> extends AbstractQueue<com.google.common.cache.p<K, V>> {

        public final com.google.common.cache.p<K, V> f65486b = new a(this);

        public class a extends AbstractC12459d<K, V> {

            @q3.i
            public com.google.common.cache.p<K, V> f65487b = this;

            @q3.i
            public com.google.common.cache.p<K, V> f65488c = this;

            public a(K k10) {
            }

            @Override
            public com.google.common.cache.p<K, V> d() {
                return this.f65488c;
            }

            @Override
            public long g() {
                return Long.MAX_VALUE;
            }

            @Override
            public void i(long j10) {
            }

            @Override
            public com.google.common.cache.p<K, V> k() {
                return this.f65487b;
            }

            @Override
            public void s(com.google.common.cache.p<K, V> pVar) {
                this.f65487b = pVar;
            }

            @Override
            public void u(com.google.common.cache.p<K, V> pVar) {
                this.f65488c = pVar;
            }
        }

        public class b extends AbstractC12539l<com.google.common.cache.p<K, V>> {
            public b(com.google.common.cache.p pVar) {
                super(pVar);
            }

            @Override
            public com.google.common.cache.p<K, V> a(com.google.common.cache.p<K, V> pVar) {
                com.google.common.cache.p<K, V> k10 = pVar.k();
                if (k10 == K.this.f65486b) {
                    return null;
                }
                return k10;
            }
        }

        @Override
        public boolean offer(com.google.common.cache.p<K, V> pVar) {
            k.g(pVar.d(), pVar.k());
            k.g(this.f65486b.d(), pVar);
            k.g(pVar, this.f65486b);
            return true;
        }

        @Override
        public com.google.common.cache.p<K, V> peek() {
            com.google.common.cache.p<K, V> k10 = this.f65486b.k();
            if (k10 == this.f65486b) {
                return null;
            }
            return k10;
        }

        @Override
        public com.google.common.cache.p<K, V> poll() {
            com.google.common.cache.p<K, V> k10 = this.f65486b.k();
            if (k10 == this.f65486b) {
                return null;
            }
            remove(k10);
            return k10;
        }

        @Override
        public void clear() {
            com.google.common.cache.p<K, V> k10 = this.f65486b.k();
            while (true) {
                com.google.common.cache.p<K, V> pVar = this.f65486b;
                if (k10 == pVar) {
                    pVar.s(pVar);
                    com.google.common.cache.p<K, V> pVar2 = this.f65486b;
                    pVar2.u(pVar2);
                    return;
                } else {
                    com.google.common.cache.p<K, V> k11 = k10.k();
                    k.I(k10);
                    k10 = k11;
                }
            }
        }

        @Override
        public boolean contains(Object obj) {
            return ((com.google.common.cache.p) obj).k() != q.INSTANCE;
        }

        @Override
        public boolean isEmpty() {
            return this.f65486b.k() == this.f65486b;
        }

        @Override
        public Iterator<com.google.common.cache.p<K, V>> iterator() {
            return new b(peek());
        }

        @Override
        public boolean remove(Object obj) {
            com.google.common.cache.p pVar = (com.google.common.cache.p) obj;
            com.google.common.cache.p<K, V> d10 = pVar.d();
            com.google.common.cache.p<K, V> k10 = pVar.k();
            k.g(d10, k10);
            k.I(pVar);
            return k10 != q.INSTANCE;
        }

        @Override
        public int size() {
            int i10 = 0;
            for (com.google.common.cache.p<K, V> k10 = this.f65486b.k(); k10 != this.f65486b; k10 = k10.k()) {
                i10++;
            }
            return i10;
        }
    }

    public final class L implements Map.Entry<K, V> {

        public final K f65490b;

        public V f65491c;

        public L(K k10, V v10) {
            this.f65490b = k10;
            this.f65491c = v10;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f65490b.equals(entry.getKey()) && this.f65491c.equals(entry.getValue());
        }

        @Override
        public K getKey() {
            return this.f65490b;
        }

        @Override
        public V getValue() {
            return this.f65491c;
        }

        @Override
        public int hashCode() {
            return this.f65490b.hashCode() ^ this.f65491c.hashCode();
        }

        @Override
        public V setValue(V v10) {
            V v11 = (V) k.this.put(this.f65490b, v10);
            this.f65491c = v10;
            return v11;
        }

        public String toString() {
            String valueOf = String.valueOf(getKey());
            String valueOf2 = String.valueOf(getValue());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append("=");
            sb2.append(valueOf2);
            return sb2.toString();
        }
    }

    public class C12456a implements A<Object, Object> {
        @Override
        public com.google.common.cache.p<Object, Object> a() {
            return null;
        }

        @Override
        public void b(Object obj) {
        }

        @Override
        public Object c() {
            return null;
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public A<Object, Object> e(ReferenceQueue<Object> referenceQueue, @CheckForNull Object obj, com.google.common.cache.p<Object, Object> pVar) {
            return this;
        }

        @Override
        public Object get() {
            return null;
        }

        @Override
        public int getWeight() {
            return 0;
        }

        @Override
        public boolean isActive() {
            return false;
        }
    }

    public class C12457b extends AbstractQueue<Object> {
        @Override
        public Iterator<Object> iterator() {
            return AbstractC12564r1.z().iterator();
        }

        @Override
        public boolean offer(Object obj) {
            return true;
        }

        @Override
        public Object peek() {
            return null;
        }

        @Override
        public Object poll() {
            return null;
        }

        @Override
        public int size() {
            return 0;
        }
    }

    public abstract class AbstractC12458c<T> extends AbstractSet<T> {
        public AbstractC12458c() {
        }

        @Override
        public void clear() {
            k.this.clear();
        }

        @Override
        public boolean isEmpty() {
            return k.this.isEmpty();
        }

        @Override
        public int size() {
            return k.this.size();
        }

        @Override
        public Object[] toArray() {
            return k.U(this).toArray();
        }

        @Override
        public <E> E[] toArray(E[] eArr) {
            return (E[]) k.U(this).toArray(eArr);
        }
    }

    public static abstract class AbstractC12459d<K, V> implements com.google.common.cache.p<K, V> {
        @Override
        public A<K, V> a() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int b() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void c(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public com.google.common.cache.p<K, V> d() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void e(A<K, V> a10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long g() {
            throw new UnsupportedOperationException();
        }

        @Override
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override
        public com.google.common.cache.p<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void h(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void i(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public com.google.common.cache.p<K, V> j() {
            throw new UnsupportedOperationException();
        }

        @Override
        public com.google.common.cache.p<K, V> k() {
            throw new UnsupportedOperationException();
        }

        @Override
        public com.google.common.cache.p<K, V> o() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long q() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void r(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void s(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void u(com.google.common.cache.p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }
    }

    public static final class C12460e<K, V> extends AbstractQueue<com.google.common.cache.p<K, V>> {

        public final com.google.common.cache.p<K, V> f65494b = new a(this);

        public class a extends AbstractC12459d<K, V> {

            @q3.i
            public com.google.common.cache.p<K, V> f65495b = this;

            @q3.i
            public com.google.common.cache.p<K, V> f65496c = this;

            public a(C12460e c12460e) {
            }

            @Override
            public void c(com.google.common.cache.p<K, V> pVar) {
                this.f65496c = pVar;
            }

            @Override
            public void h(long j10) {
            }

            @Override
            public com.google.common.cache.p<K, V> j() {
                return this.f65496c;
            }

            @Override
            public com.google.common.cache.p<K, V> o() {
                return this.f65495b;
            }

            @Override
            public long q() {
                return Long.MAX_VALUE;
            }

            @Override
            public void r(com.google.common.cache.p<K, V> pVar) {
                this.f65495b = pVar;
            }
        }

        public class b extends AbstractC12539l<com.google.common.cache.p<K, V>> {
            public b(com.google.common.cache.p pVar) {
                super(pVar);
            }

            @Override
            public com.google.common.cache.p<K, V> a(com.google.common.cache.p<K, V> pVar) {
                com.google.common.cache.p<K, V> o10 = pVar.o();
                if (o10 == C12460e.this.f65494b) {
                    return null;
                }
                return o10;
            }
        }

        @Override
        public boolean offer(com.google.common.cache.p<K, V> pVar) {
            k.f(pVar.j(), pVar.o());
            k.f(this.f65494b.j(), pVar);
            k.f(pVar, this.f65494b);
            return true;
        }

        @Override
        public com.google.common.cache.p<K, V> peek() {
            com.google.common.cache.p<K, V> o10 = this.f65494b.o();
            if (o10 == this.f65494b) {
                return null;
            }
            return o10;
        }

        @Override
        public com.google.common.cache.p<K, V> poll() {
            com.google.common.cache.p<K, V> o10 = this.f65494b.o();
            if (o10 == this.f65494b) {
                return null;
            }
            remove(o10);
            return o10;
        }

        @Override
        public void clear() {
            com.google.common.cache.p<K, V> o10 = this.f65494b.o();
            while (true) {
                com.google.common.cache.p<K, V> pVar = this.f65494b;
                if (o10 == pVar) {
                    pVar.r(pVar);
                    com.google.common.cache.p<K, V> pVar2 = this.f65494b;
                    pVar2.c(pVar2);
                    return;
                } else {
                    com.google.common.cache.p<K, V> o11 = o10.o();
                    k.H(o10);
                    o10 = o11;
                }
            }
        }

        @Override
        public boolean contains(Object obj) {
            return ((com.google.common.cache.p) obj).o() != q.INSTANCE;
        }

        @Override
        public boolean isEmpty() {
            return this.f65494b.o() == this.f65494b;
        }

        @Override
        public Iterator<com.google.common.cache.p<K, V>> iterator() {
            return new b(peek());
        }

        @Override
        public boolean remove(Object obj) {
            com.google.common.cache.p pVar = (com.google.common.cache.p) obj;
            com.google.common.cache.p<K, V> j10 = pVar.j();
            com.google.common.cache.p<K, V> o10 = pVar.o();
            k.f(j10, o10);
            k.H(pVar);
            return o10 != q.INSTANCE;
        }

        @Override
        public int size() {
            int i10 = 0;
            for (com.google.common.cache.p<K, V> o10 = this.f65494b.o(); o10 != this.f65494b; o10 = o10.o()) {
                i10++;
            }
            return i10;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class EnumC12461f {
        private static final EnumC12461f[] $VALUES;
        static final int ACCESS_MASK = 1;
        public static final EnumC12461f STRONG;
        public static final EnumC12461f STRONG_ACCESS;
        public static final EnumC12461f STRONG_ACCESS_WRITE;
        public static final EnumC12461f STRONG_WRITE;
        public static final EnumC12461f WEAK;
        public static final EnumC12461f WEAK_ACCESS;
        public static final EnumC12461f WEAK_ACCESS_WRITE;
        static final int WEAK_MASK = 4;
        public static final EnumC12461f WEAK_WRITE;
        static final int WRITE_MASK = 2;
        static final EnumC12461f[] factories;

        public enum a extends EnumC12461f {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new w(k10, i10, pVar);
            }
        }

        public enum b extends EnumC12461f {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                b(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new u(k10, i10, pVar);
            }
        }

        public enum c extends EnumC12461f {
            public c(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                d(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new y(k10, i10, pVar);
            }
        }

        public enum d extends EnumC12461f {
            public d(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                b(pVar, c10);
                d(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new v(k10, i10, pVar);
            }
        }

        public enum e extends EnumC12461f {
            public e(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new E(rVar.f65539i, k10, i10, pVar);
            }
        }

        public enum C0979f extends EnumC12461f {
            public C0979f(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                b(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new C(rVar.f65539i, k10, i10, pVar);
            }
        }

        public enum g extends EnumC12461f {
            public g(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                d(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new G(rVar.f65539i, k10, i10, pVar);
            }
        }

        public enum h extends EnumC12461f {
            public h(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
                com.google.common.cache.p<K, V> c10 = super.c(rVar, pVar, pVar2);
                b(pVar, c10);
                d(pVar, c10);
                return c10;
            }

            @Override
            public <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
                return new D(rVar.f65539i, k10, i10, pVar);
            }
        }

        static {
            a aVar = new a("STRONG", 0);
            STRONG = aVar;
            b bVar = new b("STRONG_ACCESS", 1);
            STRONG_ACCESS = bVar;
            c cVar = new c("STRONG_WRITE", 2);
            STRONG_WRITE = cVar;
            d dVar = new d("STRONG_ACCESS_WRITE", 3);
            STRONG_ACCESS_WRITE = dVar;
            e eVar = new e("WEAK", 4);
            WEAK = eVar;
            C0979f c0979f = new C0979f("WEAK_ACCESS", 5);
            WEAK_ACCESS = c0979f;
            g gVar = new g("WEAK_WRITE", 6);
            WEAK_WRITE = gVar;
            h hVar = new h("WEAK_ACCESS_WRITE", 7);
            WEAK_ACCESS_WRITE = hVar;
            $VALUES = a();
            factories = new EnumC12461f[]{aVar, bVar, cVar, dVar, eVar, c0979f, gVar, hVar};
        }

        public EnumC12461f(String str, int i10) {
        }

        public static EnumC12461f[] a() {
            return new EnumC12461f[]{STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, WEAK_ACCESS_WRITE};
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumC12461f e(t tVar, boolean z10, boolean z11) {
            return factories[(tVar == t.WEAK ? (char) 4 : (char) 0) | (z10 ? 1 : 0) | (z11 ? 2 : 0)];
        }

        public static EnumC12461f valueOf(String str) {
            return (EnumC12461f) Enum.valueOf(EnumC12461f.class, str);
        }

        public static EnumC12461f[] values() {
            return (EnumC12461f[]) $VALUES.clone();
        }

        public <K, V> void b(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
            pVar2.h(pVar.q());
            k.f(pVar.j(), pVar2);
            k.f(pVar2, pVar.o());
            k.H(pVar);
        }

        public <K, V> com.google.common.cache.p<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
            return g(rVar, pVar.getKey(), pVar.b(), pVar2);
        }

        public <K, V> void d(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
            pVar2.i(pVar.g());
            k.g(pVar.d(), pVar2);
            k.g(pVar2, pVar.k());
            k.I(pVar);
        }

        public abstract <K, V> com.google.common.cache.p<K, V> g(r<K, V> rVar, K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar);

        public EnumC12461f(String str, int i10, C12456a c12456a) {
            this(str, i10);
        }
    }

    public final class C12462g extends k<K, V>.AbstractC12464i<Map.Entry<K, V>> {
        public C12462g(k kVar) {
            super();
        }

        @Override
        public Map.Entry<K, V> next() {
            return d();
        }
    }

    public final class C12463h extends k<K, V>.AbstractC12458c<Map.Entry<K, V>> {
        public C12463h() {
            super();
        }

        @Override
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = k.this.get(key)) != null && k.this.f65449g.d(entry.getValue(), obj2);
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C12462g(k.this);
        }

        @Override
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && k.this.remove(key, entry.getValue());
        }
    }

    public abstract class AbstractC12464i<T> implements Iterator<T> {

        public int f65499b;

        public int f65500c = -1;

        @CheckForNull
        public r<K, V> f65501d;

        @CheckForNull
        public AtomicReferenceArray<com.google.common.cache.p<K, V>> f65502e;

        @CheckForNull
        public com.google.common.cache.p<K, V> f65503f;

        @CheckForNull
        public k<K, V>.L f65504g;

        @CheckForNull
        public k<K, V>.L f65505h;

        public AbstractC12464i() {
            this.f65499b = k.this.f65446d.length - 1;
            a();
        }

        public final void a() {
            this.f65504g = null;
            if (e() || f()) {
                return;
            }
            while (true) {
                int i10 = this.f65499b;
                if (i10 < 0) {
                    return;
                }
                r<K, V>[] rVarArr = k.this.f65446d;
                this.f65499b = i10 - 1;
                r<K, V> rVar = rVarArr[i10];
                this.f65501d = rVar;
                if (rVar.f65533c != 0) {
                    this.f65502e = this.f65501d.f65537g;
                    this.f65500c = r0.length() - 1;
                    if (f()) {
                        return;
                    }
                }
            }
        }

        public boolean b(com.google.common.cache.p<K, V> pVar) {
            try {
                long a10 = k.this.f65459q.a();
                K key = pVar.getKey();
                Object u10 = k.this.u(pVar, a10);
                if (u10 == null) {
                    this.f65501d.G();
                    return false;
                }
                this.f65504g = new L(key, u10);
                this.f65501d.G();
                return true;
            } catch (Throwable th2) {
                this.f65501d.G();
                throw th2;
            }
        }

        public k<K, V>.L d() {
            k<K, V>.L l10 = this.f65504g;
            if (l10 == null) {
                throw new NoSuchElementException();
            }
            this.f65505h = l10;
            a();
            return this.f65505h;
        }

        public boolean e() {
            com.google.common.cache.p<K, V> pVar = this.f65503f;
            if (pVar == null) {
                return false;
            }
            while (true) {
                this.f65503f = pVar.getNext();
                com.google.common.cache.p<K, V> pVar2 = this.f65503f;
                if (pVar2 == null) {
                    return false;
                }
                if (b(pVar2)) {
                    return true;
                }
                pVar = this.f65503f;
            }
        }

        public boolean f() {
            while (true) {
                int i10 = this.f65500c;
                if (i10 < 0) {
                    return false;
                }
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65502e;
                this.f65500c = i10 - 1;
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(i10);
                this.f65503f = pVar;
                if (pVar != null && (b(pVar) || e())) {
                    return true;
                }
            }
        }

        @Override
        public boolean hasNext() {
            return this.f65504g != null;
        }

        @Override
        public abstract T next();

        @Override
        public void remove() {
            w2.H.g0(this.f65505h != null);
            k.this.remove(this.f65505h.getKey());
            this.f65505h = null;
        }
    }

    public final class C12465j extends k<K, V>.AbstractC12464i<K> {
        public C12465j(k kVar) {
            super();
        }

        @Override
        public K next() {
            return d().getKey();
        }
    }

    public final class C0980k extends k<K, V>.AbstractC12458c<K> {
        public C0980k() {
            super();
        }

        @Override
        public boolean contains(Object obj) {
            return k.this.containsKey(obj);
        }

        @Override
        public Iterator<K> iterator() {
            return new C12465j(k.this);
        }

        @Override
        public boolean remove(Object obj) {
            return k.this.remove(obj) != null;
        }
    }

    public static final class C12466l<K, V> extends p<K, V> implements j<K, V>, Serializable {

        public static final long f65508q = 1;

        @CheckForNull
        public transient j<K, V> f65509p;

        public C12466l(k<K, V> kVar) {
            super(kVar);
        }

        private Object p0() {
            return this.f65509p;
        }

        @Override
        public AbstractC12529i1<K, V> V(Iterable<? extends K> iterable) throws ExecutionException {
            return this.f65509p.V(iterable);
        }

        @Override
        public final V apply(K k10) {
            return this.f65509p.apply(k10);
        }

        @Override
        public void f0(K k10) {
            this.f65509p.f0(k10);
        }

        @Override
        public V get(K k10) throws ExecutionException {
            return this.f65509p.get(k10);
        }

        @Override
        public V h(K k10) {
            return this.f65509p.h(k10);
        }

        public final void o0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f65509p = (j<K, V>) q0().b(this.f65530m);
        }
    }

    public static class m<K, V> implements A<K, V> {

        public volatile A<K, V> f65510b;

        public final r0<V> f65511c;

        public final O f65512d;

        public class a implements InterfaceC15902t<V, V> {
            public a() {
            }

            @Override
            public V apply(V v10) {
                m.this.j(v10);
                return v10;
            }
        }

        public m() {
            this(k.V());
        }

        @Override
        public com.google.common.cache.p<K, V> a() {
            return null;
        }

        @Override
        public void b(@CheckForNull V v10) {
            if (v10 != null) {
                j(v10);
            } else {
                this.f65510b = k.V();
            }
        }

        @Override
        public V c() throws ExecutionException {
            return (V) H0.f(this.f65511c);
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public A<K, V> e(ReferenceQueue<V> referenceQueue, @CheckForNull V v10, com.google.common.cache.p<K, V> pVar) {
            return this;
        }

        public long f() {
            return this.f65512d.g(TimeUnit.NANOSECONDS);
        }

        public final Z<V> g(Throwable th2) {
            return Q.l(th2);
        }

        @Override
        public V get() {
            return this.f65510b.get();
        }

        @Override
        public int getWeight() {
            return this.f65510b.getWeight();
        }

        public A<K, V> h() {
            return this.f65510b;
        }

        public Z<V> i(K k10, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.f65512d.k();
                V v10 = this.f65510b.get();
                if (v10 == null) {
                    V d10 = cacheLoader.d(k10);
                    return j(d10) ? this.f65511c : Q.m(d10);
                }
                Z<V> f10 = cacheLoader.f(k10, v10);
                return f10 == null ? Q.m(null) : Q.x(f10, new a(), C12612g0.c());
            } catch (Throwable th2) {
                Z<V> g10 = k(th2) ? this.f65511c : g(th2);
                if (th2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return g10;
            }
        }

        @Override
        public boolean isActive() {
            return this.f65510b.isActive();
        }

        public boolean j(@CheckForNull V v10) {
            return this.f65511c.C(v10);
        }

        public boolean k(Throwable th2) {
            return this.f65511c.D(th2);
        }

        public m(A<K, V> a10) {
            this.f65511c = r0.G();
            this.f65512d = O.e();
            this.f65510b = a10;
        }
    }

    public static class n<K, V> extends o<K, V> implements j<K, V> {

        public static final long f65514d = 1;

        public n(d<? super K, ? super V> dVar, CacheLoader<? super K, V> cacheLoader) {
            super(new k(dVar, (CacheLoader) w2.H.E(cacheLoader)), null);
        }

        @Override
        public AbstractC12529i1<K, V> V(Iterable<? extends K> iterable) throws ExecutionException {
            return this.f65516b.q(iterable);
        }

        @Override
        public Object a() {
            return new C12466l(this.f65516b);
        }

        @Override
        public final V apply(K k10) {
            return h(k10);
        }

        @Override
        public void f0(K k10) {
            this.f65516b.P(k10);
        }

        @Override
        public V get(K k10) throws ExecutionException {
            return this.f65516b.v(k10);
        }

        @Override
        public V h(K k10) {
            try {
                return get(k10);
            } catch (ExecutionException e10) {
                throw new UncheckedExecutionException(e10.getCause());
            }
        }
    }

    public static class o<K, V> implements c<K, V>, Serializable {

        public static final long f65515c = 1;

        public final k<K, V> f65516b;

        public class a extends CacheLoader<Object, V> {

            public final Callable f65517b;

            public a(o oVar, Callable callable) {
                this.f65517b = callable;
            }

            @Override
            public V d(Object obj) throws Exception {
                return (V) this.f65517b.call();
            }
        }

        public o(k kVar, C12456a c12456a) {
            this(kVar);
        }

        @Override
        public AbstractC12529i1<K, V> R(Iterable<?> iterable) {
            return this.f65516b.r(iterable);
        }

        public Object a() {
            return new p(this.f65516b);
        }

        @Override
        public void b0(Object obj) {
            w2.H.E(obj);
            this.f65516b.remove(obj);
        }

        @Override
        public void cleanUp() {
            this.f65516b.e();
        }

        @Override
        public void j0() {
            this.f65516b.clear();
        }

        @Override
        public ConcurrentMap<K, V> k() {
            return this.f65516b;
        }

        @Override
        public V m(K k10, Callable<? extends V> callable) throws ExecutionException {
            w2.H.E(callable);
            return this.f65516b.p(k10, new a(this, callable));
        }

        @Override
        public void put(K k10, V v10) {
            this.f65516b.put(k10, v10);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f65516b.putAll(map);
        }

        @Override
        @CheckForNull
        public V r(Object obj) {
            return this.f65516b.t(obj);
        }

        @Override
        public void s(Iterable<?> iterable) {
            this.f65516b.x(iterable);
        }

        @Override
        public long size() {
            return this.f65516b.B();
        }

        @Override
        public f stats() {
            a.C0976a c0976a = new a.C0976a();
            c0976a.g(this.f65516b.f65461s);
            for (r<K, V> rVar : this.f65516b.f65446d) {
                c0976a.g(rVar.f65545o);
            }
            return c0976a.f();
        }

        public o(d<? super K, ? super V> dVar) {
            this(new k(dVar, null));
        }

        public o(k<K, V> kVar) {
            this.f65516b = kVar;
        }
    }

    public static class p<K, V> extends h<K, V> implements Serializable {

        public static final long f65518o = 1;

        public final t f65519b;

        public final t f65520c;

        public final AbstractC15896m<Object> f65521d;

        public final AbstractC15896m<Object> f65522e;

        public final long f65523f;

        public final long f65524g;

        public final long f65525h;

        public final com.google.common.cache.x<K, V> f65526i;

        public final int f65527j;

        public final com.google.common.cache.r<? super K, ? super V> f65528k;

        @CheckForNull
        public final U f65529l;

        public final CacheLoader<? super K, V> f65530m;

        @CheckForNull
        public transient c<K, V> f65531n;

        public p(k<K, V> kVar) {
            this(kVar.f65450h, kVar.f65451i, kVar.f65448f, kVar.f65449g, kVar.f65455m, kVar.f65454l, kVar.f65452j, kVar.f65453k, kVar.f65447e, kVar.f65458p, kVar.f65459q, kVar.f65462t);
        }

        private void o0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f65531n = (c<K, V>) q0().a();
        }

        private Object p0() {
            return this.f65531n;
        }

        @Override
        public c<K, V> k0() {
            return this.f65531n;
        }

        public d<K, V> q0() {
            d<K, V> dVar = (d<K, V>) d.D().H(this.f65519b).I(this.f65520c).z(this.f65521d).L(this.f65522e).e(this.f65527j).G(this.f65528k);
            dVar.f65392a = false;
            long j10 = this.f65523f;
            if (j10 > 0) {
                dVar.g(j10, TimeUnit.NANOSECONDS);
            }
            long j11 = this.f65524g;
            if (j11 > 0) {
                dVar.f(j11, TimeUnit.NANOSECONDS);
            }
            com.google.common.cache.x xVar = this.f65526i;
            if (xVar != d.e.INSTANCE) {
                dVar.O(xVar);
                long j12 = this.f65525h;
                if (j12 != -1) {
                    dVar.C(j12);
                }
            } else {
                long j13 = this.f65525h;
                if (j13 != -1) {
                    dVar.B(j13);
                }
            }
            U u10 = this.f65529l;
            if (u10 != null) {
                dVar.K(u10);
            }
            return dVar;
        }

        public p(t tVar, t tVar2, AbstractC15896m<Object> abstractC15896m, AbstractC15896m<Object> abstractC15896m2, long j10, long j11, long j12, com.google.common.cache.x<K, V> xVar, int i10, com.google.common.cache.r<? super K, ? super V> rVar, U u10, CacheLoader<? super K, V> cacheLoader) {
            this.f65519b = tVar;
            this.f65520c = tVar2;
            this.f65521d = abstractC15896m;
            this.f65522e = abstractC15896m2;
            this.f65523f = j10;
            this.f65524g = j11;
            this.f65525h = j12;
            this.f65526i = xVar;
            this.f65527j = i10;
            this.f65528k = rVar;
            this.f65529l = (u10 == U.b() || u10 == d.f65389x) ? null : u10;
            this.f65530m = cacheLoader;
        }
    }

    public enum q implements com.google.common.cache.p<Object, Object> {
        INSTANCE;

        @Override
        public A<Object, Object> a() {
            return null;
        }

        @Override
        public int b() {
            return 0;
        }

        @Override
        public void c(com.google.common.cache.p<Object, Object> pVar) {
        }

        @Override
        public com.google.common.cache.p<Object, Object> d() {
            return this;
        }

        @Override
        public void e(A<Object, Object> a10) {
        }

        @Override
        public long g() {
            return 0L;
        }

        @Override
        public Object getKey() {
            return null;
        }

        @Override
        public com.google.common.cache.p<Object, Object> getNext() {
            return null;
        }

        @Override
        public void h(long j10) {
        }

        @Override
        public void i(long j10) {
        }

        @Override
        public com.google.common.cache.p<Object, Object> j() {
            return this;
        }

        @Override
        public com.google.common.cache.p<Object, Object> k() {
            return this;
        }

        @Override
        public com.google.common.cache.p<Object, Object> o() {
            return this;
        }

        @Override
        public long q() {
            return 0L;
        }

        @Override
        public void r(com.google.common.cache.p<Object, Object> pVar) {
        }

        @Override
        public void s(com.google.common.cache.p<Object, Object> pVar) {
        }

        @Override
        public void u(com.google.common.cache.p<Object, Object> pVar) {
        }
    }

    public static class r<K, V> extends ReentrantLock {

        @q3.i
        public final k<K, V> f65532b;

        public volatile int f65533c;

        @J2.a("this")
        public long f65534d;

        public int f65535e;

        public int f65536f;

        @CheckForNull
        public volatile AtomicReferenceArray<com.google.common.cache.p<K, V>> f65537g;

        public final long f65538h;

        @CheckForNull
        public final ReferenceQueue<K> f65539i;

        @CheckForNull
        public final ReferenceQueue<V> f65540j;

        public final Queue<com.google.common.cache.p<K, V>> f65541k;

        public final AtomicInteger f65542l = new AtomicInteger();

        @J2.a("this")
        public final Queue<com.google.common.cache.p<K, V>> f65543m;

        @J2.a("this")
        public final Queue<com.google.common.cache.p<K, V>> f65544n;

        public final a.b f65545o;

        public class a implements Runnable {

            public final Object f65546b;

            public final int f65547c;

            public final m f65548d;

            public final Z f65549e;

            public a(Object obj, int i10, m mVar, Z z10) {
                this.f65546b = obj;
                this.f65547c = i10;
                this.f65548d = mVar;
                this.f65549e = z10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void run() {
                try {
                    r.this.s(this.f65546b, this.f65547c, this.f65548d, this.f65549e);
                } catch (Throwable th2) {
                    k.f65438C.log(Level.WARNING, "Exception thrown during refresh", th2);
                    this.f65548d.k(th2);
                }
            }
        }

        public r(k<K, V> kVar, int i10, long j10, a.b bVar) {
            this.f65532b = kVar;
            this.f65538h = j10;
            this.f65545o = (a.b) w2.H.E(bVar);
            z(F(i10));
            this.f65539i = kVar.Y() ? new ReferenceQueue<>() : null;
            this.f65540j = kVar.Z() ? new ReferenceQueue<>() : null;
            this.f65541k = kVar.X() ? new ConcurrentLinkedQueue<>() : k.k();
            this.f65543m = kVar.b0() ? new K<>() : k.k();
            this.f65544n = kVar.X() ? new C12460e<>() : k.k();
        }

        /* JADX WARN: Finally extract failed */
        @CheckForNull
        public m<K, V> A(K k10, int i10, boolean z10) {
            lock();
            try {
                long a10 = this.f65532b.f65459q.a();
                I(a10);
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar = (com.google.common.cache.p) atomicReferenceArray.get(length);
                for (com.google.common.cache.p pVar2 = pVar; pVar2 != null; pVar2 = pVar2.getNext()) {
                    Object key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(k10, key)) {
                        A<K, V> a11 = pVar2.a();
                        if (!a11.d() && (!z10 || a10 - pVar2.g() >= this.f65532b.f65456n)) {
                            this.f65535e++;
                            m<K, V> mVar = new m<>(a11);
                            pVar2.e(mVar);
                            unlock();
                            H();
                            return mVar;
                        }
                        unlock();
                        H();
                        return null;
                    }
                }
                this.f65535e++;
                m<K, V> mVar2 = new m<>();
                com.google.common.cache.p<K, V> E10 = E(k10, i10, pVar);
                E10.e(mVar2);
                atomicReferenceArray.set(length, E10);
                unlock();
                H();
                return mVar2;
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        public Z<V> B(K k10, int i10, m<K, V> mVar, CacheLoader<? super K, V> cacheLoader) {
            Z<V> i11 = mVar.i(k10, cacheLoader);
            i11.addListener(new a(k10, i10, mVar, i11), C12612g0.c());
            return i11;
        }

        public V C(K k10, int i10, m<K, V> mVar, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return s(k10, i10, mVar, mVar.i(k10, cacheLoader));
        }

        public V D(K k10, int i10, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            m<K, V> mVar;
            boolean z10;
            A<K, V> a10;
            V C10;
            lock();
            try {
                long a11 = this.f65532b.f65459q.a();
                I(a11);
                int i11 = this.f65533c - 1;
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = i10 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    mVar = null;
                    if (pVar2 == null) {
                        z10 = true;
                        a10 = null;
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(k10, key)) {
                        A<K, V> a12 = pVar2.a();
                        if (a12.d()) {
                            z10 = false;
                        } else {
                            V v10 = a12.get();
                            if (v10 == null) {
                                m(key, i10, v10, a12.getWeight(), com.google.common.cache.q.COLLECTED);
                            } else {
                                if (!this.f65532b.y(pVar2, a11)) {
                                    M(pVar2, a11);
                                    this.f65545o.a(1);
                                    unlock();
                                    H();
                                    return v10;
                                }
                                m(key, i10, v10, a12.getWeight(), com.google.common.cache.q.EXPIRED);
                            }
                            this.f65543m.remove(pVar2);
                            this.f65544n.remove(pVar2);
                            this.f65533c = i11;
                            z10 = true;
                        }
                        a10 = a12;
                    } else {
                        pVar2 = pVar2.getNext();
                    }
                }
                if (z10) {
                    mVar = new m<>();
                    if (pVar2 == null) {
                        pVar2 = E(k10, i10, pVar);
                        pVar2.e(mVar);
                        atomicReferenceArray.set(length, pVar2);
                    } else {
                        pVar2.e(mVar);
                    }
                }
                unlock();
                H();
                if (!z10) {
                    return g0(pVar2, k10, a10);
                }
                try {
                    synchronized (pVar2) {
                        C10 = C(k10, i10, mVar, cacheLoader);
                    }
                    return C10;
                } finally {
                    this.f65545o.d(1);
                }
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @J2.a("this")
        public com.google.common.cache.p<K, V> E(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            return this.f65532b.f65460r.g(this, w2.H.E(k10), i10, pVar);
        }

        public AtomicReferenceArray<com.google.common.cache.p<K, V>> F(int i10) {
            return new AtomicReferenceArray<>(i10);
        }

        public void G() {
            if ((this.f65542l.incrementAndGet() & 63) == 0) {
                a();
            }
        }

        public void H() {
            a0();
        }

        @J2.a("this")
        public void I(long j10) {
            Z(j10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x008d, code lost:
        
            unlock();
            H();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
        
            return null;
         */
        @CheckForNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V J(K k10, int i10, V v10, boolean z10) {
            int i11;
            lock();
            try {
                long a10 = this.f65532b.f65459q.a();
                I(a10);
                if (this.f65533c + 1 > this.f65536f) {
                    o();
                }
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = i10 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        this.f65535e++;
                        com.google.common.cache.p<K, V> E10 = E(k10, i10, pVar);
                        c0(E10, k10, v10, a10);
                        atomicReferenceArray.set(length, E10);
                        this.f65533c++;
                        n(E10);
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(k10, key)) {
                        A<K, V> a11 = pVar2.a();
                        V v11 = a11.get();
                        if (v11 != null) {
                            if (z10) {
                                M(pVar2, a10);
                            } else {
                                this.f65535e++;
                                m(k10, i10, v11, a11.getWeight(), com.google.common.cache.q.REPLACED);
                                c0(pVar2, k10, v10, a10);
                                n(pVar2);
                            }
                            unlock();
                            H();
                            return v11;
                        }
                        this.f65535e++;
                        if (a11.isActive()) {
                            m(k10, i10, v11, a11.getWeight(), com.google.common.cache.q.COLLECTED);
                            c0(pVar2, k10, v10, a10);
                            i11 = this.f65533c;
                        } else {
                            c0(pVar2, k10, v10, a10);
                            i11 = this.f65533c + 1;
                        }
                        this.f65533c = i11;
                        n(pVar2);
                    } else {
                        pVar2 = pVar2.getNext();
                    }
                }
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        public boolean K(com.google.common.cache.p<K, V> pVar, int i10) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar2 = atomicReferenceArray.get(length);
                for (com.google.common.cache.p<K, V> pVar3 = pVar2; pVar3 != null; pVar3 = pVar3.getNext()) {
                    if (pVar3 == pVar) {
                        this.f65535e++;
                        com.google.common.cache.p<K, V> W10 = W(pVar2, pVar3, pVar3.getKey(), i10, pVar3.a().get(), pVar3.a(), com.google.common.cache.q.COLLECTED);
                        int i11 = this.f65533c - 1;
                        atomicReferenceArray.set(length, W10);
                        this.f65533c = i11;
                        return true;
                    }
                }
                unlock();
                H();
                return false;
            } finally {
                unlock();
                H();
            }
        }

        public boolean L(K k10, int i10, A<K, V> a10) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                for (com.google.common.cache.p<K, V> pVar2 = pVar; pVar2 != null; pVar2 = pVar2.getNext()) {
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(k10, key)) {
                        if (pVar2.a() != a10) {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                H();
                            }
                            return false;
                        }
                        this.f65535e++;
                        com.google.common.cache.p<K, V> W10 = W(pVar, pVar2, key, i10, a10.get(), a10, com.google.common.cache.q.COLLECTED);
                        int i11 = this.f65533c - 1;
                        atomicReferenceArray.set(length, W10);
                        this.f65533c = i11;
                        return true;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    H();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    H();
                }
            }
        }

        @J2.a("this")
        public void M(com.google.common.cache.p<K, V> pVar, long j10) {
            if (this.f65532b.M()) {
                pVar.h(j10);
            }
            this.f65544n.add(pVar);
        }

        public void N(com.google.common.cache.p<K, V> pVar, long j10) {
            if (this.f65532b.M()) {
                pVar.h(j10);
            }
            this.f65541k.add(pVar);
        }

        @J2.a("this")
        public void O(com.google.common.cache.p<K, V> pVar, int i10, long j10) {
            j();
            this.f65534d += i10;
            if (this.f65532b.M()) {
                pVar.h(j10);
            }
            if (this.f65532b.O()) {
                pVar.i(j10);
            }
            this.f65544n.add(pVar);
            this.f65543m.add(pVar);
        }

        @CheckForNull
        public V P(K k10, int i10, CacheLoader<? super K, V> cacheLoader, boolean z10) {
            m<K, V> A10 = A(k10, i10, z10);
            if (A10 == null) {
                return null;
            }
            Z<V> B10 = B(k10, i10, A10, cacheLoader);
            if (B10.isDone()) {
                try {
                    return (V) H0.f(B10);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        
            r9 = r5.a();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        
            if (r12 == null) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            r2 = com.google.common.cache.q.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
        
            r11.f65535e++;
            r13 = W(r4, r5, r6, r13, r12, r9, r10);
            r2 = r11.f65533c - 1;
            r0.set(r1, r13);
            r11.f65533c = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
        
            unlock();
            H();
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
        
            return r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
        
            if (r9.isActive() == false) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
        
            r2 = com.google.common.cache.q.COLLECTED;
         */
        @CheckForNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V Q(Object obj, int i10) {
            lock();
            try {
                I(this.f65532b.f65459q.a());
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(obj, key)) {
                        break;
                    }
                    pVar2 = pVar2.getNext();
                }
                unlock();
                H();
                return null;
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        
            r10 = r6.a();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        
            if (r12.f65532b.f65449g.d(r15, r9) == false) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
        
            r13 = com.google.common.cache.q.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        
            r12.f65535e++;
            r14 = W(r5, r6, r7, r14, r9, r10, r13);
            r15 = r12.f65533c - 1;
            r0.set(r1, r14);
            r12.f65533c = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        
            if (r13 != com.google.common.cache.q.EXPLICIT) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
        
            unlock();
            H();
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        
            if (r9 != null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
        
            if (r10.isActive() == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
        
            r13 = com.google.common.cache.q.COLLECTED;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean R(Object obj, int i10, Object obj2) {
            lock();
            try {
                I(this.f65532b.f65459q.a());
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                boolean z10 = true;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(obj, key)) {
                        break;
                    }
                    pVar2 = pVar2.getNext();
                }
                unlock();
                H();
                return false;
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        @J2.a("this")
        public void S(com.google.common.cache.p<K, V> pVar) {
            m(pVar.getKey(), pVar.b(), pVar.a().get(), pVar.a().getWeight(), com.google.common.cache.q.COLLECTED);
            this.f65543m.remove(pVar);
            this.f65544n.remove(pVar);
        }

        @v2.d
        @J2.a("this")
        public boolean T(com.google.common.cache.p<K, V> pVar, int i10, com.google.common.cache.q qVar) {
            AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
            int length = (atomicReferenceArray.length() - 1) & i10;
            com.google.common.cache.p<K, V> pVar2 = atomicReferenceArray.get(length);
            for (com.google.common.cache.p<K, V> pVar3 = pVar2; pVar3 != null; pVar3 = pVar3.getNext()) {
                if (pVar3 == pVar) {
                    this.f65535e++;
                    com.google.common.cache.p<K, V> W10 = W(pVar2, pVar3, pVar3.getKey(), i10, pVar3.a().get(), pVar3.a(), qVar);
                    int i11 = this.f65533c - 1;
                    atomicReferenceArray.set(length, W10);
                    this.f65533c = i11;
                    return true;
                }
            }
            return false;
        }

        @CheckForNull
        @J2.a("this")
        public com.google.common.cache.p<K, V> U(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
            int i10 = this.f65533c;
            com.google.common.cache.p<K, V> next = pVar2.getNext();
            while (pVar != pVar2) {
                com.google.common.cache.p<K, V> h10 = h(pVar, next);
                if (h10 != null) {
                    next = h10;
                } else {
                    S(pVar);
                    i10--;
                }
                pVar = pVar.getNext();
            }
            this.f65533c = i10;
            return next;
        }

        public boolean V(K k10, int i10, m<K, V> mVar) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = (atomicReferenceArray.length() - 1) & i10;
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() != i10 || key == null || !this.f65532b.f65448f.d(k10, key)) {
                        pVar2 = pVar2.getNext();
                    } else if (pVar2.a() == mVar) {
                        if (mVar.isActive()) {
                            pVar2.e(mVar.h());
                        } else {
                            atomicReferenceArray.set(length, U(pVar, pVar2));
                        }
                        unlock();
                        H();
                        return true;
                    }
                }
                unlock();
                H();
                return false;
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        @CheckForNull
        @J2.a("this")
        public com.google.common.cache.p<K, V> W(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2, @CheckForNull K k10, int i10, V v10, A<K, V> a10, com.google.common.cache.q qVar) {
            m(k10, i10, v10, a10.getWeight(), qVar);
            this.f65543m.remove(pVar2);
            this.f65544n.remove(pVar2);
            if (!a10.d()) {
                return U(pVar, pVar2);
            }
            a10.b(null);
            return pVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0075, code lost:
        
            return null;
         */
        @CheckForNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V X(K k10, int i10, V v10) {
            lock();
            try {
                long a10 = this.f65532b.f65459q.a();
                I(a10);
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = i10 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null) {
                        if (this.f65532b.f65448f.d(k10, key)) {
                            A<K, V> a11 = pVar2.a();
                            V v11 = a11.get();
                            if (v11 != null) {
                                this.f65535e++;
                                m(k10, i10, v11, a11.getWeight(), com.google.common.cache.q.REPLACED);
                                c0(pVar2, k10, v10, a10);
                                n(pVar2);
                                return v11;
                            }
                            if (a11.isActive()) {
                                this.f65535e++;
                                com.google.common.cache.p<K, V> W10 = W(pVar, pVar2, key, i10, v11, a11, com.google.common.cache.q.COLLECTED);
                                int i11 = this.f65533c - 1;
                                atomicReferenceArray.set(length, W10);
                                this.f65533c = i11;
                            }
                        }
                    }
                    pVar2 = pVar2.getNext();
                }
            } finally {
                unlock();
                H();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean Y(K k10, int i10, V v10, V v11) {
            lock();
            try {
                long a10 = this.f65532b.f65459q.a();
                I(a10);
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = i10 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null) {
                        if (this.f65532b.f65448f.d(k10, key)) {
                            A<K, V> a11 = pVar2.a();
                            V v12 = a11.get();
                            if (v12 == null) {
                                if (a11.isActive()) {
                                    this.f65535e++;
                                    com.google.common.cache.p<K, V> W10 = W(pVar, pVar2, key, i10, v12, a11, com.google.common.cache.q.COLLECTED);
                                    int i11 = this.f65533c - 1;
                                    atomicReferenceArray.set(length, W10);
                                    this.f65533c = i11;
                                }
                            } else {
                                if (this.f65532b.f65449g.d(v10, v12)) {
                                    this.f65535e++;
                                    m(k10, i10, v12, a11.getWeight(), com.google.common.cache.q.REPLACED);
                                    c0(pVar2, k10, v11, a10);
                                    n(pVar2);
                                    return true;
                                }
                                M(pVar2, a10);
                            }
                        }
                    }
                    pVar2 = pVar2.getNext();
                }
            } finally {
                unlock();
                H();
            }
        }

        public void Z(long j10) {
            if (tryLock()) {
                try {
                    k();
                    p(j10);
                    this.f65542l.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public void a() {
            Z(this.f65532b.f65459q.a());
            a0();
        }

        public void a0() {
            if (isHeldByCurrentThread()) {
                return;
            }
            this.f65532b.J();
        }

        public void b() {
            com.google.common.cache.q qVar;
            if (this.f65533c != 0) {
                lock();
                try {
                    I(this.f65532b.f65459q.a());
                    AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        for (com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(i10); pVar != null; pVar = pVar.getNext()) {
                            if (pVar.a().isActive()) {
                                K key = pVar.getKey();
                                V v10 = pVar.a().get();
                                if (key != null && v10 != null) {
                                    qVar = com.google.common.cache.q.EXPLICIT;
                                    m(key, pVar.b(), v10, pVar.a().getWeight(), qVar);
                                }
                                qVar = com.google.common.cache.q.COLLECTED;
                                m(key, pVar.b(), v10, pVar.a().getWeight(), qVar);
                            }
                        }
                    }
                    for (int i11 = 0; i11 < atomicReferenceArray.length(); i11++) {
                        atomicReferenceArray.set(i11, null);
                    }
                    d();
                    this.f65543m.clear();
                    this.f65544n.clear();
                    this.f65542l.set(0);
                    this.f65535e++;
                    this.f65533c = 0;
                    unlock();
                    H();
                } catch (Throwable th2) {
                    unlock();
                    H();
                    throw th2;
                }
            }
        }

        public V b0(com.google.common.cache.p<K, V> pVar, K k10, int i10, V v10, long j10, CacheLoader<? super K, V> cacheLoader) {
            V P10;
            return (!this.f65532b.Q() || j10 - pVar.g() <= this.f65532b.f65456n || pVar.a().d() || (P10 = P(k10, i10, cacheLoader, true)) == null) ? v10 : P10;
        }

        public void c() {
            do {
            } while (this.f65539i.poll() != null);
        }

        @J2.a("this")
        public void c0(com.google.common.cache.p<K, V> pVar, K k10, V v10, long j10) {
            A<K, V> a10 = pVar.a();
            int a11 = this.f65532b.f65453k.a(k10, v10);
            w2.H.h0(a11 >= 0, "Weights must be non-negative");
            pVar.e(this.f65532b.f65451i.c(this, pVar, v10, a11));
            O(pVar, a11, j10);
            a10.b(v10);
        }

        public void d() {
            if (this.f65532b.Y()) {
                c();
            }
            if (this.f65532b.Z()) {
                e();
            }
        }

        public boolean d0(K k10, int i10, m<K, V> mVar, V v10) {
            lock();
            try {
                long a10 = this.f65532b.f65459q.a();
                I(a10);
                int i11 = this.f65533c + 1;
                if (i11 > this.f65536f) {
                    o();
                    i11 = this.f65533c + 1;
                }
                int i12 = i11;
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                int length = i10 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(length);
                com.google.common.cache.p<K, V> pVar2 = pVar;
                while (true) {
                    if (pVar2 == null) {
                        this.f65535e++;
                        com.google.common.cache.p<K, V> E10 = E(k10, i10, pVar);
                        c0(E10, k10, v10, a10);
                        atomicReferenceArray.set(length, E10);
                        this.f65533c = i12;
                        n(E10);
                        break;
                    }
                    K key = pVar2.getKey();
                    if (pVar2.b() == i10 && key != null && this.f65532b.f65448f.d(k10, key)) {
                        A<K, V> a11 = pVar2.a();
                        V v11 = a11.get();
                        if (mVar != a11 && (v11 != null || a11 == k.f65439D)) {
                            m(k10, i10, v10, 0, com.google.common.cache.q.REPLACED);
                            unlock();
                            H();
                            return false;
                        }
                        this.f65535e++;
                        if (mVar.isActive()) {
                            m(k10, i10, v11, mVar.getWeight(), v11 == null ? com.google.common.cache.q.COLLECTED : com.google.common.cache.q.REPLACED);
                            i12--;
                        }
                        c0(pVar2, k10, v10, a10);
                        this.f65533c = i12;
                        n(pVar2);
                    } else {
                        pVar2 = pVar2.getNext();
                    }
                }
                unlock();
                H();
                return true;
            } catch (Throwable th2) {
                unlock();
                H();
                throw th2;
            }
        }

        public void e() {
            do {
            } while (this.f65540j.poll() != null);
        }

        public void e0() {
            if (tryLock()) {
                try {
                    k();
                } finally {
                    unlock();
                }
            }
        }

        public boolean f(Object obj, int i10) {
            try {
                if (this.f65533c == 0) {
                    return false;
                }
                com.google.common.cache.p<K, V> w10 = w(obj, i10, this.f65532b.f65459q.a());
                if (w10 == null) {
                    return false;
                }
                return w10.a().get() != null;
            } finally {
                G();
            }
        }

        public void f0(long j10) {
            if (tryLock()) {
                try {
                    p(j10);
                } finally {
                    unlock();
                }
            }
        }

        @v2.d
        public boolean g(Object obj) {
            try {
                if (this.f65533c != 0) {
                    long a10 = this.f65532b.f65459q.a();
                    AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
                    int length = atomicReferenceArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        for (com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(i10); pVar != null; pVar = pVar.getNext()) {
                            V x10 = x(pVar, a10);
                            if (x10 != null && this.f65532b.f65449g.d(obj, x10)) {
                                G();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                G();
            }
        }

        public V g0(com.google.common.cache.p<K, V> pVar, K k10, A<K, V> a10) throws ExecutionException {
            if (!a10.d()) {
                throw new AssertionError();
            }
            w2.H.x0(!Thread.holdsLock(pVar), "Recursive load of: %s", k10);
            try {
                V c10 = a10.c();
                if (c10 != null) {
                    N(pVar, this.f65532b.f65459q.a());
                    return c10;
                }
                String valueOf = String.valueOf(k10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 35);
                sb2.append("CacheLoader returned null for key ");
                sb2.append(valueOf);
                sb2.append(".");
                throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
            } finally {
                this.f65545o.d(1);
            }
        }

        @J2.a("this")
        public com.google.common.cache.p<K, V> h(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
            if (pVar.getKey() == null) {
                return null;
            }
            A<K, V> a10 = pVar.a();
            V v10 = a10.get();
            if (v10 == null && a10.isActive()) {
                return null;
            }
            com.google.common.cache.p<K, V> c10 = this.f65532b.f65460r.c(this, pVar, pVar2);
            c10.e(a10.e(this.f65540j, v10, c10));
            return c10;
        }

        @J2.a("this")
        public void i() {
            int i10 = 0;
            do {
                Reference<? extends K> poll = this.f65539i.poll();
                if (poll == null) {
                    return;
                }
                this.f65532b.K((com.google.common.cache.p) poll);
                i10++;
            } while (i10 != 16);
        }

        @J2.a("this")
        public void j() {
            while (true) {
                com.google.common.cache.p<K, V> poll = this.f65541k.poll();
                if (poll == null) {
                    return;
                }
                if (this.f65544n.contains(poll)) {
                    this.f65544n.add(poll);
                }
            }
        }

        @J2.a("this")
        public void k() {
            if (this.f65532b.Y()) {
                i();
            }
            if (this.f65532b.Z()) {
                l();
            }
        }

        @J2.a("this")
        public void l() {
            int i10 = 0;
            do {
                Reference<? extends V> poll = this.f65540j.poll();
                if (poll == null) {
                    return;
                }
                this.f65532b.L((A) poll);
                i10++;
            } while (i10 != 16);
        }

        @J2.a("this")
        public void m(@CheckForNull K k10, int i10, @CheckForNull V v10, int i11, com.google.common.cache.q qVar) {
            this.f65534d -= i11;
            if (qVar.b()) {
                this.f65545o.b();
            }
            if (this.f65532b.f65457o != k.f65440E) {
                this.f65532b.f65457o.offer(com.google.common.cache.v.a(k10, v10, qVar));
            }
        }

        @J2.a("this")
        public void n(com.google.common.cache.p<K, V> pVar) {
            if (this.f65532b.l()) {
                j();
                if (pVar.a().getWeight() > this.f65538h && !T(pVar, pVar.b(), com.google.common.cache.q.SIZE)) {
                    throw new AssertionError();
                }
                while (this.f65534d > this.f65538h) {
                    com.google.common.cache.p<K, V> y10 = y();
                    if (!T(y10, y10.b(), com.google.common.cache.q.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        @J2.a("this")
        public void o() {
            AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = this.f65537g;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i10 = this.f65533c;
            AtomicReferenceArray<com.google.common.cache.p<K, V>> F10 = F(length << 1);
            this.f65536f = (F10.length() * 3) / 4;
            int length2 = F10.length() - 1;
            for (int i11 = 0; i11 < length; i11++) {
                com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(i11);
                if (pVar != null) {
                    com.google.common.cache.p<K, V> next = pVar.getNext();
                    int b10 = pVar.b() & length2;
                    if (next == null) {
                        F10.set(b10, pVar);
                    } else {
                        com.google.common.cache.p<K, V> pVar2 = pVar;
                        while (next != null) {
                            int b11 = next.b() & length2;
                            if (b11 != b10) {
                                pVar2 = next;
                                b10 = b11;
                            }
                            next = next.getNext();
                        }
                        F10.set(b10, pVar2);
                        while (pVar != pVar2) {
                            int b12 = pVar.b() & length2;
                            com.google.common.cache.p<K, V> h10 = h(pVar, F10.get(b12));
                            if (h10 != null) {
                                F10.set(b12, h10);
                            } else {
                                S(pVar);
                                i10--;
                            }
                            pVar = pVar.getNext();
                        }
                    }
                }
            }
            this.f65537g = F10;
            this.f65533c = i10;
        }

        @J2.a("this")
        public void p(long j10) {
            com.google.common.cache.p<K, V> peek;
            com.google.common.cache.p<K, V> peek2;
            j();
            do {
                peek = this.f65543m.peek();
                if (peek == null || !this.f65532b.y(peek, j10)) {
                    do {
                        peek2 = this.f65544n.peek();
                        if (peek2 == null || !this.f65532b.y(peek2, j10)) {
                            return;
                        }
                    } while (T(peek2, peek2.b(), com.google.common.cache.q.EXPIRED));
                    throw new AssertionError();
                }
            } while (T(peek, peek.b(), com.google.common.cache.q.EXPIRED));
            throw new AssertionError();
        }

        @CheckForNull
        public V q(Object obj, int i10) {
            try {
                if (this.f65533c != 0) {
                    long a10 = this.f65532b.f65459q.a();
                    com.google.common.cache.p<K, V> w10 = w(obj, i10, a10);
                    if (w10 == null) {
                        return null;
                    }
                    V v10 = w10.a().get();
                    if (v10 != null) {
                        N(w10, a10);
                        return b0(w10, w10.getKey(), i10, v10, a10, this.f65532b.f65462t);
                    }
                    e0();
                }
                return null;
            } finally {
                G();
            }
        }

        public V r(K k10, int i10, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            com.google.common.cache.p<K, V> u10;
            w2.H.E(k10);
            w2.H.E(cacheLoader);
            try {
                try {
                    if (this.f65533c != 0 && (u10 = u(k10, i10)) != null) {
                        long a10 = this.f65532b.f65459q.a();
                        V x10 = x(u10, a10);
                        if (x10 != null) {
                            N(u10, a10);
                            this.f65545o.a(1);
                            return b0(u10, k10, i10, x10, a10, cacheLoader);
                        }
                        A<K, V> a11 = u10.a();
                        if (a11.d()) {
                            return g0(u10, k10, a11);
                        }
                    }
                    return D(k10, i10, cacheLoader);
                } catch (ExecutionException e10) {
                    Throwable cause = e10.getCause();
                    if (cause instanceof Error) {
                        throw new ExecutionError((Error) cause);
                    }
                    if (cause instanceof RuntimeException) {
                        throw new UncheckedExecutionException(cause);
                    }
                    throw e10;
                }
            } finally {
                G();
            }
        }

        public V s(K k10, int i10, m<K, V> mVar, Z<V> z10) throws ExecutionException {
            V v10;
            try {
                v10 = (V) H0.f(z10);
                try {
                    if (v10 != null) {
                        this.f65545o.c(mVar.f());
                        d0(k10, i10, mVar, v10);
                        return v10;
                    }
                    String valueOf = String.valueOf(k10);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 35);
                    sb2.append("CacheLoader returned null for key ");
                    sb2.append(valueOf);
                    sb2.append(".");
                    throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
                } catch (Throwable th2) {
                    th = th2;
                    if (v10 == null) {
                        this.f65545o.e(mVar.f());
                        V(k10, i10, mVar);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                v10 = null;
            }
        }

        @CheckForNull
        public com.google.common.cache.p<K, V> u(Object obj, int i10) {
            for (com.google.common.cache.p<K, V> v10 = v(i10); v10 != null; v10 = v10.getNext()) {
                if (v10.b() == i10) {
                    K key = v10.getKey();
                    if (key == null) {
                        e0();
                    } else if (this.f65532b.f65448f.d(obj, key)) {
                        return v10;
                    }
                }
            }
            return null;
        }

        public com.google.common.cache.p<K, V> v(int i10) {
            return this.f65537g.get(i10 & (r0.length() - 1));
        }

        @CheckForNull
        public com.google.common.cache.p<K, V> w(Object obj, int i10, long j10) {
            com.google.common.cache.p<K, V> u10 = u(obj, i10);
            if (u10 == null) {
                return null;
            }
            if (!this.f65532b.y(u10, j10)) {
                return u10;
            }
            f0(j10);
            return null;
        }

        public V x(com.google.common.cache.p<K, V> pVar, long j10) {
            if (pVar.getKey() == null) {
                e0();
                return null;
            }
            V v10 = pVar.a().get();
            if (v10 == null) {
                e0();
                return null;
            }
            if (!this.f65532b.y(pVar, j10)) {
                return v10;
            }
            f0(j10);
            return null;
        }

        @J2.a("this")
        public com.google.common.cache.p<K, V> y() {
            for (com.google.common.cache.p<K, V> pVar : this.f65544n) {
                if (pVar.a().getWeight() > 0) {
                    return pVar;
                }
            }
            throw new AssertionError();
        }

        public void z(AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray) {
            this.f65536f = (atomicReferenceArray.length() * 3) / 4;
            if (!this.f65532b.j()) {
                int i10 = this.f65536f;
                if (i10 == this.f65538h) {
                    this.f65536f = i10 + 1;
                }
            }
            this.f65537g = atomicReferenceArray;
        }
    }

    public static class s<K, V> extends SoftReference<V> implements A<K, V> {

        public final com.google.common.cache.p<K, V> f65551b;

        public s(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            super(v10, referenceQueue);
            this.f65551b = pVar;
        }

        @Override
        public com.google.common.cache.p<K, V> a() {
            return this.f65551b;
        }

        @Override
        public void b(V v10) {
        }

        @Override
        public V c() {
            return get();
        }

        @Override
        public boolean d() {
            return false;
        }

        public A<K, V> e(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            return new s(referenceQueue, v10, pVar);
        }

        public int getWeight() {
            return 1;
        }

        @Override
        public boolean isActive() {
            return true;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class t {
        public static final t STRONG = new a("STRONG", 0);
        public static final t SOFT = new b("SOFT", 1);
        public static final t WEAK = new c("WEAK", 2);
        private static final t[] $VALUES = a();

        public enum a extends t {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public AbstractC15896m<Object> b() {
                return AbstractC15896m.c();
            }

            @Override
            public <K, V> A<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, V v10, int i10) {
                return i10 == 1 ? new x(v10) : new I(v10, i10);
            }
        }

        public enum b extends t {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public AbstractC15896m<Object> b() {
                return AbstractC15896m.g();
            }

            @Override
            public <K, V> A<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, V v10, int i10) {
                return i10 == 1 ? new s(rVar.f65540j, v10, pVar) : new H(rVar.f65540j, v10, pVar, i10);
            }
        }

        public enum c extends t {
            public c(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public AbstractC15896m<Object> b() {
                return AbstractC15896m.g();
            }

            @Override
            public <K, V> A<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, V v10, int i10) {
                return i10 == 1 ? new F(rVar.f65540j, v10, pVar) : new J(rVar.f65540j, v10, pVar, i10);
            }
        }

        public t(String str, int i10) {
        }

        public static t[] a() {
            return new t[]{STRONG, SOFT, WEAK};
        }

        public static t valueOf(String str) {
            return (t) Enum.valueOf(t.class, str);
        }

        public static t[] values() {
            return (t[]) $VALUES.clone();
        }

        public abstract AbstractC15896m<Object> b();

        public abstract <K, V> A<K, V> c(r<K, V> rVar, com.google.common.cache.p<K, V> pVar, V v10, int i10);

        public t(String str, int i10, C12456a c12456a) {
            this(str, i10);
        }
    }

    public static final class u<K, V> extends w<K, V> {

        public volatile long f65552f;

        @q3.i
        public com.google.common.cache.p<K, V> f65553g;

        @q3.i
        public com.google.common.cache.p<K, V> f65554h;

        public u(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(k10, i10, pVar);
            this.f65552f = Long.MAX_VALUE;
            this.f65553g = k.F();
            this.f65554h = k.F();
        }

        @Override
        public void c(com.google.common.cache.p<K, V> pVar) {
            this.f65554h = pVar;
        }

        @Override
        public void h(long j10) {
            this.f65552f = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> j() {
            return this.f65554h;
        }

        @Override
        public com.google.common.cache.p<K, V> o() {
            return this.f65553g;
        }

        @Override
        public long q() {
            return this.f65552f;
        }

        @Override
        public void r(com.google.common.cache.p<K, V> pVar) {
            this.f65553g = pVar;
        }
    }

    public static final class v<K, V> extends w<K, V> {

        public volatile long f65555f;

        @q3.i
        public com.google.common.cache.p<K, V> f65556g;

        @q3.i
        public com.google.common.cache.p<K, V> f65557h;

        public volatile long f65558i;

        @q3.i
        public com.google.common.cache.p<K, V> f65559j;

        @q3.i
        public com.google.common.cache.p<K, V> f65560k;

        public v(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(k10, i10, pVar);
            this.f65555f = Long.MAX_VALUE;
            this.f65556g = k.F();
            this.f65557h = k.F();
            this.f65558i = Long.MAX_VALUE;
            this.f65559j = k.F();
            this.f65560k = k.F();
        }

        @Override
        public void c(com.google.common.cache.p<K, V> pVar) {
            this.f65557h = pVar;
        }

        @Override
        public com.google.common.cache.p<K, V> d() {
            return this.f65560k;
        }

        @Override
        public long g() {
            return this.f65558i;
        }

        @Override
        public void h(long j10) {
            this.f65555f = j10;
        }

        @Override
        public void i(long j10) {
            this.f65558i = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> j() {
            return this.f65557h;
        }

        @Override
        public com.google.common.cache.p<K, V> k() {
            return this.f65559j;
        }

        @Override
        public com.google.common.cache.p<K, V> o() {
            return this.f65556g;
        }

        @Override
        public long q() {
            return this.f65555f;
        }

        @Override
        public void r(com.google.common.cache.p<K, V> pVar) {
            this.f65556g = pVar;
        }

        @Override
        public void s(com.google.common.cache.p<K, V> pVar) {
            this.f65559j = pVar;
        }

        @Override
        public void u(com.google.common.cache.p<K, V> pVar) {
            this.f65560k = pVar;
        }
    }

    public static class w<K, V> extends AbstractC12459d<K, V> {

        public final K f65561b;

        public final int f65562c;

        @CheckForNull
        public final com.google.common.cache.p<K, V> f65563d;

        public volatile A<K, V> f65564e = k.V();

        public w(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            this.f65561b = k10;
            this.f65562c = i10;
            this.f65563d = pVar;
        }

        @Override
        public A<K, V> a() {
            return this.f65564e;
        }

        @Override
        public int b() {
            return this.f65562c;
        }

        @Override
        public void e(A<K, V> a10) {
            this.f65564e = a10;
        }

        @Override
        public K getKey() {
            return this.f65561b;
        }

        @Override
        public com.google.common.cache.p<K, V> getNext() {
            return this.f65563d;
        }
    }

    public static class x<K, V> implements A<K, V> {

        public final V f65565b;

        public x(V v10) {
            this.f65565b = v10;
        }

        @Override
        public com.google.common.cache.p<K, V> a() {
            return null;
        }

        @Override
        public void b(V v10) {
        }

        @Override
        public V c() {
            return get();
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public A<K, V> e(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.p<K, V> pVar) {
            return this;
        }

        @Override
        public V get() {
            return this.f65565b;
        }

        @Override
        public int getWeight() {
            return 1;
        }

        @Override
        public boolean isActive() {
            return true;
        }
    }

    public static final class y<K, V> extends w<K, V> {

        public volatile long f65566f;

        @q3.i
        public com.google.common.cache.p<K, V> f65567g;

        @q3.i
        public com.google.common.cache.p<K, V> f65568h;

        public y(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
            super(k10, i10, pVar);
            this.f65566f = Long.MAX_VALUE;
            this.f65567g = k.F();
            this.f65568h = k.F();
        }

        @Override
        public com.google.common.cache.p<K, V> d() {
            return this.f65568h;
        }

        @Override
        public long g() {
            return this.f65566f;
        }

        @Override
        public void i(long j10) {
            this.f65566f = j10;
        }

        @Override
        public com.google.common.cache.p<K, V> k() {
            return this.f65567g;
        }

        @Override
        public void s(com.google.common.cache.p<K, V> pVar) {
            this.f65567g = pVar;
        }

        @Override
        public void u(com.google.common.cache.p<K, V> pVar) {
            this.f65568h = pVar;
        }
    }

    public final class z extends k<K, V>.AbstractC12464i<V> {
        public z(k kVar) {
            super();
        }

        @Override
        public V next() {
            return d().getValue();
        }
    }

    public k(d<? super K, ? super V> dVar, @CheckForNull CacheLoader<? super K, V> cacheLoader) {
        this.f65447e = Math.min(dVar.j(), 65536);
        t o10 = dVar.o();
        this.f65450h = o10;
        this.f65451i = dVar.v();
        this.f65448f = dVar.n();
        this.f65449g = dVar.u();
        long p10 = dVar.p();
        this.f65452j = p10;
        this.f65453k = (com.google.common.cache.x<K, V>) dVar.w();
        this.f65454l = dVar.k();
        this.f65455m = dVar.l();
        this.f65456n = dVar.q();
        d.EnumC0977d enumC0977d = (com.google.common.cache.r<K, V>) dVar.r();
        this.f65458p = enumC0977d;
        this.f65457o = enumC0977d == d.EnumC0977d.INSTANCE ? k() : new ConcurrentLinkedQueue<>();
        this.f65459q = dVar.t(N());
        this.f65460r = EnumC12461f.e(o10, W(), a0());
        this.f65461s = dVar.s().get();
        this.f65462t = cacheLoader;
        int min = Math.min(dVar.m(), 1073741824);
        if (l() && !j()) {
            min = (int) Math.min(min, p10);
        }
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        int i13 = 1;
        while (i13 < this.f65447e && (!l() || i13 * 20 <= this.f65452j)) {
            i12++;
            i13 <<= 1;
        }
        this.f65445c = 32 - i12;
        this.f65444b = i13 - 1;
        this.f65446d = D(i13);
        int i14 = min / i13;
        while (i11 < (i14 * i13 < min ? i14 + 1 : i14)) {
            i11 <<= 1;
        }
        if (l()) {
            long j10 = this.f65452j;
            long j11 = i13;
            long j12 = (j10 / j11) + 1;
            long j13 = j10 % j11;
            while (true) {
                r<K, V>[] rVarArr = this.f65446d;
                if (i10 >= rVarArr.length) {
                    return;
                }
                if (i10 == j13) {
                    j12--;
                }
                rVarArr[i10] = i(i11, j12, dVar.s().get());
                i10++;
            }
        } else {
            while (true) {
                r<K, V>[] rVarArr2 = this.f65446d;
                if (i10 >= rVarArr2.length) {
                    return;
                }
                rVarArr2[i10] = i(i11, -1L, dVar.s().get());
                i10++;
            }
        }
    }

    public static <K, V> com.google.common.cache.p<K, V> F() {
        return q.INSTANCE;
    }

    public static <K, V> void H(com.google.common.cache.p<K, V> pVar) {
        com.google.common.cache.p<K, V> F10 = F();
        pVar.r(F10);
        pVar.c(F10);
    }

    public static <K, V> void I(com.google.common.cache.p<K, V> pVar) {
        com.google.common.cache.p<K, V> F10 = F();
        pVar.s(F10);
        pVar.u(F10);
    }

    public static int R(int i10) {
        int i11 = i10 + ((i10 << 15) ^ (-12931));
        int i12 = i11 ^ (i11 >>> 10);
        int i13 = i12 + (i12 << 3);
        int i14 = i13 ^ (i13 >>> 6);
        int i15 = i14 + (i14 << 2) + (i14 << 14);
        return i15 ^ (i15 >>> 16);
    }

    public static <E> ArrayList<E> U(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        E1.a(arrayList, collection.iterator());
        return arrayList;
    }

    public static <K, V> A<K, V> V() {
        return (A<K, V>) f65439D;
    }

    public static <K, V> void f(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
        pVar.r(pVar2);
        pVar2.c(pVar);
    }

    public static <K, V> void g(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
        pVar.s(pVar2);
        pVar2.u(pVar);
    }

    public static <E> Queue<E> k() {
        return (Queue<E>) f65440E;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cd  */
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<K, V> A(Set<? extends K> set, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        w2.H.E(cacheLoader);
        w2.H.E(set);
        O c10 = O.c();
        boolean z10 = true;
        boolean z11 = false;
        try {
            try {
                try {
                    try {
                        try {
                            Map<? super K, V> e10 = cacheLoader.e(set);
                            if (e10 == null) {
                                this.f65461s.e(c10.g(TimeUnit.NANOSECONDS));
                                String valueOf = String.valueOf(cacheLoader);
                                StringBuilder sb2 = new StringBuilder(valueOf.length() + 31);
                                sb2.append(valueOf);
                                sb2.append(" returned null map from loadAll");
                                throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
                            }
                            c10.l();
                            for (Map.Entry<K, V> entry : e10.entrySet()) {
                                K key = entry.getKey();
                                V value = entry.getValue();
                                if (key == null || value == null) {
                                    z11 = true;
                                } else {
                                    put(key, value);
                                }
                            }
                            if (!z11) {
                                this.f65461s.c(c10.g(TimeUnit.NANOSECONDS));
                                return e10;
                            }
                            this.f65461s.e(c10.g(TimeUnit.NANOSECONDS));
                            String valueOf2 = String.valueOf(cacheLoader);
                            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 42);
                            sb3.append(valueOf2);
                            sb3.append(" returned null keys or values from loadAll");
                            throw new CacheLoader.InvalidCacheLoadException(sb3.toString());
                        } catch (RuntimeException e11) {
                            throw new UncheckedExecutionException(e11);
                        }
                    } catch (InterruptedException e12) {
                        Thread.currentThread().interrupt();
                        throw new ExecutionException(e12);
                    }
                } catch (Error e13) {
                    throw new ExecutionError(e13);
                }
            } catch (CacheLoader.UnsupportedLoadingOperationException e14) {
                try {
                    throw e14;
                } catch (Throwable th2) {
                    th = th2;
                    if (!z10) {
                    }
                    throw th;
                }
            } catch (Exception e15) {
                throw new ExecutionException(e15);
            }
        } catch (Throwable th3) {
            th = th3;
            z10 = false;
            if (!z10) {
                this.f65461s.e(c10.g(TimeUnit.NANOSECONDS));
            }
            throw th;
        }
    }

    public long B() {
        long j10 = 0;
        for (int i10 = 0; i10 < this.f65446d.length; i10++) {
            j10 += Math.max(0, r0[i10].f65533c);
        }
        return j10;
    }

    @v2.d
    public com.google.common.cache.p<K, V> C(K k10, int i10, @CheckForNull com.google.common.cache.p<K, V> pVar) {
        r<K, V> T10 = T(i10);
        T10.lock();
        try {
            return T10.E(k10, i10, pVar);
        } finally {
            T10.unlock();
        }
    }

    public final r<K, V>[] D(int i10) {
        return new r[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.d
    public A<K, V> E(com.google.common.cache.p<K, V> pVar, V v10, int i10) {
        return this.f65451i.c(T(pVar.b()), pVar, w2.H.E(v10), i10);
    }

    public void J() {
        while (true) {
            com.google.common.cache.v<K, V> poll = this.f65457o.poll();
            if (poll == null) {
                return;
            }
            try {
                this.f65458p.a(poll);
            } catch (Throwable th2) {
                f65438C.log(Level.WARNING, "Exception thrown by removal listener", th2);
            }
        }
    }

    public void K(com.google.common.cache.p<K, V> pVar) {
        int b10 = pVar.b();
        T(b10).K(pVar, b10);
    }

    public void L(A<K, V> a10) {
        com.google.common.cache.p<K, V> a11 = a10.a();
        int b10 = a11.b();
        T(b10).L(a11.getKey(), b10, a10);
    }

    public boolean M() {
        return n();
    }

    public boolean N() {
        return O() || M();
    }

    public boolean O() {
        return o() || Q();
    }

    public void P(K k10) {
        int w10 = w(w2.H.E(k10));
        T(w10).P(k10, w10, this.f65462t, false);
    }

    public boolean Q() {
        return this.f65456n > 0;
    }

    public r<K, V> T(int i10) {
        return this.f65446d[(i10 >>> this.f65445c) & this.f65444b];
    }

    public boolean W() {
        return X() || M();
    }

    public boolean X() {
        return n() || l();
    }

    public boolean Y() {
        return this.f65450h != t.STRONG;
    }

    public boolean Z() {
        return this.f65451i != t.STRONG;
    }

    public boolean a0() {
        return b0() || O();
    }

    public boolean b0() {
        return o();
    }

    @Override
    public void clear() {
        for (r<K, V> rVar : this.f65446d) {
            rVar.b();
        }
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        int w10 = w(obj);
        return T(w10).f(obj, w10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        long a10 = this.f65459q.a();
        r<K, V>[] rVarArr = this.f65446d;
        long j10 = -1;
        int i10 = 0;
        while (i10 < 3) {
            int length = rVarArr.length;
            long j11 = 0;
            for (?? r12 = z10; r12 < length; r12++) {
                r<K, V> rVar = rVarArr[r12];
                int i11 = rVar.f65533c;
                AtomicReferenceArray<com.google.common.cache.p<K, V>> atomicReferenceArray = rVar.f65537g;
                for (?? r15 = z10; r15 < atomicReferenceArray.length(); r15++) {
                    com.google.common.cache.p<K, V> pVar = atomicReferenceArray.get(r15);
                    while (pVar != null) {
                        r<K, V>[] rVarArr2 = rVarArr;
                        V x10 = rVar.x(pVar, a10);
                        long j12 = a10;
                        if (x10 != null && this.f65449g.d(obj, x10)) {
                            return true;
                        }
                        pVar = pVar.getNext();
                        rVarArr = rVarArr2;
                        a10 = j12;
                    }
                }
                j11 += rVar.f65535e;
                a10 = a10;
                z10 = false;
            }
            long j13 = a10;
            r<K, V>[] rVarArr3 = rVarArr;
            if (j11 == j10) {
                return false;
            }
            i10++;
            j10 = j11;
            rVarArr = rVarArr3;
            a10 = j13;
            z10 = false;
        }
        return z10;
    }

    public void e() {
        for (r<K, V> rVar : this.f65446d) {
            rVar.a();
        }
    }

    @Override
    @v2.c
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f65465w;
        if (set != null) {
            return set;
        }
        C12463h c12463h = new C12463h();
        this.f65465w = c12463h;
        return c12463h;
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int w10 = w(obj);
        return T(w10).q(obj, w10);
    }

    @Override
    @CheckForNull
    public V getOrDefault(@CheckForNull Object obj, @CheckForNull V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @v2.d
    public com.google.common.cache.p<K, V> h(com.google.common.cache.p<K, V> pVar, com.google.common.cache.p<K, V> pVar2) {
        return T(pVar.b()).h(pVar, pVar2);
    }

    public r<K, V> i(int i10, long j10, a.b bVar) {
        return new r<>(this, i10, j10, bVar);
    }

    @Override
    public boolean isEmpty() {
        r<K, V>[] rVarArr = this.f65446d;
        long j10 = 0;
        for (int i10 = 0; i10 < rVarArr.length; i10++) {
            if (rVarArr[i10].f65533c != 0) {
                return false;
            }
            j10 += rVarArr[i10].f65535e;
        }
        if (j10 == 0) {
            return true;
        }
        for (int i11 = 0; i11 < rVarArr.length; i11++) {
            if (rVarArr[i11].f65533c != 0) {
                return false;
            }
            j10 -= rVarArr[i11].f65535e;
        }
        return j10 == 0;
    }

    public boolean j() {
        return this.f65453k != d.e.INSTANCE;
    }

    @Override
    public Set<K> o() {
        Set<K> set = this.f65463u;
        if (set != null) {
            return set;
        }
        C0980k c0980k = new C0980k();
        this.f65463u = c0980k;
        return c0980k;
    }

    public boolean l() {
        return this.f65452j >= 0;
    }

    public boolean m() {
        return o() || n();
    }

    public boolean n() {
        return this.f65454l > 0;
    }

    public boolean o() {
        return this.f65455m > 0;
    }

    public V p(K k10, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int w10 = w(w2.H.E(k10));
        return T(w10).r(k10, w10, cacheLoader);
    }

    @Override
    public V put(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int w10 = w(k10);
        return T(w10).J(k10, w10, v10, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V putIfAbsent(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int w10 = w(k10);
        return T(w10).J(k10, w10, v10, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC12529i1<K, V> q(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap c02 = Q1.c0();
        LinkedHashSet A10 = D2.A();
        int i10 = 0;
        int i11 = 0;
        for (K k10 : iterable) {
            Object obj = get(k10);
            if (!c02.containsKey(k10)) {
                c02.put(k10, obj);
                if (obj == null) {
                    i11++;
                    A10.add(k10);
                } else {
                    i10++;
                }
            }
        }
        try {
            if (!A10.isEmpty()) {
                try {
                    Map A11 = A(Collections.unmodifiableSet(A10), this.f65462t);
                    for (Object obj2 : A10) {
                        Object obj3 = A11.get(obj2);
                        if (obj3 == null) {
                            String valueOf = String.valueOf(obj2);
                            StringBuilder sb2 = new StringBuilder(valueOf.length() + 37);
                            sb2.append("loadAll failed to return a value for ");
                            sb2.append(valueOf);
                            throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
                        }
                        c02.put(obj2, obj3);
                    }
                } catch (CacheLoader.UnsupportedLoadingOperationException unused) {
                    for (Object obj4 : A10) {
                        i11--;
                        c02.put(obj4, p(obj4, this.f65462t));
                    }
                }
            }
            AbstractC12529i1<K, V> n10 = AbstractC12529i1.n(c02);
            this.f65461s.a(i10);
            this.f65461s.d(i11);
            return n10;
        } catch (Throwable th2) {
            this.f65461s.a(i10);
            this.f65461s.d(i11);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC12529i1<K, V> r(Iterable<?> iterable) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        int i11 = 0;
        int i12 = 0;
        for (Object obj : iterable) {
            V v10 = get(obj);
            if (v10 == null) {
                i12++;
            } else {
                i10.i(obj, v10);
                i11++;
            }
        }
        this.f65461s.a(i11);
        this.f65461s.d(i12);
        return i10.c();
    }

    @Override
    public V remove(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int w10 = w(obj);
        return T(w10).Q(obj, w10);
    }

    @Override
    public boolean replace(K k10, @CheckForNull V v10, V v11) {
        w2.H.E(k10);
        w2.H.E(v11);
        if (v10 == null) {
            return false;
        }
        int w10 = w(k10);
        return T(w10).Y(k10, w10, v10, v11);
    }

    public com.google.common.cache.p<K, V> s(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int w10 = w(obj);
        return T(w10).u(obj, w10);
    }

    @Override
    public int size() {
        return com.google.common.primitives.l.x(B());
    }

    @CheckForNull
    public V t(Object obj) {
        int w10 = w(w2.H.E(obj));
        V q10 = T(w10).q(obj, w10);
        if (q10 == null) {
            this.f65461s.d(1);
        } else {
            this.f65461s.a(1);
        }
        return q10;
    }

    @CheckForNull
    public V u(com.google.common.cache.p<K, V> pVar, long j10) {
        V v10;
        if (pVar.getKey() == null || (v10 = pVar.a().get()) == null || y(pVar, j10)) {
            return null;
        }
        return v10;
    }

    public V v(K k10) throws ExecutionException {
        return p(k10, this.f65462t);
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f65464v;
        if (collection != null) {
            return collection;
        }
        B b10 = new B();
        this.f65464v = b10;
        return b10;
    }

    public int w(@CheckForNull Object obj) {
        return R(this.f65448f.f(obj));
    }

    public void x(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public boolean y(com.google.common.cache.p<K, V> pVar, long j10) {
        w2.H.E(pVar);
        if (!n() || j10 - pVar.q() < this.f65454l) {
            return o() && j10 - pVar.g() >= this.f65455m;
        }
        return true;
    }

    @v2.d
    public boolean z(com.google.common.cache.p<K, V> pVar, long j10) {
        return T(pVar.b()).x(pVar, j10) != null;
    }

    @Override
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int w10 = w(obj);
        return T(w10).R(obj, w10, obj2);
    }

    @Override
    public V replace(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int w10 = w(k10);
        return T(w10).X(k10, w10, v10);
    }
}
