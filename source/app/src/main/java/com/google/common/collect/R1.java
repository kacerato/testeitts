package com.google.common.collect;

import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
@InterfaceC15800a
public final class R1<E> extends AbstractQueue<E> {

    public static final int f66104h = 1431655765;

    public static final int f66105i = -1431655766;

    public static final int f66106j = 11;

    public final R1<E>.c f66107b;

    public final R1<E>.c f66108c;

    @v2.d
    public final int f66109d;

    public Object[] f66110e;

    public int f66111f;

    public int f66112g;

    @InterfaceC15800a
    public static final class b<B> {

        public static final int f66113d = -1;

        public final Comparator<B> f66114a;

        public int f66115b;

        public int f66116c;

        public <T extends B> R1<T> c() {
            return d(Collections.emptySet());
        }

        public <T extends B> R1<T> d(Iterable<? extends T> iterable) {
            R1<T> r12 = new R1<>(this, R1.p(this.f66115b, this.f66116c, iterable));
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                r12.offer(it.next());
            }
            return r12;
        }

        @I2.a
        public b<B> e(int i10) {
            w2.H.d(i10 >= 0);
            this.f66115b = i10;
            return this;
        }

        @I2.a
        public b<B> f(int i10) {
            w2.H.d(i10 > 0);
            this.f66116c = i10;
            return this;
        }

        public final <T extends B> Ordering<T> g() {
            return Ordering.i(this.f66114a);
        }

