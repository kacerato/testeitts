package com.google.common.collect;

import com.google.common.collect.O1;
import com.google.common.collect.P1.InterfaceC12476j;
import com.google.common.collect.P1.o;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.CheckForNull;
import w2.AbstractC15896m;

@v2.c
public class P1<K, V, E extends InterfaceC12476j<K, V, E>, S extends o<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    public static final int f65915k = 1073741824;

    public static final int f65916l = 65536;

    public static final int f65917m = 3;

    public static final int f65918n = 63;

    public static final int f65919o = 16;

    public static final long f65920p = 60;

    public static final H<Object, Object, C12472f> f65921q = new C12467a();

    public static final long f65922r = 5;

    public final transient int f65923b;

    public final transient int f65924c;

    public final transient o<K, V, E, S>[] f65925d;

    public final int f65926e;

    public final AbstractC15896m<Object> f65927f;

    public final transient k<K, V, E, S> f65928g;

    @CheckForNull
    public transient Set<K> f65929h;

    @CheckForNull
    public transient Collection<V> f65930i;

    @CheckForNull
    public transient Set<Map.Entry<K, V>> f65931j;

    public static final class A<K> extends AbstractC12470d<K, O1.a, A<K>> implements x<K, O1.a, A<K>> {

        public static final class a<K> implements k<K, O1.a, A<K>, B<K>> {

            public static final a<?> f65932a = new a<>();

            public static <K> a<K> h() {
                return (a<K>) f65932a;
            }

            @Override
            public q b() {
                return q.WEAK;
            }

            @Override
            public q d() {
                return q.STRONG;
            }

            @Override
            public A<K> c(B<K> b10, A<K> a10, @CheckForNull A<K> a11) {
                if (a10.getKey() == null) {
                    return null;
                }
                return a10.d(b10.f65933i, a11);
            }

            @Override
            public A<K> e(B<K> b10, K k10, int i10, @CheckForNull A<K> a10) {
                return new A<>(b10.f65933i, k10, i10, a10);
            }

            @Override
            public B<K> f(P1<K, O1.a, A<K>, B<K>> p12, int i10, int i11) {
                return new B<>(p12, i10, i11);
            }

            @Override
            public void a(B<K> b10, A<K> a10, O1.a aVar) {
            }
        }

        public A(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull A<K> a10) {
            super(referenceQueue, k10, i10, a10);
        }

        public A<K> d(ReferenceQueue<K> referenceQueue, A<K> a10) {
            return new A<>(referenceQueue, getKey(), this.f65955b, a10);
        }

        @Override
        public O1.a getValue() {
            return O1.a.VALUE;
        }

        public void f(O1.a aVar) {
        }
    }

    public static final class B<K> extends o<K, O1.a, A<K>, B<K>> {

        public final ReferenceQueue<K> f65933i;

        public B(P1<K, O1.a, A<K>, B<K>> p12, int i10, int i11) {
            super(p12, i10, i11);
            this.f65933i = new ReferenceQueue<>();
        }

        @Override
        public A<K> a(InterfaceC12476j<K, O1.a, ?> interfaceC12476j) {
            return (A) interfaceC12476j;
        }

        @Override
        public B<K> R() {
            return this;
        }

        @Override
        public ReferenceQueue<K> o() {
            return this.f65933i;
        }

        @Override
        public void x() {
            c(this.f65933i);
        }

        @Override
        public void y() {
            i(this.f65933i);
        }
    }

    public static final class C<K, V> extends AbstractC12470d<K, V, C<K, V>> implements x<K, V, C<K, V>> {

        @CheckForNull
        public volatile V f65934d;

        public static final class a<K, V> implements k<K, V, C<K, V>, D<K, V>> {

            public static final a<?, ?> f65935a = new a<>();

            public static <K, V> a<K, V> h() {
                return (a<K, V>) f65935a;
            }

            @Override
            public q b() {
                return q.WEAK;
            }

            @Override
            public q d() {
                return q.STRONG;
            }

            @Override
            public C<K, V> c(D<K, V> d10, C<K, V> c10, @CheckForNull C<K, V> c11) {
                if (c10.getKey() == null) {
                    return null;
                }
                return c10.d(d10.f65936i, c11);
            }

            @Override
            public C<K, V> e(D<K, V> d10, K k10, int i10, @CheckForNull C<K, V> c10) {
                return new C<>(d10.f65936i, k10, i10, c10);
            }

            @Override
            public D<K, V> f(P1<K, V, C<K, V>, D<K, V>> p12, int i10, int i11) {
                return new D<>(p12, i10, i11);
            }

            @Override
            public void a(D<K, V> d10, C<K, V> c10, V v10) {
                c10.e(v10);
            }
        }

        public C(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull C<K, V> c10) {
            super(referenceQueue, k10, i10, c10);
            this.f65934d = null;
        }

        public C<K, V> d(ReferenceQueue<K> referenceQueue, C<K, V> c10) {
            C<K, V> c11 = new C<>(referenceQueue, getKey(), this.f65955b, c10);
            c11.e(this.f65934d);
            return c11;
        }

        public void e(V v10) {
            this.f65934d = v10;
        }

        @Override
        @CheckForNull
        public V getValue() {
            return this.f65934d;
        }
    }

    public static final class D<K, V> extends o<K, V, C<K, V>, D<K, V>> {

        public final ReferenceQueue<K> f65936i;

        public D(P1<K, V, C<K, V>, D<K, V>> p12, int i10, int i11) {
            super(p12, i10, i11);
            this.f65936i = new ReferenceQueue<>();
        }

        @Override
        public C<K, V> a(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return (C) interfaceC12476j;
        }

        @Override
        public D<K, V> R() {
            return this;
        }

        @Override
        public ReferenceQueue<K> o() {
            return this.f65936i;
        }

        @Override
        public void x() {
            c(this.f65936i);
        }

        @Override
        public void y() {
            i(this.f65936i);
        }
    }

    public static final class E<K, V> extends AbstractC12470d<K, V, E<K, V>> implements G<K, V, E<K, V>> {

        public volatile H<K, V, E<K, V>> f65937d;

        public static final class a<K, V> implements k<K, V, E<K, V>, F<K, V>> {

            public static final a<?, ?> f65938a = new a<>();

            public static <K, V> a<K, V> h() {
                return (a<K, V>) f65938a;
            }

            @Override
            public q b() {
                return q.WEAK;
            }

            @Override
            public q d() {
                return q.WEAK;
            }

            @Override
            public E<K, V> c(F<K, V> f10, E<K, V> e10, @CheckForNull E<K, V> e11) {
                if (e10.getKey() == null || o.w(e10)) {
                    return null;
                }
                return e10.f(f10.f65939i, f10.f65940j, e11);
            }

            @Override
            public E<K, V> e(F<K, V> f10, K k10, int i10, @CheckForNull E<K, V> e10) {
                return new E<>(f10.f65939i, k10, i10, e10);
            }

            @Override
            public F<K, V> f(P1<K, V, E<K, V>, F<K, V>> p12, int i10, int i11) {
                return new F<>(p12, i10, i11);
            }

            @Override
            public void a(F<K, V> f10, E<K, V> e10, V v10) {
                e10.g(v10, f10.f65940j);
            }
        }

        public E(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull E<K, V> e10) {
            super(referenceQueue, k10, i10, e10);
            this.f65937d = P1.q();
        }

        @Override
        public H<K, V, E<K, V>> a() {
            return this.f65937d;
        }

        @Override
        public void c() {
            this.f65937d.clear();
        }

        public E<K, V> f(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, E<K, V> e10) {
            E<K, V> e11 = new E<>(referenceQueue, getKey(), this.f65955b, e10);
            e11.f65937d = this.f65937d.b(referenceQueue2, e11);
            return e11;
        }

        public void g(V v10, ReferenceQueue<V> referenceQueue) {
            H<K, V, E<K, V>> h10 = this.f65937d;
            this.f65937d = new I(referenceQueue, v10, this);
            h10.clear();
        }

        @Override
        public V getValue() {
            return this.f65937d.get();
        }
    }

    public static final class F<K, V> extends o<K, V, E<K, V>, F<K, V>> {

        public final ReferenceQueue<K> f65939i;

        public final ReferenceQueue<V> f65940j;

        public F(P1<K, V, E<K, V>, F<K, V>> p12, int i10, int i11) {
            super(p12, i10, i11);
            this.f65939i = new ReferenceQueue<>();
            this.f65940j = new ReferenceQueue<>();
        }

        @Override
        public H<K, V, E<K, V>> B(InterfaceC12476j<K, V, ?> interfaceC12476j, V v10) {
            return new I(this.f65940j, v10, a(interfaceC12476j));
        }

        @Override
        public void V(InterfaceC12476j<K, V, ?> interfaceC12476j, H<K, V, ? extends InterfaceC12476j<K, V, ?>> h10) {
            E<K, V> a10 = a(interfaceC12476j);
            H h11 = a10.f65937d;
            a10.f65937d = h10;
            h11.clear();
        }

        @Override
        public E<K, V> a(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return (E) interfaceC12476j;
        }

        @Override
        public F<K, V> R() {
            return this;
        }

        @Override
        public ReferenceQueue<K> o() {
            return this.f65939i;
        }

        @Override
        public ReferenceQueue<V> s() {
            return this.f65940j;
        }

        @Override
        public H<K, V, E<K, V>> u(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return a(interfaceC12476j).a();
        }

        @Override
        public void x() {
            c(this.f65939i);
        }

        @Override
        public void y() {
            i(this.f65939i);
            j(this.f65940j);
        }
    }

    public interface G<K, V, E extends InterfaceC12476j<K, V, E>> extends InterfaceC12476j<K, V, E> {
        H<K, V, E> a();

        void c();
    }

    public interface H<K, V, E extends InterfaceC12476j<K, V, E>> {
        E a();

        H<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10);

        void clear();

        @CheckForNull
        V get();
    }

    public static final class I<K, V, E extends InterfaceC12476j<K, V, E>> extends WeakReference<V> implements H<K, V, E> {

        @q3.i
        public final E f65941b;

        public I(ReferenceQueue<V> referenceQueue, V v10, E e10) {
            super(v10, referenceQueue);
            this.f65941b = e10;
        }

        @Override
        public E a() {
            return this.f65941b;
        }

        @Override
        public H<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10) {
            return new I(referenceQueue, get(), e10);
        }
    }

    public final class J extends AbstractC12519g<K, V> {

        public final K f65942b;

        public V f65943c;

        public J(K k10, V v10) {
            this.f65942b = k10;
            this.f65943c = v10;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f65942b.equals(entry.getKey()) && this.f65943c.equals(entry.getValue());
        }

        @Override
        public K getKey() {
            return this.f65942b;
        }

        @Override
        public V getValue() {
            return this.f65943c;
        }

        @Override
        public int hashCode() {
            return this.f65942b.hashCode() ^ this.f65943c.hashCode();
        }

        @Override
        public V setValue(V v10) {
            V v11 = (V) P1.this.put(this.f65942b, v10);
            this.f65943c = v10;
            return v11;
        }
    }

    public class C12467a implements H<Object, Object, C12472f> {
        @Override
        public H<Object, Object, C12472f> b(ReferenceQueue<Object> referenceQueue, C12472f c12472f) {
            return this;
        }

        @Override
        public void clear() {
        }

        @Override
        public C12472f a() {
            return null;
        }

        @Override
        public Object get() {
            return null;
        }
    }

    public static abstract class AbstractC12468b<K, V> extends AbstractConcurrentMapC12567s0<K, V> implements Serializable {

        public static final long f65945h = 3;

        public final q f65946b;

        public final q f65947c;

        public final AbstractC15896m<Object> f65948d;

        public final AbstractC15896m<Object> f65949e;

        public final int f65950f;

        public transient ConcurrentMap<K, V> f65951g;

        public AbstractC12468b(q qVar, q qVar2, AbstractC15896m<Object> abstractC15896m, AbstractC15896m<Object> abstractC15896m2, int i10, ConcurrentMap<K, V> concurrentMap) {
            this.f65946b = qVar;
            this.f65947c = qVar2;
            this.f65948d = abstractC15896m;
            this.f65949e = abstractC15896m2;
            this.f65950f = i10;
            this.f65951g = concurrentMap;
        }

        @Override
        public ConcurrentMap<K, V> k0() {
            return this.f65951g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void C0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.f65951g.put(readObject, objectInputStream.readObject());
            }
        }

        public O1 D0(ObjectInputStream objectInputStream) throws IOException {
            return new O1().g(objectInputStream.readInt()).j(this.f65946b).k(this.f65947c).h(this.f65948d).a(this.f65950f);
        }

        public void E0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.f65951g.size());
            for (Map.Entry<K, V> entry : this.f65951g.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    public static abstract class AbstractC12469c<K, V, E extends InterfaceC12476j<K, V, E>> implements InterfaceC12476j<K, V, E> {

        public final K f65952b;

        public final int f65953c;

        @CheckForNull
        public final E f65954d;

        public AbstractC12469c(K k10, int i10, @CheckForNull E e10) {
            this.f65952b = k10;
            this.f65953c = i10;
            this.f65954d = e10;
        }

        @Override
        public int b() {
            return this.f65953c;
        }

        @Override
        public K getKey() {
            return this.f65952b;
        }

        @Override
        public E getNext() {
            return this.f65954d;
        }
    }

    public static abstract class AbstractC12470d<K, V, E extends InterfaceC12476j<K, V, E>> extends WeakReference<K> implements InterfaceC12476j<K, V, E> {

        public final int f65955b;

        @CheckForNull
        public final E f65956c;

        public AbstractC12470d(ReferenceQueue<K> referenceQueue, K k10, int i10, @CheckForNull E e10) {
            super(k10, referenceQueue);
            this.f65955b = i10;
            this.f65956c = e10;
        }

        @Override
        public int b() {
            return this.f65955b;
        }

        @Override
        public K getKey() {
            return get();
        }

        @Override
        public E getNext() {
            return this.f65956c;
        }
    }

    public static final class RunnableC12471e implements Runnable {

        public final WeakReference<P1<?, ?, ?, ?>> f65957b;

        public RunnableC12471e(P1<?, ?, ?, ?> p12) {
            this.f65957b = new WeakReference<>(p12);
        }

        @Override
        public void run() {
            P1<?, ?, ?, ?> p12 = this.f65957b.get();
            if (p12 == null) {
                throw new CancellationException();
            }
            for (o<?, ?, ?, ?> oVar : p12.f65925d) {
                oVar.P();
            }
        }
    }

    public static final class C12472f implements InterfaceC12476j<Object, Object, C12472f> {
        public C12472f() {
            throw new AssertionError();
        }

        @Override
        public int b() {
            throw new AssertionError();
        }

        @Override
        public C12472f getNext() {
            throw new AssertionError();
        }

        @Override
        public Object getKey() {
            throw new AssertionError();
        }

        @Override
        public Object getValue() {
            throw new AssertionError();
        }
    }

    public final class C12473g extends P1<K, V, E, S>.AbstractC12475i<Map.Entry<K, V>> {
        public C12473g(P1 p12) {
            super();
        }

        @Override
        public Map.Entry<K, V> next() {
            return d();
        }
    }

    public final class C12474h extends n<Map.Entry<K, V>> {
        public C12474h() {
            super(null);
        }

        @Override
        public void clear() {
            P1.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = P1.this.get(key)) != null && P1.this.r().d(entry.getValue(), obj2);
        }

        @Override
        public boolean isEmpty() {
            return P1.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C12473g(P1.this);
        }

        @Override
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && P1.this.remove(key, entry.getValue());
        }

        @Override
        public int size() {
            return P1.this.size();
        }
    }

    public abstract class AbstractC12475i<T> implements Iterator<T> {

        public int f65959b;

        public int f65960c = -1;

        @CheckForNull
        public o<K, V, E, S> f65961d;

        @CheckForNull
        public AtomicReferenceArray<E> f65962e;

        @CheckForNull
        public E f65963f;

        @CheckForNull
        public P1<K, V, E, S>.J f65964g;

        @CheckForNull
        public P1<K, V, E, S>.J f65965h;

        public AbstractC12475i() {
            this.f65959b = P1.this.f65925d.length - 1;
            a();
        }

        public final void a() {
            this.f65964g = null;
            if (e() || f()) {
                return;
            }
            while (true) {
                int i10 = this.f65959b;
                if (i10 < 0) {
                    return;
                }
                o<K, V, E, S>[] oVarArr = P1.this.f65925d;
                this.f65959b = i10 - 1;
                o<K, V, E, S> oVar = oVarArr[i10];
                this.f65961d = oVar;
                if (oVar.f65969c != 0) {
                    this.f65962e = this.f65961d.f65972f;
                    this.f65960c = r0.length() - 1;
                    if (f()) {
                        return;
                    }
                }
            }
        }

        public boolean b(E e10) {
            try {
                Object key = e10.getKey();
                Object g10 = P1.this.g(e10);
                if (g10 == null) {
                    this.f65961d.C();
                    return false;
                }
                this.f65964g = new J(key, g10);
                this.f65961d.C();
                return true;
            } catch (Throwable th2) {
                this.f65961d.C();
                throw th2;
            }
        }

        public P1<K, V, E, S>.J d() {
            P1<K, V, E, S>.J j10 = this.f65964g;
            if (j10 == null) {
                throw new NoSuchElementException();
            }
            this.f65965h = j10;
            a();
            return this.f65965h;
        }

        public boolean e() {
            E e10 = this.f65963f;
            if (e10 == null) {
                return false;
            }
            while (true) {
                this.f65963f = (E) e10.getNext();
                E e11 = this.f65963f;
                if (e11 == null) {
                    return false;
                }
                if (b(e11)) {
                    return true;
                }
                e10 = this.f65963f;
            }
        }

        public boolean f() {
            while (true) {
                int i10 = this.f65960c;
                if (i10 < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f65962e;
                this.f65960c = i10 - 1;
                E e10 = atomicReferenceArray.get(i10);
                this.f65963f = e10;
                if (e10 != null && (b(e10) || e())) {
                    return true;
                }
            }
        }

        @Override
        public boolean hasNext() {
            return this.f65964g != null;
        }

        @Override
        public abstract T next();

        @Override
        public void remove() {
            com.google.common.collect.B.e(this.f65965h != null);
            P1.this.remove(this.f65965h.getKey());
            this.f65965h = null;
        }
    }

    public interface InterfaceC12476j<K, V, E extends InterfaceC12476j<K, V, E>> {
        int b();

        K getKey();

        E getNext();

        V getValue();
    }

    public interface k<K, V, E extends InterfaceC12476j<K, V, E>, S extends o<K, V, E, S>> {
        void a(S s10, E e10, V v10);

        q b();

        E c(S s10, E e10, @CheckForNull E e11);

        q d();

        E e(S s10, K k10, int i10, @CheckForNull E e10);

        S f(P1<K, V, E, S> p12, int i10, int i11);
    }

    public final class l extends P1<K, V, E, S>.AbstractC12475i<K> {
        public l(P1 p12) {
            super();
        }

        @Override
        public K next() {
            return d().getKey();
        }
    }

    public final class m extends n<K> {
        public m() {
            super(null);
        }

        @Override
        public void clear() {
            P1.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return P1.this.containsKey(obj);
        }

        @Override
        public boolean isEmpty() {
            return P1.this.isEmpty();
        }

        @Override
        public Iterator<K> iterator() {
            return new l(P1.this);
        }

        @Override
        public boolean remove(Object obj) {
            return P1.this.remove(obj) != null;
        }

        @Override
        public int size() {
            return P1.this.size();
        }
    }

    public static abstract class n<E> extends AbstractSet<E> {
        public n() {
        }

        @Override
        public Object[] toArray() {
            return P1.p(this).toArray();
        }

        public n(C12467a c12467a) {
            this();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) P1.p(this).toArray(tArr);
        }
    }

    public static abstract class o<K, V, E extends InterfaceC12476j<K, V, E>, S extends o<K, V, E, S>> extends ReentrantLock {

        @q3.i
        public final P1<K, V, E, S> f65968b;

        public volatile int f65969c;

        public int f65970d;

        public int f65971e;

        @CheckForNull
        public volatile AtomicReferenceArray<E> f65972f;

        public final int f65973g;

        public final AtomicInteger f65974h = new AtomicInteger();

        public o(P1<K, V, E, S> p12, int i10, int i11) {
            this.f65968b = p12;
            this.f65973g = i11;
            v(z(i10));
        }

        public static <K, V, E extends InterfaceC12476j<K, V, E>> boolean w(E e10) {
            return e10.getValue() == null;
        }

        public E A(K k10, int i10, @CheckForNull InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return this.f65968b.f65928g.e(R(), k10, i10, a(interfaceC12476j));
        }

        public H<K, V, E> B(InterfaceC12476j<K, V, ?> interfaceC12476j, V v10) {
            throw new AssertionError();
        }

        public void C() {
            if ((this.f65974h.incrementAndGet() & 63) == 0) {
                P();
            }
        }

        @J2.a("this")
        public void D() {
            Q();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public V E(K k10, int i10, V v10, boolean z10) {
            lock();
            try {
                D();
                int i11 = this.f65969c + 1;
                if (i11 > this.f65971e) {
                    k();
                    i11 = this.f65969c + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(k10, key)) {
                        V v11 = (V) interfaceC12476j2.getValue();
                        if (v11 == null) {
                            this.f65970d++;
                            T(interfaceC12476j2, v10);
                            this.f65969c = this.f65969c;
                            unlock();
                            return null;
                        }
                        if (z10) {
                            unlock();
                            return v11;
                        }
                        this.f65970d++;
                        T(interfaceC12476j2, v10);
                        unlock();
                        return v11;
                    }
                }
                this.f65970d++;
                InterfaceC12476j e10 = this.f65968b.f65928g.e(R(), k10, i10, interfaceC12476j);
                T(e10, v10);
                atomicReferenceArray.set(length, e10);
                this.f65969c = i11;
                unlock();
                return null;
            } catch (Throwable th2) {
                unlock();
                throw th2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public boolean F(E e10, int i10) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = i10 & (atomicReferenceArray.length() - 1);
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    if (interfaceC12476j2 == e10) {
                        this.f65970d++;
                        InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                        int i11 = this.f65969c - 1;
                        atomicReferenceArray.set(length, K10);
                        this.f65969c = i11;
                        return true;
                    }
                }
                unlock();
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public boolean G(K k10, int i10, H<K, V, E> h10) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(k10, key)) {
                        if (((G) interfaceC12476j2).a() != h10) {
                            return false;
                        }
                        this.f65970d++;
                        InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                        int i11 = this.f65969c - 1;
                        atomicReferenceArray.set(length, K10);
                        this.f65969c = i11;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public V H(Object obj, int i10) {
            lock();
            try {
                D();
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(obj, key)) {
                        V v10 = (V) interfaceC12476j2.getValue();
                        if (v10 == null && !w(interfaceC12476j2)) {
                            return null;
                        }
                        this.f65970d++;
                        InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                        int i11 = this.f65969c - 1;
                        atomicReferenceArray.set(length, K10);
                        this.f65969c = i11;
                        return v10;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        
            if (r8.f65968b.r().d(r11, r4.getValue()) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        
            r8.f65970d++;
            r9 = K(r3, r4);
            r10 = r8.f65969c - 1;
            r0.set(r1, r9);
            r8.f65969c = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        
            if (w(r4) == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
        
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean I(Object obj, int i10, Object obj2) {
            lock();
            try {
                D();
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                InterfaceC12476j interfaceC12476j2 = interfaceC12476j;
                while (true) {
                    boolean z10 = false;
                    if (interfaceC12476j2 == null) {
                        return false;
                    }
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(obj, key)) {
                        break;
                    }
                    interfaceC12476j2 = interfaceC12476j2.getNext();
                }
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @J2.a("this")
        public boolean J(E e10) {
            int b10 = e10.b();
            AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
            int length = b10 & (atomicReferenceArray.length() - 1);
            InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
            for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                if (interfaceC12476j2 == e10) {
                    this.f65970d++;
                    InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                    int i10 = this.f65969c - 1;
                    atomicReferenceArray.set(length, K10);
                    this.f65969c = i10;
                    return true;
                }
            }
            return false;
        }

        @J2.a("this")
        public E K(E e10, E e11) {
            int i10 = this.f65969c;
            E e12 = (E) e11.getNext();
            while (e10 != e11) {
                E g10 = g(e10, e12);
                if (g10 != null) {
                    e12 = g10;
                } else {
                    i10--;
                }
                e10 = (E) e10.getNext();
            }
            this.f65969c = i10;
            return e12;
        }

        public E L(InterfaceC12476j<K, V, ?> interfaceC12476j, InterfaceC12476j<K, V, ?> interfaceC12476j2) {
            return K(a(interfaceC12476j), a(interfaceC12476j2));
        }

        @I2.a
        public boolean M(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return J(a(interfaceC12476j));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public V N(K k10, int i10, V v10) {
            lock();
            try {
                D();
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(k10, key)) {
                        V v11 = (V) interfaceC12476j2.getValue();
                        if (v11 != null) {
                            this.f65970d++;
                            T(interfaceC12476j2, v10);
                            return v11;
                        }
                        if (w(interfaceC12476j2)) {
                            this.f65970d++;
                            InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                            int i11 = this.f65969c - 1;
                            atomicReferenceArray.set(length, K10);
                            this.f65969c = i11;
                        }
                        return null;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean O(K k10, int i10, V v10, V v11) {
            lock();
            try {
                D();
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(k10, key)) {
                        Object value = interfaceC12476j2.getValue();
                        if (value != null) {
                            if (!this.f65968b.r().d(v10, value)) {
                                return false;
                            }
                            this.f65970d++;
                            T(interfaceC12476j2, v11);
                            return true;
                        }
                        if (w(interfaceC12476j2)) {
                            this.f65970d++;
                            InterfaceC12476j K10 = K(interfaceC12476j, interfaceC12476j2);
                            int i11 = this.f65969c - 1;
                            atomicReferenceArray.set(length, K10);
                            this.f65969c = i11;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public void P() {
            Q();
        }

        public void Q() {
            if (tryLock()) {
                try {
                    y();
                    this.f65974h.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S R();

        public void S(int i10, InterfaceC12476j<K, V, ?> interfaceC12476j) {
            this.f65972f.set(i10, a(interfaceC12476j));
        }

        public void T(E e10, V v10) {
            this.f65968b.f65928g.a(R(), e10, v10);
        }

        public void U(InterfaceC12476j<K, V, ?> interfaceC12476j, V v10) {
            this.f65968b.f65928g.a(R(), a(interfaceC12476j), v10);
        }

        public void V(InterfaceC12476j<K, V, ?> interfaceC12476j, H<K, V, ? extends InterfaceC12476j<K, V, ?>> h10) {
            throw new AssertionError();
        }

        public void W() {
            if (tryLock()) {
                try {
                    y();
                } finally {
                    unlock();
                }
            }
        }

        public abstract E a(InterfaceC12476j<K, V, ?> interfaceC12476j);

        public void b() {
            if (this.f65969c != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        atomicReferenceArray.set(i10, null);
                    }
                    x();
                    this.f65974h.set(0);
                    this.f65970d++;
                    this.f65969c = 0;
                    unlock();
                } catch (Throwable th2) {
                    unlock();
                    throw th2;
                }
            }
        }

        public <T> void c(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public boolean d(K k10, int i10, H<K, V, ? extends InterfaceC12476j<K, V, ?>> h10) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                int length = (atomicReferenceArray.length() - 1) & i10;
                InterfaceC12476j interfaceC12476j = (InterfaceC12476j) atomicReferenceArray.get(length);
                for (InterfaceC12476j interfaceC12476j2 = interfaceC12476j; interfaceC12476j2 != null; interfaceC12476j2 = interfaceC12476j2.getNext()) {
                    Object key = interfaceC12476j2.getKey();
                    if (interfaceC12476j2.b() == i10 && key != null && this.f65968b.f65927f.d(k10, key)) {
                        if (((G) interfaceC12476j2).a() != h10) {
                            return false;
                        }
                        atomicReferenceArray.set(length, K(interfaceC12476j, interfaceC12476j2));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public boolean e(Object obj, int i10) {
            try {
                boolean z10 = false;
                if (this.f65969c == 0) {
                    return false;
                }
                E p10 = p(obj, i10);
                if (p10 != null) {
                    if (p10.getValue() != null) {
                        z10 = true;
                    }
                }
                return z10;
            } finally {
                C();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @v2.d
        public boolean f(Object obj) {
            try {
                if (this.f65969c != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
                    int length = atomicReferenceArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        for (E e10 = atomicReferenceArray.get(i10); e10 != null; e10 = e10.getNext()) {
                            Object q10 = q(e10);
                            if (q10 != null && this.f65968b.r().d(obj, q10)) {
                                C();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                C();
            }
        }

        public E g(E e10, E e11) {
            return this.f65968b.f65928g.c(R(), e10, e11);
        }

        public E h(InterfaceC12476j<K, V, ?> interfaceC12476j, @CheckForNull InterfaceC12476j<K, V, ?> interfaceC12476j2) {
            return this.f65968b.f65928g.c(R(), a(interfaceC12476j), a(interfaceC12476j2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @J2.a("this")
        public void i(ReferenceQueue<K> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f65968b.l((InterfaceC12476j) poll);
                i10++;
            } while (i10 != 16);
        }

        @J2.a("this")
        public void j(ReferenceQueue<V> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f65968b.m((H) poll);
                i10++;
            } while (i10 != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @J2.a("this")
        public void k() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f65972f;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i10 = this.f65969c;
            Ue.a aVar = (AtomicReferenceArray<E>) z(length << 1);
            this.f65971e = (aVar.length() * 3) / 4;
            int length2 = aVar.length() - 1;
            for (int i11 = 0; i11 < length; i11++) {
                E e10 = atomicReferenceArray.get(i11);
                if (e10 != null) {
                    InterfaceC12476j next = e10.getNext();
                    int b10 = e10.b() & length2;
                    if (next == null) {
                        aVar.set(b10, e10);
                    } else {
                        InterfaceC12476j interfaceC12476j = e10;
                        while (next != null) {
                            int b11 = next.b() & length2;
                            if (b11 != b10) {
                                interfaceC12476j = next;
                                b10 = b11;
                            }
                            next = next.getNext();
                        }
                        aVar.set(b10, interfaceC12476j);
                        while (e10 != interfaceC12476j) {
                            int b12 = e10.b() & length2;
                            InterfaceC12476j g10 = g(e10, (InterfaceC12476j) aVar.get(b12));
                            if (g10 != null) {
                                aVar.set(b12, g10);
                            } else {
                                i10--;
                            }
                            e10 = e10.getNext();
                        }
                    }
                }
            }
            this.f65972f = aVar;
            this.f65969c = i10;
        }

        public V l(Object obj, int i10) {
            try {
                E p10 = p(obj, i10);
                if (p10 == null) {
                    C();
                    return null;
                }
                V v10 = (V) p10.getValue();
                if (v10 == null) {
                    W();
                }
                return v10;
            } finally {
                C();
            }
        }

        public E m(Object obj, int i10) {
            if (this.f65969c == 0) {
                return null;
            }
            for (E n10 = n(i10); n10 != null; n10 = (E) n10.getNext()) {
                if (n10.b() == i10) {
                    Object key = n10.getKey();
                    if (key == null) {
                        W();
                    } else if (this.f65968b.f65927f.d(obj, key)) {
                        return n10;
                    }
                }
            }
            return null;
        }

        public E n(int i10) {
            return this.f65972f.get(i10 & (r0.length() - 1));
        }

        public ReferenceQueue<K> o() {
            throw new AssertionError();
        }

        public E p(Object obj, int i10) {
            return m(obj, i10);
        }

        @CheckForNull
        public V q(E e10) {
            if (e10.getKey() == null) {
                W();
                return null;
            }
            V v10 = (V) e10.getValue();
            if (v10 != null) {
                return v10;
            }
            W();
            return null;
        }

        @CheckForNull
        public V r(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return q(a(interfaceC12476j));
        }

        public ReferenceQueue<V> s() {
            throw new AssertionError();
        }

        public H<K, V, E> u(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            throw new AssertionError();
        }

        public void v(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.f65971e = length;
            if (length == this.f65973g) {
                this.f65971e = length + 1;
            }
            this.f65972f = atomicReferenceArray;
        }

        public void x() {
        }

        @J2.a("this")
        public void y() {
        }

        public AtomicReferenceArray<E> z(int i10) {
            return new AtomicReferenceArray<>(i10);
        }
    }

    public static final class p<K, V> extends AbstractC12468b<K, V> {

        public static final long f65975i = 3;

        public p(q qVar, q qVar2, AbstractC15896m<Object> abstractC15896m, AbstractC15896m<Object> abstractC15896m2, int i10, ConcurrentMap<K, V> concurrentMap) {
            super(qVar, qVar2, abstractC15896m, abstractC15896m2, i10, concurrentMap);
        }

        private void F0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f65951g = D0(objectInputStream).i();
            C0(objectInputStream);
        }

        private Object G0() {
            return this.f65951g;
        }

        private void H0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            E0(objectOutputStream);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class q {
        public static final q STRONG = new a("STRONG", 0);
        public static final q WEAK = new b("WEAK", 1);
        private static final q[] $VALUES = a();

        public enum a extends q {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public AbstractC15896m<Object> b() {
                return AbstractC15896m.c();
            }
        }

        public enum b extends q {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public AbstractC15896m<Object> b() {
                return AbstractC15896m.g();
            }
        }

        public q(String str, int i10) {
        }

        public static q[] a() {
            return new q[]{STRONG, WEAK};
        }

        public static q valueOf(String str) {
            return (q) Enum.valueOf(q.class, str);
        }

        public static q[] values() {
            return (q[]) $VALUES.clone();
        }

        public abstract AbstractC15896m<Object> b();

        public q(String str, int i10, C12467a c12467a) {
            this(str, i10);
        }
    }

    public static final class r<K> extends AbstractC12469c<K, O1.a, r<K>> implements x<K, O1.a, r<K>> {

        public static final class a<K> implements k<K, O1.a, r<K>, s<K>> {

            public static final a<?> f65976a = new a<>();

            public static <K> a<K> h() {
                return (a<K>) f65976a;
            }

            @Override
            public q b() {
                return q.STRONG;
            }

            @Override
            public q d() {
                return q.STRONG;
            }

            @Override
            public r<K> c(s<K> sVar, r<K> rVar, @CheckForNull r<K> rVar2) {
                return rVar.d(rVar2);
            }

            @Override
            public r<K> e(s<K> sVar, K k10, int i10, @CheckForNull r<K> rVar) {
                return new r<>(k10, i10, rVar);
            }

            @Override
            public s<K> f(P1<K, O1.a, r<K>, s<K>> p12, int i10, int i11) {
                return new s<>(p12, i10, i11);
            }

            @Override
            public void a(s<K> sVar, r<K> rVar, O1.a aVar) {
            }
        }

        public r(K k10, int i10, @CheckForNull r<K> rVar) {
            super(k10, i10, rVar);
        }

        public r<K> d(r<K> rVar) {
            return new r<>(this.f65952b, this.f65953c, rVar);
        }

        @Override
        public O1.a getValue() {
            return O1.a.VALUE;
        }

        public void f(O1.a aVar) {
        }
    }

    public static final class s<K> extends o<K, O1.a, r<K>, s<K>> {
        public s(P1<K, O1.a, r<K>, s<K>> p12, int i10, int i11) {
            super(p12, i10, i11);
        }

        @Override
        public r<K> a(InterfaceC12476j<K, O1.a, ?> interfaceC12476j) {
            return (r) interfaceC12476j;
        }

        @Override
        public s<K> R() {
            return this;
        }
    }

    public static final class t<K, V> extends AbstractC12469c<K, V, t<K, V>> implements x<K, V, t<K, V>> {

        @CheckForNull
        public volatile V f65977e;

        public static final class a<K, V> implements k<K, V, t<K, V>, u<K, V>> {

            public static final a<?, ?> f65978a = new a<>();

            public static <K, V> a<K, V> h() {
                return (a<K, V>) f65978a;
            }

            @Override
            public q b() {
                return q.STRONG;
            }

            @Override
            public q d() {
                return q.STRONG;
            }

            @Override
            public t<K, V> c(u<K, V> uVar, t<K, V> tVar, @CheckForNull t<K, V> tVar2) {
                return tVar.d(tVar2);
            }

            @Override
            public t<K, V> e(u<K, V> uVar, K k10, int i10, @CheckForNull t<K, V> tVar) {
                return new t<>(k10, i10, tVar);
            }

            @Override
            public u<K, V> f(P1<K, V, t<K, V>, u<K, V>> p12, int i10, int i11) {
                return new u<>(p12, i10, i11);
            }

            @Override
            public void a(u<K, V> uVar, t<K, V> tVar, V v10) {
                tVar.e(v10);
            }
        }

        public t(K k10, int i10, @CheckForNull t<K, V> tVar) {
            super(k10, i10, tVar);
            this.f65977e = null;
        }

        public t<K, V> d(t<K, V> tVar) {
            t<K, V> tVar2 = new t<>(this.f65952b, this.f65953c, tVar);
            tVar2.f65977e = this.f65977e;
            return tVar2;
        }

        public void e(V v10) {
            this.f65977e = v10;
        }

        @Override
        @CheckForNull
        public V getValue() {
            return this.f65977e;
        }
    }

    public static final class u<K, V> extends o<K, V, t<K, V>, u<K, V>> {
        public u(P1<K, V, t<K, V>, u<K, V>> p12, int i10, int i11) {
            super(p12, i10, i11);
        }

        @Override
        public t<K, V> a(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return (t) interfaceC12476j;
        }

        @Override
        public u<K, V> R() {
            return this;
        }
    }

    public static final class v<K, V> extends AbstractC12469c<K, V, v<K, V>> implements G<K, V, v<K, V>> {

        public volatile H<K, V, v<K, V>> f65979e;

        public static final class a<K, V> implements k<K, V, v<K, V>, w<K, V>> {

            public static final a<?, ?> f65980a = new a<>();

            public static <K, V> a<K, V> h() {
                return (a<K, V>) f65980a;
            }

            @Override
            public q b() {
                return q.STRONG;
            }

            @Override
            public q d() {
                return q.WEAK;
            }

            @Override
            public v<K, V> c(w<K, V> wVar, v<K, V> vVar, @CheckForNull v<K, V> vVar2) {
                if (o.w(vVar)) {
                    return null;
                }
                return vVar.f(wVar.f65981i, vVar2);
            }

            @Override
            public v<K, V> e(w<K, V> wVar, K k10, int i10, @CheckForNull v<K, V> vVar) {
                return new v<>(k10, i10, vVar);
            }

            @Override
            public w<K, V> f(P1<K, V, v<K, V>, w<K, V>> p12, int i10, int i11) {
                return new w<>(p12, i10, i11);
            }

            @Override
            public void a(w<K, V> wVar, v<K, V> vVar, V v10) {
                vVar.g(v10, wVar.f65981i);
            }
        }

        public v(K k10, int i10, @CheckForNull v<K, V> vVar) {
            super(k10, i10, vVar);
            this.f65979e = P1.q();
        }

        @Override
        public H<K, V, v<K, V>> a() {
            return this.f65979e;
        }

        @Override
        public void c() {
            this.f65979e.clear();
        }

        public v<K, V> f(ReferenceQueue<V> referenceQueue, v<K, V> vVar) {
            v<K, V> vVar2 = new v<>(this.f65952b, this.f65953c, vVar);
            vVar2.f65979e = this.f65979e.b(referenceQueue, vVar2);
            return vVar2;
        }

        public void g(V v10, ReferenceQueue<V> referenceQueue) {
            H<K, V, v<K, V>> h10 = this.f65979e;
            this.f65979e = new I(referenceQueue, v10, this);
            h10.clear();
        }

        @Override
        public V getValue() {
            return this.f65979e.get();
        }
    }

    public static final class w<K, V> extends o<K, V, v<K, V>, w<K, V>> {

        public final ReferenceQueue<V> f65981i;

        public w(P1<K, V, v<K, V>, w<K, V>> p12, int i10, int i11) {
            super(p12, i10, i11);
            this.f65981i = new ReferenceQueue<>();
        }

        @Override
        public H<K, V, v<K, V>> B(InterfaceC12476j<K, V, ?> interfaceC12476j, V v10) {
            return new I(this.f65981i, v10, a(interfaceC12476j));
        }

        @Override
        public void V(InterfaceC12476j<K, V, ?> interfaceC12476j, H<K, V, ? extends InterfaceC12476j<K, V, ?>> h10) {
            v<K, V> a10 = a(interfaceC12476j);
            H h11 = a10.f65979e;
            a10.f65979e = h10;
            h11.clear();
        }

        @Override
        public v<K, V> a(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return (v) interfaceC12476j;
        }

        @Override
        public w<K, V> R() {
            return this;
        }

        @Override
        public ReferenceQueue<V> s() {
            return this.f65981i;
        }

        @Override
        public H<K, V, v<K, V>> u(InterfaceC12476j<K, V, ?> interfaceC12476j) {
            return a(interfaceC12476j).a();
        }

        @Override
        public void x() {
            c(this.f65981i);
        }

        @Override
        public void y() {
            j(this.f65981i);
        }
    }

    public interface x<K, V, E extends InterfaceC12476j<K, V, E>> extends InterfaceC12476j<K, V, E> {
    }

    public final class y extends P1<K, V, E, S>.AbstractC12475i<V> {
        public y(P1 p12) {
            super();
        }

        @Override
        public V next() {
            return d().getValue();
        }
    }

    public final class z extends AbstractCollection<V> {
        public z() {
        }

        @Override
        public void clear() {
            P1.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return P1.this.containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return P1.this.isEmpty();
        }

        @Override
        public Iterator<V> iterator() {
            return new y(P1.this);
        }

        @Override
        public int size() {
            return P1.this.size();
        }

        @Override
        public Object[] toArray() {
            return P1.p(this).toArray();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) P1.p(this).toArray(tArr);
        }
    }

    public P1(O1 o12, k<K, V, E, S> kVar) {
        this.f65926e = Math.min(o12.b(), 65536);
        this.f65927f = o12.d();
        this.f65928g = kVar;
        int min = Math.min(o12.c(), 1073741824);
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        int i13 = 1;
        while (i13 < this.f65926e) {
            i12++;
            i13 <<= 1;
        }
        this.f65924c = 32 - i12;
        this.f65923b = i13 - 1;
        this.f65925d = k(i13);
        int i14 = min / i13;
        while (i11 < (i13 * i14 < min ? i14 + 1 : i14)) {
            i11 <<= 1;
        }
        while (true) {
            o<K, V, E, S>[] oVarArr = this.f65925d;
            if (i10 >= oVarArr.length) {
                return;
            }
            oVarArr[i10] = d(i11, -1);
            i10++;
        }
    }

    public static <K, V> P1<K, V, ? extends InterfaceC12476j<K, V, ?>, ?> c(O1 o12) {
        q e10 = o12.e();
        q qVar = q.STRONG;
        if (e10 == qVar && o12.f() == qVar) {
            return new P1<>(o12, t.a.h());
        }
        if (o12.e() == qVar && o12.f() == q.WEAK) {
            return new P1<>(o12, v.a.h());
        }
        q e11 = o12.e();
        q qVar2 = q.WEAK;
        if (e11 == qVar2 && o12.f() == qVar) {
            return new P1<>(o12, C.a.h());
        }
        if (o12.e() == qVar2 && o12.f() == qVar2) {
            return new P1<>(o12, E.a.h());
        }
        throw new AssertionError();
    }

    public static <K> P1<K, O1.a, ? extends InterfaceC12476j<K, O1.a, ?>, ?> e(O1 o12) {
        q e10 = o12.e();
        q qVar = q.STRONG;
        if (e10 == qVar && o12.f() == qVar) {
            return new P1<>(o12, r.a.h());
        }
        q e11 = o12.e();
        q qVar2 = q.WEAK;
        if (e11 == qVar2 && o12.f() == qVar) {
            return new P1<>(o12, A.a.h());
        }
        if (o12.f() == qVar2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    public static int n(int i10) {
        int i11 = i10 + ((i10 << 15) ^ (-12931));
        int i12 = i11 ^ (i11 >>> 10);
        int i13 = i12 + (i12 << 3);
        int i14 = i13 ^ (i13 >>> 6);
        int i15 = i14 + (i14 << 2) + (i14 << 14);
        return i15 ^ (i15 >>> 16);
    }

    public static <E> ArrayList<E> p(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        E1.a(arrayList, collection.iterator());
        return arrayList;
    }

    public static <K, V, E extends InterfaceC12476j<K, V, E>> H<K, V, E> q() {
        return (H<K, V, E>) f65921q;
    }

    @v2.d
    public E b(E e10, E e11) {
        return o(e10.b()).g(e10, e11);
    }

    @Override
    public void clear() {
        for (o<K, V, E, S> oVar : this.f65925d) {
            oVar.b();
        }
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        int h10 = h(obj);
        return o(h10).e(obj, h10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.common.collect.P1$o] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.P1$o<K, V, E extends com.google.common.collect.P1$j<K, V, E>, S extends com.google.common.collect.P1$o<K, V, E, S>>[]] */
    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        o<K, V, E, S>[] oVarArr = this.f65925d;
        long j10 = -1;
        int i10 = 0;
        while (i10 < 3) {
            int length = oVarArr.length;
            long j11 = 0;
            for (?? r10 = z10; r10 < length; r10++) {
                ?? r11 = oVarArr[r10];
                int i11 = r11.f65969c;
                AtomicReferenceArray<E> atomicReferenceArray = r11.f65972f;
                for (?? r13 = z10; r13 < atomicReferenceArray.length(); r13++) {
                    for (E e10 = atomicReferenceArray.get(r13); e10 != null; e10 = e10.getNext()) {
                        Object q10 = r11.q(e10);
                        if (q10 != null && r().d(obj, q10)) {
                            return true;
                        }
                    }
                }
                j11 += r11.f65970d;
                z10 = false;
            }
            if (j11 == j10) {
                return false;
            }
            i10++;
            j10 = j11;
            z10 = false;
        }
        return z10;
    }

    public o<K, V, E, S> d(int i10, int i11) {
        return this.f65928g.f(this, i10, i11);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f65931j;
        if (set != null) {
            return set;
        }
        C12474h c12474h = new C12474h();
        this.f65931j = c12474h;
        return c12474h;
    }

    public E f(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int h10 = h(obj);
        return o(h10).m(obj, h10);
    }

    public V g(E e10) {
        if (e10.getKey() == null) {
            return null;
        }
        return (V) e10.getValue();
    }

    @Override
    public V get(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int h10 = h(obj);
        return o(h10).l(obj, h10);
    }

    public int h(Object obj) {
        return n(this.f65927f.f(obj));
    }

    @v2.d
    public boolean i(InterfaceC12476j<K, V, ?> interfaceC12476j) {
        return o(interfaceC12476j.b()).r(interfaceC12476j) != null;
    }

    @Override
    public boolean isEmpty() {
        o<K, V, E, S>[] oVarArr = this.f65925d;
        long j10 = 0;
        for (int i10 = 0; i10 < oVarArr.length; i10++) {
            if (oVarArr[i10].f65969c != 0) {
                return false;
            }
            j10 += oVarArr[i10].f65970d;
        }
        if (j10 == 0) {
            return true;
        }
        for (int i11 = 0; i11 < oVarArr.length; i11++) {
            if (oVarArr[i11].f65969c != 0) {
                return false;
            }
            j10 -= oVarArr[i11].f65970d;
        }
        return j10 == 0;
    }

    @v2.d
    public q j() {
        return this.f65928g.b();
    }

    public final o<K, V, E, S>[] k(int i10) {
        return new o[i10];
    }

    @Override
    public Set<K> o() {
        Set<K> set = this.f65929h;
        if (set != null) {
            return set;
        }
        m mVar = new m();
        this.f65929h = mVar;
        return mVar;
    }

    public void l(E e10) {
        int b10 = e10.b();
        o(b10).F(e10, b10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void m(H<K, V, E> h10) {
        E a10 = h10.a();
        int b10 = a10.b();
        o(b10).G(a10.getKey(), b10, h10);
    }

    public o<K, V, E, S> o(int i10) {
        return this.f65925d[(i10 >>> this.f65924c) & this.f65923b];
    }

    @Override
    @I2.a
    public V put(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int h10 = h(k10);
        return o(h10).E(k10, h10, v10, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    @I2.a
    public V putIfAbsent(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int h10 = h(k10);
        return o(h10).E(k10, h10, v10, true);
    }

    @v2.d
    public AbstractC15896m<Object> r() {
        return this.f65928g.d().b();
    }

    @Override
    @I2.a
    public V remove(@CheckForNull Object obj) {
        if (obj == null) {
            return null;
        }
        int h10 = h(obj);
        return o(h10).H(obj, h10);
    }

    @Override
    @I2.a
    public boolean replace(K k10, @CheckForNull V v10, V v11) {
        w2.H.E(k10);
        w2.H.E(v11);
        if (v10 == null) {
            return false;
        }
        int h10 = h(k10);
        return o(h10).O(k10, h10, v10, v11);
    }

    @v2.d
    public q s() {
        return this.f65928g.d();
    }

    @Override
    public int size() {
        long j10 = 0;
        for (int i10 = 0; i10 < this.f65925d.length; i10++) {
            j10 += r0[i10].f65969c;
        }
        return com.google.common.primitives.l.x(j10);
    }

    public Object u() {
        return new p(this.f65928g.b(), this.f65928g.d(), this.f65927f, this.f65928g.d().b(), this.f65926e, this);
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f65930i;
        if (collection != null) {
            return collection;
        }
        z zVar = new z();
        this.f65930i = zVar;
        return zVar;
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int h10 = h(obj);
        return o(h10).I(obj, h10, obj2);
    }

    @Override
    @I2.a
    public V replace(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        int h10 = h(k10);
        return o(h10).N(k10, h10, v10);
    }
}
