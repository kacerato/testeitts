package com.google.common.collect;

import com.google.common.collect.D2;
import com.google.common.collect.V1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public final class W1 {

    public class a<E> extends n<E> {

        public final V1 f66330d;

        public final V1 f66331e;

        public class C0997a extends AbstractC12503c<V1.a<E>> {

            public final Iterator f66332d;

            public final Iterator f66333e;

            public C0997a(Iterator it, Iterator it2) {
                this.f66332d = it;
                this.f66333e = it2;
            }

            @Override
            @CheckForNull
            public V1.a<E> a() {
                if (this.f66332d.hasNext()) {
                    V1.a aVar = (V1.a) this.f66332d.next();
                    Object element = aVar.getElement();
                    return W1.k(element, Math.max(aVar.getCount(), a.this.f66331e.Ad(element)));
                }
                while (this.f66333e.hasNext()) {
                    V1.a aVar2 = (V1.a) this.f66333e.next();
                    Object element2 = aVar2.getElement();
                    if (!a.this.f66330d.contains(element2)) {
                        return W1.k(element2, aVar2.getCount());
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(V1 v12, V1 v13) {
            super(null);
            this.f66330d = v12;
            this.f66331e = v13;
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            return Math.max(this.f66330d.Ad(obj), this.f66331e.Ad(obj));
        }

        @Override
        public Set<E> a() {
            return D2.N(this.f66330d.S1(), this.f66331e.S1());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66330d.contains(obj) || this.f66331e.contains(obj);
        }

        @Override
        public Iterator<E> d() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public Iterator<V1.a<E>> g() {
            return new C0997a(this.f66330d.entrySet().iterator(), this.f66331e.entrySet().iterator());
        }

        @Override
        public boolean isEmpty() {
            return this.f66330d.isEmpty() && this.f66331e.isEmpty();
        }
    }

    public class b<E> extends n<E> {

        public final V1 f66335d;

        public final V1 f66336e;

        public class a extends AbstractC12503c<V1.a<E>> {

            public final Iterator f66337d;

            public a(Iterator it) {
                this.f66337d = it;
            }

            @Override
            @CheckForNull
            public V1.a<E> a() {
                while (this.f66337d.hasNext()) {
                    V1.a aVar = (V1.a) this.f66337d.next();
                    Object element = aVar.getElement();
                    int min = Math.min(aVar.getCount(), b.this.f66336e.Ad(element));
                    if (min > 0) {
                        return W1.k(element, min);
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(V1 v12, V1 v13) {
            super(null);
            this.f66335d = v12;
            this.f66336e = v13;
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            int Ad2 = this.f66335d.Ad(obj);
            if (Ad2 == 0) {
                return 0;
            }
            return Math.min(Ad2, this.f66336e.Ad(obj));
        }

        @Override
        public Set<E> a() {
            return D2.n(this.f66335d.S1(), this.f66336e.S1());
        }

        @Override
        public Iterator<E> d() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public Iterator<V1.a<E>> g() {
            return new a(this.f66335d.entrySet().iterator());
        }
    }

    public class c<E> extends n<E> {

        public final V1 f66339d;

        public final V1 f66340e;

        public class a extends AbstractC12503c<V1.a<E>> {

            public final Iterator f66341d;

            public final Iterator f66342e;

            public a(Iterator it, Iterator it2) {
                this.f66341d = it;
                this.f66342e = it2;
            }

            @Override
            @CheckForNull
            public V1.a<E> a() {
                if (this.f66341d.hasNext()) {
                    V1.a aVar = (V1.a) this.f66341d.next();
                    Object element = aVar.getElement();
                    return W1.k(element, aVar.getCount() + c.this.f66340e.Ad(element));
                }
                while (this.f66342e.hasNext()) {
                    V1.a aVar2 = (V1.a) this.f66342e.next();
                    Object element2 = aVar2.getElement();
                    if (!c.this.f66339d.contains(element2)) {
                        return W1.k(element2, aVar2.getCount());
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(V1 v12, V1 v13) {
            super(null);
            this.f66339d = v12;
            this.f66340e = v13;
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            return this.f66339d.Ad(obj) + this.f66340e.Ad(obj);
        }

        @Override
        public Set<E> a() {
            return D2.N(this.f66339d.S1(), this.f66340e.S1());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66339d.contains(obj) || this.f66340e.contains(obj);
        }

        @Override
        public Iterator<E> d() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public Iterator<V1.a<E>> g() {
            return new a(this.f66339d.entrySet().iterator(), this.f66340e.entrySet().iterator());
        }

        @Override
        public boolean isEmpty() {
            return this.f66339d.isEmpty() && this.f66340e.isEmpty();
        }

        @Override
        public int size() {
            return E2.f.t(this.f66339d.size(), this.f66340e.size());
        }
    }

    public class d<E> extends n<E> {

        public final V1 f66344d;

        public final V1 f66345e;

        public class a extends AbstractC12503c<E> {

            public final Iterator f66346d;

            public a(Iterator it) {
                this.f66346d = it;
            }

            @Override
            @CheckForNull
            public E a() {
                while (this.f66346d.hasNext()) {
                    V1.a aVar = (V1.a) this.f66346d.next();
                    E e10 = (E) aVar.getElement();
                    if (aVar.getCount() > d.this.f66345e.Ad(e10)) {
                        return e10;
                    }
                }
                return b();
            }
        }

        public class b extends AbstractC12503c<V1.a<E>> {

            public final Iterator f66348d;

            public b(Iterator it) {
                this.f66348d = it;
            }

            @Override
            @CheckForNull
            public V1.a<E> a() {
                while (this.f66348d.hasNext()) {
                    V1.a aVar = (V1.a) this.f66348d.next();
                    Object element = aVar.getElement();
                    int count = aVar.getCount() - d.this.f66345e.Ad(element);
                    if (count > 0) {
                        return W1.k(element, count);
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(V1 v12, V1 v13) {
            super(null);
            this.f66344d = v12;
            this.f66345e = v13;
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            int Ad2 = this.f66344d.Ad(obj);
            if (Ad2 == 0) {
                return 0;
            }
            return Math.max(0, Ad2 - this.f66345e.Ad(obj));
        }

        @Override
        public int c() {
            return E1.Z(g());
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Iterator<E> d() {
            return new a(this.f66344d.entrySet().iterator());
        }

        @Override
        public Iterator<V1.a<E>> g() {
            return new b(this.f66344d.entrySet().iterator());
        }
    }

    public class e<E> extends V2<V1.a<E>, E> {
        public e(Iterator it) {
            super(it);
        }

        @Override
        @InterfaceC12518f2
        public E a(V1.a<E> aVar) {
            return aVar.getElement();
        }
    }

    public static abstract class f<E> implements V1.a<E> {
        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof V1.a)) {
                return false;
            }
            V1.a aVar = (V1.a) obj;
            return getCount() == aVar.getCount() && w2.B.a(getElement(), aVar.getElement());
        }

        @Override
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
            sb2.append(valueOf);
            sb2.append(" x ");
            sb2.append(count);
            return sb2.toString();
        }
    }

    public static final class g implements Comparator<V1.a<?>> {

        public static final g f66350b = new g();

        @Override
        public int compare(V1.a<?> aVar, V1.a<?> aVar2) {
            return aVar2.getCount() - aVar.getCount();
        }
    }

    public static abstract class h<E> extends D2.k<E> {
        public abstract V1<E> a();

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return a().contains(obj);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return a().containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override
        public abstract Iterator<E> iterator();

        @Override
        public boolean remove(@CheckForNull Object obj) {
            return a().pc(obj, Integer.MAX_VALUE) > 0;
        }

        @Override
        public int size() {
            return a().entrySet().size();
        }
    }

    public static abstract class i<E> extends D2.k<V1.a<E>> {
        public abstract V1<E> a();

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof V1.a)) {
                return false;
            }
            V1.a aVar = (V1.a) obj;
            return aVar.getCount() > 0 && a().Ad(aVar.getElement()) == aVar.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (obj instanceof V1.a) {
                V1.a aVar = (V1.a) obj;
                Object element = aVar.getElement();
                int count = aVar.getCount();
                if (count != 0) {
                    return a().e7(element, count, 0);
                }
            }
            return false;
        }
    }

    public static final class j<E> extends n<E> {

        public final V1<E> f66351d;

        public final w2.I<? super E> f66352e;

        public class a implements w2.I<V1.a<E>> {
            public a() {
            }

            @Override
            public boolean apply(V1.a<E> aVar) {
                return j.this.f66352e.apply(aVar.getElement());
            }
        }

        public j(V1<E> v12, w2.I<? super E> i10) {
            super(null);
            this.f66351d = (V1) w2.H.E(v12);
            this.f66352e = (w2.I) w2.H.E(i10);
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            int Ad2 = this.f66351d.Ad(obj);
            if (Ad2 <= 0 || !this.f66352e.apply(obj)) {
                return 0;
            }
            return Ad2;
        }

        @Override
        public Set<E> a() {
            return D2.i(this.f66351d.S1(), this.f66352e);
        }

        @Override
        public Set<V1.a<E>> b() {
            return D2.i(this.f66351d.entrySet(), new a());
        }

        @Override
        public Iterator<E> d() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public Iterator<V1.a<E>> g() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public e3<E> iterator() {
            return E1.y(this.f66351d.iterator(), this.f66352e);
        }

        @Override
        public int pc(@CheckForNull Object obj, int i10) {
            B.b(i10, "occurrences");
            if (i10 == 0) {
                return Ad(obj);
            }
            if (contains(obj)) {
                return this.f66351d.pc(obj, i10);
            }
            return 0;
        }

        @Override
        public int y6(@InterfaceC12518f2 E e10, int i10) {
            w2.H.y(this.f66352e.apply(e10), "Element %s does not match predicate %s", e10, this.f66352e);
            return this.f66351d.y6(e10, i10);
        }
    }

    public static class k<E> extends f<E> implements Serializable {

        public static final long f66354d = 0;

        @InterfaceC12518f2
        public final E f66355b;

        public final int f66356c;

        public k(@InterfaceC12518f2 E e10, int i10) {
            this.f66355b = e10;
            this.f66356c = i10;
            B.b(i10, oc.c.f98682m);
        }

        @CheckForNull
        public k<E> a() {
            return null;
        }

        @Override
        public final int getCount() {
            return this.f66356c;
        }

        @Override
        @InterfaceC12518f2
        public final E getElement() {
            return this.f66355b;
        }
    }

    public static final class l<E> implements Iterator<E> {

        public final V1<E> f66357b;

        public final Iterator<V1.a<E>> f66358c;

        @CheckForNull
        public V1.a<E> f66359d;

        public int f66360e;

        public int f66361f;

        public boolean f66362g;

        public l(V1<E> v12, Iterator<V1.a<E>> it) {
            this.f66357b = v12;
            this.f66358c = it;
        }

        @Override
        public boolean hasNext() {
            return this.f66360e > 0 || this.f66358c.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.f66360e == 0) {
                V1.a<E> next = this.f66358c.next();
                this.f66359d = next;
                int count = next.getCount();
                this.f66360e = count;
                this.f66361f = count;
            }
            this.f66360e--;
            this.f66362g = true;
            V1.a<E> aVar = this.f66359d;
            Objects.requireNonNull(aVar);
            return aVar.getElement();
        }

        @Override
        public void remove() {
            B.e(this.f66362g);
            if (this.f66361f == 1) {
                this.f66358c.remove();
            } else {
                V1<E> v12 = this.f66357b;
                V1.a<E> aVar = this.f66359d;
                Objects.requireNonNull(aVar);
                v12.remove(aVar.getElement());
            }
            this.f66361f--;
            this.f66362g = false;
        }
    }

    public static class m<E> extends F0<E> implements Serializable {

        public static final long f66363e = 0;

        public final V1<? extends E> f66364b;

        @CheckForNull
        public transient Set<E> f66365c;

        @CheckForNull
        public transient Set<V1.a<E>> f66366d;

        public m(V1<? extends E> v12) {
            this.f66364b = v12;
        }

        @Override
        public V1<E> k0() {
            return this.f66364b;
        }

        public Set<E> O0() {
            return Collections.unmodifiableSet(this.f66364b.S1());
        }

        @Override
        public int P9(@InterfaceC12518f2 E e10, int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<E> S1() {
            Set<E> set = this.f66365c;
            if (set != null) {
                return set;
            }
            Set<E> O02 = O0();
            this.f66365c = O02;
            return O02;
        }

        @Override
        public boolean add(@InterfaceC12518f2 E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean e7(@InterfaceC12518f2 E e10, int i10, int i11) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V1.a<E>> entrySet() {
            Set<V1.a<E>> set = this.f66366d;
            if (set != null) {
                return set;
            }
            Set<V1.a<E>> unmodifiableSet = Collections.unmodifiableSet(this.f66364b.entrySet());
            this.f66366d = unmodifiableSet;
            return unmodifiableSet;
        }

        @Override
        public Iterator<E> iterator() {
            return E1.f0(this.f66364b.iterator());
        }

        @Override
        public int pc(@CheckForNull Object obj, int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int y6(@InterfaceC12518f2 E e10, int i10) {
            throw new UnsupportedOperationException();
        }
    }

    public static abstract class n<E> extends AbstractC12527i<E> {
        public n() {
        }

        @Override
        public int c() {
            return S1().size();
        }

        @Override
        public void clear() {
            S1().clear();
        }

        @Override
        public Iterator<E> iterator() {
            return W1.n(this);
        }

        @Override
        public int size() {
            return W1.o(this);
        }

        public n(a aVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> V1<E> A(V1<? extends E> v12) {
        return ((v12 instanceof m) || (v12 instanceof AbstractC12549n1)) ? v12 : new m((V1) w2.H.E(v12));
    }

    @InterfaceC15800a
    public static <E> K2<E> B(K2<E> k22) {
        return new g3((K2) w2.H.E(k22));
    }

    public static <E> boolean a(V1<E> v12, AbstractC12515f<? extends E> abstractC12515f) {
        if (abstractC12515f.isEmpty()) {
            return false;
        }
        abstractC12515f.h(v12);
        return true;
    }

    public static <E> boolean b(V1<E> v12, V1<? extends E> v13) {
        if (v13 instanceof AbstractC12515f) {
            return a(v12, (AbstractC12515f) v13);
        }
        if (v13.isEmpty()) {
            return false;
        }
        for (V1.a<? extends E> aVar : v13.entrySet()) {
            v12.y6(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    public static <E> boolean c(V1<E> v12, Collection<? extends E> collection) {
        w2.H.E(v12);
        w2.H.E(collection);
        if (collection instanceof V1) {
            return b(v12, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return E1.a(v12, collection.iterator());
    }

    public static <T> V1<T> d(Iterable<T> iterable) {
        return (V1) iterable;
    }

    @I2.a
    public static boolean e(V1<?> v12, V1<?> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        for (V1.a<?> aVar : v13.entrySet()) {
            if (v12.Ad(aVar.getElement()) < aVar.getCount()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC15800a
    public static <E> AbstractC12549n1<E> f(V1<E> v12) {
        V1.a[] aVarArr = (V1.a[]) v12.entrySet().toArray(new V1.a[0]);
        Arrays.sort(aVarArr, g.f66350b);
        return AbstractC12549n1.m(Arrays.asList(aVarArr));
    }

    @InterfaceC15800a
    public static <E> V1<E> g(V1<E> v12, V1<?> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        return new d(v12, v13);
    }

    public static <E> Iterator<E> h(Iterator<V1.a<E>> it) {
        return new e(it);
    }

    public static boolean i(V1<?> v12, @CheckForNull Object obj) {
        if (obj == v12) {
            return true;
        }
        if (obj instanceof V1) {
            V1 v13 = (V1) obj;
            if (v12.size() == v13.size() && v12.entrySet().size() == v13.entrySet().size()) {
                for (V1.a aVar : v13.entrySet()) {
                    if (v12.Ad(aVar.getElement()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @InterfaceC15800a
    public static <E> V1<E> j(V1<E> v12, w2.I<? super E> i10) {
        if (!(v12 instanceof j)) {
            return new j(v12, i10);
        }
        j jVar = (j) v12;
        return new j(jVar.f66351d, w2.J.e(jVar.f66352e, i10));
    }

    public static <E> V1.a<E> k(@InterfaceC12518f2 E e10, int i10) {
        return new k(e10, i10);
    }

    public static int l(Iterable<?> iterable) {
        if (iterable instanceof V1) {
            return ((V1) iterable).S1().size();
        }
        return 11;
    }

    public static <E> V1<E> m(V1<E> v12, V1<?> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        return new b(v12, v13);
    }

    public static <E> Iterator<E> n(V1<E> v12) {
        return new l(v12, v12.entrySet().iterator());
    }

    public static int o(V1<?> v12) {
        long j10 = 0;
        while (v12.entrySet().iterator().hasNext()) {
            j10 += r4.next().getCount();
        }
        return com.google.common.primitives.l.x(j10);
    }

    public static boolean p(V1<?> v12, Collection<?> collection) {
        if (collection instanceof V1) {
            collection = ((V1) collection).S1();
        }
        return v12.S1().removeAll(collection);
    }

    @I2.a
    public static boolean q(V1<?> v12, V1<?> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        Iterator<V1.a<?>> it = v12.entrySet().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            V1.a<?> next = it.next();
            int Ad2 = v13.Ad(next.getElement());
            if (Ad2 >= next.getCount()) {
                it.remove();
            } else if (Ad2 > 0) {
                v12.pc(next.getElement(), Ad2);
            }
            z10 = true;
        }
        return z10;
    }

    @I2.a
    public static boolean r(V1<?> v12, Iterable<?> iterable) {
        if (iterable instanceof V1) {
            return q(v12, (V1) iterable);
        }
        w2.H.E(v12);
        w2.H.E(iterable);
        Iterator<?> it = iterable.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= v12.remove(it.next());
        }
        return z10;
    }

    public static boolean s(V1<?> v12, Collection<?> collection) {
        w2.H.E(collection);
        if (collection instanceof V1) {
            collection = ((V1) collection).S1();
        }
        return v12.S1().retainAll(collection);
    }

    @I2.a
    public static boolean t(V1<?> v12, V1<?> v13) {
        return u(v12, v13);
    }

    public static <E> boolean u(V1<E> v12, V1<?> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        Iterator<V1.a<E>> it = v12.entrySet().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            V1.a<E> next = it.next();
            int Ad2 = v13.Ad(next.getElement());
            if (Ad2 == 0) {
                it.remove();
            } else if (Ad2 < next.getCount()) {
                v12.P9(next.getElement(), Ad2);
            }
            z10 = true;
        }
        return z10;
    }

    public static <E> int v(V1<E> v12, @InterfaceC12518f2 E e10, int i10) {
        B.b(i10, oc.c.f98682m);
        int Ad2 = v12.Ad(e10);
        int i11 = i10 - Ad2;
        if (i11 > 0) {
            v12.y6(e10, i11);
        } else if (i11 < 0) {
            v12.pc(e10, -i11);
        }
        return Ad2;
    }

    public static <E> boolean w(V1<E> v12, @InterfaceC12518f2 E e10, int i10, int i11) {
        B.b(i10, "oldCount");
        B.b(i11, "newCount");
        if (v12.Ad(e10) != i10) {
            return false;
        }
        v12.P9(e10, i11);
        return true;
    }

    @InterfaceC15800a
    public static <E> V1<E> x(V1<? extends E> v12, V1<? extends E> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        return new c(v12, v13);
    }

    @InterfaceC15800a
    public static <E> V1<E> y(V1<? extends E> v12, V1<? extends E> v13) {
        w2.H.E(v12);
        w2.H.E(v13);
        return new a(v12, v13);
    }

    @Deprecated
    public static <E> V1<E> z(AbstractC12549n1<E> abstractC12549n1) {
        return (V1) w2.H.E(abstractC12549n1);
    }
}
