package com.google.common.collect;

import com.google.common.collect.E1;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Queue;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class E1 {

    public class a<T> extends e3<T> {

        public final Enumeration f65720b;

        public a(Enumeration enumeration) {
            this.f65720b = enumeration;
        }

        @Override
        public boolean hasNext() {
            return this.f65720b.hasMoreElements();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            return (T) this.f65720b.nextElement();
        }
    }

    public class b<T> implements Enumeration<T> {

        public final Iterator f65721a;

        public b(Iterator it) {
            this.f65721a = it;
        }

        @Override
        public boolean hasMoreElements() {
            return this.f65721a.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public T nextElement() {
            return (T) this.f65721a.next();
        }
    }

    public class c<T> extends e3<T> {

        public final Iterator f65722b;

        public c(Iterator it) {
            this.f65722b = it;
        }

        @Override
        public boolean hasNext() {
            return this.f65722b.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            return (T) this.f65722b.next();
        }
    }

    public class d<T> implements Iterator<T> {

        public Iterator<T> f65723b = E1.w();

        public final Iterable f65724c;

        public d(Iterable iterable) {
            this.f65724c = iterable;
        }

        @Override
        public boolean hasNext() {
            return this.f65723b.hasNext() || this.f65724c.iterator().hasNext();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            if (!this.f65723b.hasNext()) {
                Iterator<T> it = this.f65724c.iterator();
                this.f65723b = it;
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
            }
            return this.f65723b.next();
        }

        @Override
        public void remove() {
            this.f65723b.remove();
        }
    }

    public class e<I> extends e3<I> {

        public int f65725b = 0;

        public final Iterator[] f65726c;

        public e(Iterator[] itArr) {
            this.f65726c = itArr;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TI; */
        @Override
        public Iterator next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it = this.f65726c[this.f65725b];
            Objects.requireNonNull(it);
            Iterator it2 = it;
            Iterator[] itArr = this.f65726c;
            int i10 = this.f65725b;
            itArr[i10] = null;
            this.f65725b = i10 + 1;
            return it2;
        }

        @Override
        public boolean hasNext() {
            return this.f65725b < this.f65726c.length;
        }
    }

    public class f<T> extends e3<List<T>> {

        public final Iterator f65727b;

        public final int f65728c;

        public final boolean f65729d;

        public f(Iterator it, int i10, boolean z10) {
            this.f65727b = it;
            this.f65728c = i10;
            this.f65729d = z10;
        }

        @Override
        public List<T> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object[] objArr = new Object[this.f65728c];
            int i10 = 0;
            while (i10 < this.f65728c && this.f65727b.hasNext()) {
                objArr[i10] = this.f65727b.next();
                i10++;
            }
            for (int i11 = i10; i11 < this.f65728c; i11++) {
                objArr[i11] = null;
            }
            List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
            return (this.f65729d || i10 == this.f65728c) ? unmodifiableList : unmodifiableList.subList(0, i10);
        }

        @Override
        public boolean hasNext() {
            return this.f65727b.hasNext();
        }
    }

    public class g<T> extends AbstractC12503c<T> {

        public final Iterator f65730d;

        public final w2.I f65731e;

        public g(Iterator it, w2.I i10) {
            this.f65730d = it;
            this.f65731e = i10;
        }

        @Override
        @CheckForNull
        public T a() {
            while (this.f65730d.hasNext()) {
                T t10 = (T) this.f65730d.next();
                if (this.f65731e.apply(t10)) {
                    return t10;
                }
            }
            return b();
        }
    }

    public class h<F, T> extends V2<F, T> {

        public final InterfaceC15902t f65732c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Iterator it, InterfaceC15902t interfaceC15902t) {
            super(it);
            this.f65732c = interfaceC15902t;
        }

        @Override
        @InterfaceC12518f2
        public T a(@InterfaceC12518f2 F f10) {
            return (T) this.f65732c.apply(f10);
        }
    }

    public class i<T> implements Iterator<T> {

        public int f65733b;

        public final int f65734c;

        public final Iterator f65735d;

        public i(int i10, Iterator it) {
            this.f65734c = i10;
            this.f65735d = it;
        }

        @Override
        public boolean hasNext() {
            return this.f65733b < this.f65734c && this.f65735d.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f65733b++;
            return (T) this.f65735d.next();
        }

        @Override
        public void remove() {
            this.f65735d.remove();
        }
    }

    public class j<T> extends e3<T> {

        public final Iterator f65736b;

        public j(Iterator it) {
            this.f65736b = it;
        }

        @Override
        public boolean hasNext() {
            return this.f65736b.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            T t10 = (T) this.f65736b.next();
            this.f65736b.remove();
            return t10;
        }

        public String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    public class k<T> extends e3<T> {

        public boolean f65737b;

        public final Object f65738c;

        public k(Object obj) {
            this.f65738c = obj;
        }

        @Override
        public boolean hasNext() {
            return !this.f65737b;
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            if (this.f65737b) {
                throw new NoSuchElementException();
            }
            this.f65737b = true;
            return (T) this.f65738c;
        }
    }

    public static final class l<T> extends AbstractC12499b<T> {

        public static final f3<Object> f65739f = new l(new Object[0], 0, 0, 0);

        public final T[] f65740d;

        public final int f65741e;

        public l(T[] tArr, int i10, int i11, int i12) {
            super(i11, i12);
            this.f65740d = tArr;
            this.f65741e = i10;
        }

        @Override
        @InterfaceC12518f2
        public T a(int i10) {
            return this.f65740d[this.f65741e + i10];
        }
    }

    public static class m<T> implements Iterator<T> {

        @CheckForNull
        public Iterator<? extends T> f65742b;

        public Iterator<? extends T> f65743c = E1.u();

        @CheckForNull
        public Iterator<? extends Iterator<? extends T>> f65744d;

        @CheckForNull
        public Deque<Iterator<? extends Iterator<? extends T>>> f65745e;

        public m(Iterator<? extends Iterator<? extends T>> it) {
            this.f65744d = (Iterator) w2.H.E(it);
        }

        @CheckForNull
        public final Iterator<? extends Iterator<? extends T>> a() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.f65744d;
                if (it != null && it.hasNext()) {
                    return this.f65744d;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f65745e;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f65744d = this.f65745e.removeFirst();
            }
        }

        @Override
        public boolean hasNext() {
            while (!((Iterator) w2.H.E(this.f65743c)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> a10 = a();
                this.f65744d = a10;
                if (a10 == null) {
                    return false;
                }
                Iterator<? extends T> next = a10.next();
                this.f65743c = next;
                if (next instanceof m) {
                    m mVar = (m) next;
                    this.f65743c = mVar.f65743c;
                    if (this.f65745e == null) {
                        this.f65745e = new ArrayDeque();
                    }
                    this.f65745e.addFirst(this.f65744d);
                    if (mVar.f65745e != null) {
                        while (!mVar.f65745e.isEmpty()) {
                            this.f65745e.addFirst(mVar.f65745e.removeLast());
                        }
                    }
                    this.f65744d = mVar.f65744d;
                }
            }
            return true;
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends T> it = this.f65743c;
            this.f65742b = it;
            return it.next();
        }

        @Override
        public void remove() {
            Iterator<? extends T> it = this.f65742b;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.f65742b = null;
        }
    }

    public enum n implements Iterator<Object> {
        INSTANCE;

        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            B.e(false);
        }
    }

    public static class o<T> extends e3<T> {

        public final Queue<InterfaceC12522g2<T>> f65746b;

        public o(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.f65746b = new PriorityQueue(2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int b10;
                    b10 = E1.o.b(Comparator.this, (InterfaceC12522g2) obj, (InterfaceC12522g2) obj2);
                    return b10;
                }
            });
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.f65746b.add(E1.T(it));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static int b(Comparator comparator, InterfaceC12522g2 interfaceC12522g2, InterfaceC12522g2 interfaceC12522g22) {
            return comparator.compare(interfaceC12522g2.peek(), interfaceC12522g22.peek());
        }

        @Override
        public boolean hasNext() {
            return !this.f65746b.isEmpty();
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            InterfaceC12522g2<T> remove = this.f65746b.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.f65746b.add(remove);
            }
            return next;
        }
    }

    public static class p<E> implements InterfaceC12522g2<E> {

        public final Iterator<? extends E> f65747b;

        public boolean f65748c;

        @CheckForNull
        public E f65749d;

        public p(Iterator<? extends E> it) {
            this.f65747b = (Iterator) w2.H.E(it);
        }

        @Override
        public boolean hasNext() {
            return this.f65748c || this.f65747b.hasNext();
        }

        @Override
        @InterfaceC12518f2
        public E next() {
            if (!this.f65748c) {
                return this.f65747b.next();
            }
            E e10 = (E) Z1.a(this.f65749d);
            this.f65748c = false;
            this.f65749d = null;
            return e10;
        }

        @Override
        @InterfaceC12518f2
        public E peek() {
            if (!this.f65748c) {
                this.f65749d = this.f65747b.next();
                this.f65748c = true;
            }
            return (E) Z1.a(this.f65749d);
        }

        @Override
        public void remove() {
            w2.H.h0(!this.f65748c, "Can't remove after you've peeked at next");
            this.f65747b.remove();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @CheckForNull
    public static <T> T A(Iterator<? extends T> it, w2.I<? super T> i10, @CheckForNull T t10) {
        w2.H.E(it);
        w2.H.E(i10);
        while (it.hasNext()) {
            T next = it.next();
            if (i10.apply(next)) {
                return next;
            }
        }
        return t10;
    }

    @SafeVarargs
    public static <T> e3<T> B(T... tArr) {
        return C(tArr, 0, tArr.length, 0);
    }

    public static <T> f3<T> C(T[] tArr, int i10, int i11, int i12) {
        w2.H.d(i11 >= 0);
        w2.H.f0(i10, i10 + i11, tArr.length);
        w2.H.d0(i12, i11);
        return i11 == 0 ? v() : new l(tArr, i10, i11, i12);
    }

    public static <T> e3<T> D(Enumeration<T> enumeration) {
        w2.H.E(enumeration);
        return new a(enumeration);
    }

    public static int E(Iterator<?> it, @CheckForNull Object obj) {
        int i10 = 0;
        while (q(it, obj)) {
            i10++;
        }
        return i10;
    }

    @InterfaceC12518f2
    public static <T> T F(Iterator<T> it, int i10) {
        g(i10);
        int b10 = b(it, i10);
        if (it.hasNext()) {
            return it.next();
        }
        StringBuilder sb2 = new StringBuilder(91);
        sb2.append("position (");
        sb2.append(i10);
        sb2.append(") must be less than the number of elements that remained (");
        sb2.append(b10);
        sb2.append(")");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC12518f2
    public static <T> T G(Iterator<? extends T> it, int i10, @InterfaceC12518f2 T t10) {
        g(i10);
        b(it, i10);
        return (T) J(it, t10);
    }

    @InterfaceC12518f2
    public static <T> T H(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @InterfaceC12518f2
    public static <T> T I(Iterator<? extends T> it, @InterfaceC12518f2 T t10) {
        return it.hasNext() ? (T) H(it) : t10;
    }

    @InterfaceC12518f2
    public static <T> T J(Iterator<? extends T> it, @InterfaceC12518f2 T t10) {
        return it.hasNext() ? it.next() : t10;
    }

    @InterfaceC12518f2
    public static <T> T K(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected one element but was: <");
        sb2.append((Object) next);
        for (int i10 = 0; i10 < 4 && it.hasNext(); i10++) {
            sb2.append(", ");
            sb2.append((Object) it.next());
        }
        if (it.hasNext()) {
            sb2.append(", ...");
        }
        sb2.append('>');
        throw new IllegalArgumentException(sb2.toString());
    }

    @InterfaceC12518f2
    public static <T> T L(Iterator<? extends T> it, @InterfaceC12518f2 T t10) {
        return it.hasNext() ? (T) K(it) : t10;
    }

    public static <T> int M(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.F(i10, "predicate");
        int i11 = 0;
        while (it.hasNext()) {
            if (i10.apply(it.next())) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static <T> Iterator<T> N(Iterator<T> it, int i10) {
        w2.H.E(it);
        w2.H.e(i10 >= 0, "limit is negative");
        return new i(i10, it);
    }

    @InterfaceC15800a
    public static <T> e3<T> O(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        w2.H.F(iterable, "iterators");
        w2.H.F(comparator, "comparator");
        return new o(iterable, comparator);
    }

    public static <T> e3<List<T>> P(Iterator<T> it, int i10) {
        return R(it, i10, true);
    }

    public static <T> e3<List<T>> Q(Iterator<T> it, int i10) {
        return R(it, i10, false);
    }

    public static <T> e3<List<T>> R(Iterator<T> it, int i10, boolean z10) {
        w2.H.E(it);
        w2.H.d(i10 > 0);
        return new f(it, i10, z10);
    }

    @Deprecated
    public static <T> InterfaceC12522g2<T> S(InterfaceC12522g2<T> interfaceC12522g2) {
        return (InterfaceC12522g2) w2.H.E(interfaceC12522g2);
    }

    public static <T> InterfaceC12522g2<T> T(Iterator<? extends T> it) {
        return it instanceof p ? (p) it : new p(it);
    }

    @CheckForNull
    public static <T> T U(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    @I2.a
    public static boolean V(Iterator<?> it, Collection<?> collection) {
        w2.H.E(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @I2.a
    public static <T> boolean W(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.E(i10);
        boolean z10 = false;
        while (it.hasNext()) {
            if (i10.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @I2.a
    public static boolean X(Iterator<?> it, Collection<?> collection) {
        w2.H.E(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> e3<T> Y(@InterfaceC12518f2 T t10) {
        return new k(t10);
    }

    public static int Z(Iterator<?> it) {
        long j10 = 0;
        while (it.hasNext()) {
            it.next();
            j10++;
        }
        return com.google.common.primitives.l.x(j10);
    }

    @I2.a
    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        w2.H.E(collection);
        w2.H.E(it);
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= collection.add(it.next());
        }
        return z10;
    }

    @v2.c
    public static <T> T[] a0(Iterator<? extends T> it, Class<T> cls) {
        return (T[]) D1.Q(M1.s(it), cls);
    }

    @I2.a
    public static int b(Iterator<?> it, int i10) {
        w2.H.E(it);
        int i11 = 0;
        w2.H.e(i10 >= 0, "numberToAdvance must be nonnegative");
        while (i11 < i10 && it.hasNext()) {
            it.next();
            i11++;
        }
        return i11;
    }

    public static String b0(Iterator<?> it) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        boolean z10 = true;
        while (it.hasNext()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(it.next());
            z10 = false;
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public static <T> boolean c(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.E(i10);
        while (it.hasNext()) {
            if (!i10.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <F, T> Iterator<T> c0(Iterator<F> it, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        return new h(it, interfaceC15902t);
    }

    public static <T> boolean d(Iterator<T> it, w2.I<? super T> i10) {
        return M(it, i10) != -1;
    }

    public static <T> w2.C<T> d0(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.E(it);
        w2.H.E(i10);
        while (it.hasNext()) {
            T next = it.next();
            if (i10.apply(next)) {
                return w2.C.f(next);
            }
        }
        return w2.C.a();
    }

    public static <T> Enumeration<T> e(Iterator<T> it) {
        w2.H.E(it);
        return new b(it);
    }

    @Deprecated
    public static <T> e3<T> e0(e3<T> e3Var) {
        return (e3) w2.H.E(e3Var);
    }

    public static <T> ListIterator<T> f(Iterator<T> it) {
        return (ListIterator) it;
    }

    public static <T> e3<T> f0(Iterator<? extends T> it) {
        w2.H.E(it);
        return it instanceof e3 ? (e3) it : new c(it);
    }

    public static void g(int i10) {
        if (i10 >= 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(43);
        sb2.append("position (");
        sb2.append(i10);
        sb2.append(") must not be negative");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public static void h(Iterator<?> it) {
        w2.H.E(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> Iterator<T> i(Iterator<? extends Iterator<? extends T>> it) {
        return new m(it);
    }

    public static <T> Iterator<T> j(Iterator<? extends T> it, Iterator<? extends T> it2) {
        w2.H.E(it);
        w2.H.E(it2);
        return i(o(it, it2));
    }

    public static <T> Iterator<T> k(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        w2.H.E(it);
        w2.H.E(it2);
        w2.H.E(it3);
        return i(o(it, it2, it3));
    }

    public static <T> Iterator<T> l(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        w2.H.E(it);
        w2.H.E(it2);
        w2.H.E(it3);
        w2.H.E(it4);
        return i(o(it, it2, it3, it4));
    }

    public static <T> Iterator<T> m(Iterator<? extends T>... itArr) {
        return n((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    public static <T> Iterator<T> n(Iterator<? extends T>... itArr) {
        for (Iterator it : (Iterator[]) w2.H.E(itArr)) {
            w2.H.E(it);
        }
        return i(o(itArr));
    }

    public static <I extends Iterator<?>> Iterator<I> o(I... iArr) {
        return new e(iArr);
    }

    public static <T> Iterator<T> p(Iterator<T> it) {
        w2.H.E(it);
        return new j(it);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0014, code lost:
    
        if (r2.hasNext() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
    
        if (r3.equals(r2.next()) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0001, code lost:
    
        if (r3 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
    
        if (r2.hasNext() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (r2.next() != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean q(Iterator<?> it, @CheckForNull Object obj) {
    }

    public static <T> Iterator<T> r(Iterable<T> iterable) {
        w2.H.E(iterable);
        return new d(iterable);
    }

    @SafeVarargs
    public static <T> Iterator<T> s(T... tArr) {
        return r(M1.t(tArr));
    }

    public static boolean t(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !w2.B.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static <T> e3<T> u() {
        return v();
    }

    public static <T> f3<T> v() {
        return (f3<T>) l.f65739f;
    }

    public static <T> Iterator<T> w() {
        return n.INSTANCE;
    }

    @v2.c
    public static <T> e3<T> x(Iterator<?> it, Class<T> cls) {
        return y(it, w2.J.o(cls));
    }

    public static <T> e3<T> y(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.E(it);
        w2.H.E(i10);
        return new g(it, i10);
    }

    @InterfaceC12518f2
    public static <T> T z(Iterator<T> it, w2.I<? super T> i10) {
        w2.H.E(it);
        w2.H.E(i10);
        while (it.hasNext()) {
            T next = it.next();
            if (i10.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }
}