        public b(Comparator<B> comparator) {
            this.f66115b = -1;
            this.f66116c = Integer.MAX_VALUE;
            this.f66114a = (Comparator) w2.H.E(comparator);
        }
    }

    public class c {

        public final Ordering<E> f66117a;

        @q3.i
        public R1<E>.c f66118b;

        public c(Ordering<E> ordering) {
            this.f66117a = ordering;
        }

        public void b(int i10, E e10) {
            c cVar;
            int f10 = f(i10, e10);
            if (f10 == i10) {
                f10 = i10;
                cVar = this;
            } else {
                cVar = this.f66118b;
            }
            cVar.c(f10, e10);
        }

        @I2.a
        public int c(int i10, E e10) {
            while (i10 > 2) {
                int k10 = k(i10);
                Object j10 = R1.this.j(k10);
                if (this.f66117a.compare(j10, e10) <= 0) {
                    break;
                }
                R1.this.f66110e[i10] = j10;
                i10 = k10;
            }
            R1.this.f66110e[i10] = e10;
            return i10;
        }

        public int d(int i10, int i11) {
            return this.f66117a.compare(R1.this.j(i10), R1.this.j(i11));
        }

        public int e(int i10, E e10) {
            int i11 = i(i10);
            if (i11 <= 0 || this.f66117a.compare(R1.this.j(i11), e10) >= 0) {
                return f(i10, e10);
            }
            R1.this.f66110e[i10] = R1.this.j(i11);
            R1.this.f66110e[i11] = e10;
            return i11;
        }

        public int f(int i10, E e10) {
            int n10;
            if (i10 == 0) {
                R1.this.f66110e[0] = e10;
                return 0;
            }
            int m10 = m(i10);
            Object j10 = R1.this.j(m10);
            if (m10 != 0 && (n10 = n(m(m10))) != m10 && l(n10) >= R1.this.f66111f) {
                Object j11 = R1.this.j(n10);
                if (this.f66117a.compare(j11, j10) < 0) {
                    m10 = n10;
                    j10 = j11;
                }
            }
            if (this.f66117a.compare(j10, e10) >= 0) {
                R1.this.f66110e[i10] = e10;
                return i10;
            }
            R1.this.f66110e[i10] = j10;
            R1.this.f66110e[m10] = e10;
            return m10;
        }

        public int g(int i10) {
            while (true) {
                int j10 = j(i10);
                if (j10 <= 0) {
                    return i10;
                }
                R1.this.f66110e[i10] = R1.this.j(j10);
                i10 = j10;
            }
        }

        public int h(int i10, int i11) {
            if (i10 >= R1.this.f66111f) {
                return -1;
            }
            w2.H.g0(i10 > 0);
            int min = Math.min(i10, R1.this.f66111f - i11) + i11;
            for (int i12 = i10 + 1; i12 < min; i12++) {
                if (d(i12, i10) < 0) {
                    i10 = i12;
                }
            }
            return i10;
        }

        public int i(int i10) {
            return h(l(i10), 2);
        }

        public int j(int i10) {
            int l10 = l(i10);
            if (l10 < 0) {
                return -1;
            }
            return h(l(l10), 4);
        }

        public final int k(int i10) {
            return m(m(i10));
        }

        public final int l(int i10) {
            return (i10 * 2) + 1;
        }

        public final int m(int i10) {
            return (i10 - 1) / 2;
        }

        public final int n(int i10) {
            return (i10 * 2) + 2;
        }

        public int o(E e10) {
            int n10;
            int m10 = m(R1.this.f66111f);
            if (m10 != 0 && (n10 = n(m(m10))) != m10 && l(n10) >= R1.this.f66111f) {
                Object j10 = R1.this.j(n10);
                if (this.f66117a.compare(j10, e10) < 0) {
                    R1.this.f66110e[n10] = e10;
                    R1.this.f66110e[R1.this.f66111f] = j10;
                    return n10;
                }
            }
            return R1.this.f66111f;
        }

        @CheckForNull
        public d<E> p(int i10, int i11, E e10) {
            int e11 = e(i11, e10);
            if (e11 == i11) {
                return null;
            }
            Object j10 = e11 < i10 ? R1.this.j(i10) : R1.this.j(m(i10));
            if (this.f66118b.c(e11, e10) < i10) {
                return new d<>(e10, j10);
            }
            return null;
        }

        public final boolean q(int i10) {
            if (l(i10) < R1.this.f66111f && d(i10, l(i10)) > 0) {
                return false;
            }
            if (n(i10) < R1.this.f66111f && d(i10, n(i10)) > 0) {
                return false;
            }
            if (i10 <= 0 || d(i10, m(i10)) <= 0) {
                return i10 <= 2 || d(k(i10), i10) <= 0;
            }
            return false;
        }
    }

    public static class d<E> {

        public final E f66120a;

        public final E f66121b;

        public d(E e10, E e11) {
            this.f66120a = e10;
            this.f66121b = e11;
        }
    }

    public class e implements Iterator<E> {

        public int f66122b;

        public int f66123c;

        public int f66124d;

        @CheckForNull
        public Queue<E> f66125e;

        @CheckForNull
        public List<E> f66126f;

        @CheckForNull
        public E f66127g;

        public boolean f66128h;

        public e() {
            this.f66122b = -1;
            this.f66123c = -1;
            this.f66124d = R1.this.f66112g;
        }

        public final void a() {
            if (R1.this.f66112g != this.f66124d) {
                throw new ConcurrentModificationException();
            }
        }

        public final boolean b(Iterable<E> iterable, E e10) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e10) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void c(int i10) {
            if (this.f66123c < i10) {
                if (this.f66126f != null) {
                    while (i10 < R1.this.size() && b(this.f66126f, R1.this.j(i10))) {
                        i10++;
                    }
                }
                this.f66123c = i10;
            }
        }

        public final boolean d(Object obj) {
            for (int i10 = 0; i10 < R1.this.f66111f; i10++) {
                if (R1.this.f66110e[i10] == obj) {
                    R1.this.w(i10);
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean hasNext() {
            a();
            c(this.f66122b + 1);
            if (this.f66123c < R1.this.size()) {
                return true;
            }
            Queue<E> queue = this.f66125e;
            return (queue == null || queue.isEmpty()) ? false : true;
        }

        @Override
        public E next() {
            a();
            c(this.f66122b + 1);
            if (this.f66123c < R1.this.size()) {
                int i10 = this.f66123c;
                this.f66122b = i10;
                this.f66128h = true;
                return (E) R1.this.j(i10);
            }
            if (this.f66125e != null) {
                this.f66122b = R1.this.size();
                E poll = this.f66125e.poll();
                this.f66127g = poll;
                if (poll != null) {
                    this.f66128h = true;
                    return poll;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override
        public void remove() {
            B.e(this.f66128h);
            a();
            this.f66128h = false;
            this.f66124d++;
            if (this.f66122b >= R1.this.size()) {
                E e10 = this.f66127g;
                Objects.requireNonNull(e10);
                w2.H.g0(d(e10));
                this.f66127g = null;
                return;
            }
            d<E> w10 = R1.this.w(this.f66122b);
            if (w10 != null) {
                if (this.f66125e == null || this.f66126f == null) {
                    this.f66125e = new ArrayDeque();
                    this.f66126f = new ArrayList(3);
                }
                if (!b(this.f66126f, w10.f66120a)) {
                    this.f66125e.add(w10.f66120a);
                }
                if (!b(this.f66125e, w10.f66121b)) {
                    this.f66126f.add(w10.f66121b);
                }
            }
            this.f66122b--;
            this.f66123c--;
        }
    }

    public static int e(int i10, int i11) {
        return Math.min(i10 - 1, i11) + 1;
    }

    public static <E extends Comparable<E>> R1<E> h() {
        return new b(Ordering.A()).c();
    }

    public static <E extends Comparable<E>> R1<E> i(Iterable<? extends E> iterable) {
        return new b(Ordering.A()).d(iterable);
    }

    public static b<Comparable> k(int i10) {
        return new b(Ordering.A()).e(i10);
    }

    @v2.d
    public static int p(int i10, int i11, Iterable<?> iterable) {
        if (i10 == -1) {
            i10 = 11;
        }
        if (iterable instanceof Collection) {
            i10 = Math.max(i10, ((Collection) iterable).size());
        }
        return e(i10, i11);
    }

    @v2.d
    public static boolean r(int i10) {
        int i11 = ~(~(i10 + 1));
        w2.H.h0(i11 > 0, "negative index");
        return (1431655765 & i11) > (i11 & f66105i);
    }

    public static b<Comparable> t(int i10) {
        return new b(Ordering.A()).f(i10);
    }

    public static <B> b<B> u(Comparator<B> comparator) {
        return new b<>(comparator);
    }

    @Override
    @I2.a
    public boolean add(E e10) {
        offer(e10);
        return true;
    }

    @Override
    @I2.a
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            offer(it.next());
            z10 = true;
        }
        return z10;
    }

    @Override
    public void clear() {
        for (int i10 = 0; i10 < this.f66111f; i10++) {
            this.f66110e[i10] = null;
        }
        this.f66111f = 0;
    }

    public Comparator<? super E> comparator() {
        return this.f66107b.f66117a;
    }

    public final int d() {
        int length = this.f66110e.length;
        return e(length < 64 ? (length + 1) * 2 : E2.f.d(length / 2, 3), this.f66109d);
    }

    @v2.d
    public int g() {
        return this.f66110e.length;
    }

    @Override
    public Iterator<E> iterator() {
        return new e();
    }

    public E j(int i10) {
        E e10 = (E) this.f66110e[i10];
        Objects.requireNonNull(e10);
        return e10;
    }

    @CheckForNull
    public final d<E> l(int i10, E e10) {
        R1<E>.c o10 = o(i10);
        int g10 = o10.g(i10);
        int c10 = o10.c(g10, e10);
        if (c10 == g10) {
            return o10.p(i10, g10, e10);
        }
        if (c10 < i10) {
            return new d<>(e10, j(i10));
        }
        return null;
    }

    public final int m() {
        int i10 = this.f66111f;
        if (i10 != 1) {
            return (i10 == 2 || this.f66108c.d(1, 2) <= 0) ? 1 : 2;
        }
        return 0;
    }

    public final void n() {
        if (this.f66111f > this.f66110e.length) {
            Object[] objArr = new Object[d()];
            Object[] objArr2 = this.f66110e;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f66110e = objArr;
        }
    }

    public final R1<E>.c o(int i10) {
        return r(i10) ? this.f66107b : this.f66108c;
    }

    @Override
    @I2.a
    public boolean offer(E e10) {
        w2.H.E(e10);
        this.f66112g++;
        int i10 = this.f66111f;
        this.f66111f = i10 + 1;
        n();
        o(i10).b(i10, e10);
        return this.f66111f <= this.f66109d || pollLast() != e10;
    }

    @Override
    @CheckForNull
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return j(0);
    }

    @CheckForNull
    public E peekFirst() {
        return peek();
    }

    @CheckForNull
    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return j(m());
    }

    @Override
    @I2.a
    @CheckForNull
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return v(0);
    }

    @I2.a
    @CheckForNull
    public E pollFirst() {
        return poll();
    }

    @I2.a
    @CheckForNull
    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return v(m());
    }

    @I2.a
    public E removeFirst() {
        return remove();
    }

    @I2.a
    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return v(m());
    }

    @v2.d
    public boolean s() {
        for (int i10 = 1; i10 < this.f66111f; i10++) {
            if (!o(i10).q(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int size() {
        return this.f66111f;
    }

    @Override
    public Object[] toArray() {
        int i10 = this.f66111f;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f66110e, 0, objArr, 0, i10);
        return objArr;
    }

    public final E v(int i10) {
        E j10 = j(i10);
        w(i10);
        return j10;
    }

    @I2.a
    @v2.d
    @CheckForNull
    public d<E> w(int i10) {
        w2.H.d0(i10, this.f66111f);
        this.f66112g++;
        int i11 = this.f66111f - 1;
        this.f66111f = i11;
        if (i11 == i10) {
            this.f66110e[i11] = null;
            return null;
        }
        E j10 = j(i11);
        int o10 = o(this.f66111f).o(j10);
        if (o10 == i10) {
            this.f66110e[this.f66111f] = null;
            return null;
        }
        E j11 = j(this.f66111f);
        this.f66110e[this.f66111f] = null;
        d<E> l10 = l(i10, j11);
        return o10 < i10 ? l10 == null ? new d<>(j10, j11) : new d<>(j10, l10.f66121b) : l10;
    }

    public R1(b<? super E> bVar, int i10) {
        Ordering g10 = bVar.g();
        R1<E>.c cVar = new c(g10);
        this.f66107b = cVar;
        R1<E>.c cVar2 = new c(g10.F());
        this.f66108c = cVar2;
        cVar.f66118b = cVar2;
        cVar2.f66118b = cVar;
        this.f66109d = bVar.f66116c;
        this.f66110e = new Object[i10];
    }
}
