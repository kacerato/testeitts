package com.google.common.collect;

import com.ardor3d.util.export.xml.XMLExporter;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b
public final class C {

    public static class a<E> extends AbstractCollection<E> {

        public final Collection<E> f65605b;

        public final w2.I<? super E> f65606c;

        public a(Collection<E> collection, w2.I<? super E> i10) {
            this.f65605b = collection;
            this.f65606c = i10;
        }

        public a<E> a(w2.I<? super E> i10) {
            return new a<>(this.f65605b, w2.J.e(this.f65606c, i10));
        }

        @Override
        public boolean add(@InterfaceC12518f2 E e10) {
            w2.H.d(this.f65606c.apply(e10));
            return this.f65605b.add(e10);
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                w2.H.d(this.f65606c.apply(it.next()));
            }
            return this.f65605b.addAll(collection);
        }

        @Override
        public void clear() {
            D1.J(this.f65605b, this.f65606c);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (C.j(this.f65605b, obj)) {
                return this.f65606c.apply(obj);
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return C.b(this, collection);
        }

        @Override
        public boolean isEmpty() {
            return !D1.c(this.f65605b, this.f65606c);
        }

        @Override
        public Iterator<E> iterator() {
            return E1.y(this.f65605b.iterator(), this.f65606c);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            return contains(obj) && this.f65605b.remove(obj);
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.f65605b.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f65606c.apply(next) && collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.f65605b.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f65606c.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            Iterator<E> it = this.f65605b.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.f65606c.apply(it.next())) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        public Object[] toArray() {
            return M1.s(iterator()).toArray();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) M1.s(iterator()).toArray(tArr);
        }
    }

    public static final class b<E> extends AbstractCollection<List<E>> {

        public final AbstractC12521g1<E> f65607b;

        public final Comparator<? super E> f65608c;

        public final int f65609d;

        public b(Iterable<E> iterable, Comparator<? super E> comparator) {
            AbstractC12521g1<E> N10 = AbstractC12521g1.N(comparator, iterable);
            this.f65607b = N10;
            this.f65608c = comparator;
            this.f65609d = a(N10, comparator);
        }

        public static <E> int a(List<E> list, Comparator<? super E> comparator) {
            int i10 = 1;
            int i11 = 1;
            int i12 = 1;
            while (i10 < list.size()) {
                if (comparator.compare(list.get(i10 - 1), list.get(i10)) < 0) {
                    i11 = E2.f.u(i11, E2.f.a(i10, i12));
                    if (i11 == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                    i12 = 0;
                }
                i10++;
                i12++;
            }
            return E2.f.u(i11, E2.f.a(i10, i12));
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return C.e(this.f65607b, (List) obj);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Iterator<List<E>> iterator() {
            return new c(this.f65607b, this.f65608c);
        }

        @Override
        public int size() {
            return this.f65609d;
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f65607b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 30);
            sb2.append("orderedPermutationCollection(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class c<E> extends AbstractC12503c<List<E>> {

        @CheckForNull
        public List<E> f65610d;

        public final Comparator<? super E> f65611e;

        public c(List<E> list, Comparator<? super E> comparator) {
            this.f65610d = M1.r(list);
            this.f65611e = comparator;
        }

        public void e() {
            int g10 = g();
            if (g10 == -1) {
                this.f65610d = null;
                return;
            }
            Objects.requireNonNull(this.f65610d);
            Collections.swap(this.f65610d, g10, h(g10));
            Collections.reverse(this.f65610d.subList(g10 + 1, this.f65610d.size()));
        }

        @Override
        @CheckForNull
        public List<E> a() {
            List<E> list = this.f65610d;
            if (list == null) {
                return b();
            }
            AbstractC12521g1 r10 = AbstractC12521g1.r(list);
            e();
            return r10;
        }

        public int g() {
            Objects.requireNonNull(this.f65610d);
            for (int size = this.f65610d.size() - 2; size >= 0; size--) {
                if (this.f65611e.compare(this.f65610d.get(size), this.f65610d.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        public int h(int i10) {
            Objects.requireNonNull(this.f65610d);
            E e10 = this.f65610d.get(i10);
            for (int size = this.f65610d.size() - 1; size > i10; size--) {
                if (this.f65611e.compare(e10, this.f65610d.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError((Object) "this statement should be unreachable");
        }
    }

    public static final class d<E> extends AbstractCollection<List<E>> {

        public final AbstractC12521g1<E> f65612b;

        public d(AbstractC12521g1<E> abstractC12521g1) {
            this.f65612b = abstractC12521g1;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return C.e(this.f65612b, (List) obj);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Iterator<List<E>> iterator() {
            return new e(this.f65612b);
        }

        @Override
        public int size() {
            return E2.f.h(this.f65612b.size());
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f65612b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
            sb2.append("permutations(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class e<E> extends AbstractC12503c<List<E>> {

        public final List<E> f65613d;

        public final int[] f65614e;

        public final int[] f65615f;

        public int f65616g;

        public e(List<E> list) {
            this.f65613d = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.f65614e = iArr;
            int[] iArr2 = new int[size];
            this.f65615f = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f65616g = Integer.MAX_VALUE;
        }

        public void e() {
            int size = this.f65613d.size() - 1;
            this.f65616g = size;
            if (size == -1) {
                return;
            }
            int i10 = 0;
            while (true) {
                int[] iArr = this.f65614e;
                int i11 = this.f65616g;
                int i12 = iArr[i11];
                int i13 = this.f65615f[i11] + i12;
                if (i13 < 0) {
                    g();
                } else if (i13 != i11 + 1) {
                    Collections.swap(this.f65613d, (i11 - i12) + i10, (i11 - i13) + i10);
                    this.f65614e[this.f65616g] = i13;
                    return;
                } else {
                    if (i11 == 0) {
                        return;
                    }
                    i10++;
                    g();
                }
            }
        }

        @Override
        @CheckForNull
        public List<E> a() {
            if (this.f65616g <= 0) {
                return b();
            }
            AbstractC12521g1 r10 = AbstractC12521g1.r(this.f65613d);
            e();
            return r10;
        }

        public void g() {
            int[] iArr = this.f65615f;
            int i10 = this.f65616g;
            iArr[i10] = -iArr[i10];
            this.f65616g = i10 - 1;
        }
    }

    public static class f<F, T> extends AbstractCollection<T> {

        public final Collection<F> f65617b;

        public final InterfaceC15902t<? super F, ? extends T> f65618c;

        public f(Collection<F> collection, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
            this.f65617b = (Collection) w2.H.E(collection);
            this.f65618c = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public void clear() {
            this.f65617b.clear();
        }

        @Override
        public boolean isEmpty() {
            return this.f65617b.isEmpty();
        }

        @Override
        public Iterator<T> iterator() {
            return E1.c0(this.f65617b.iterator(), this.f65618c);
        }

        @Override
        public int size() {
            return this.f65617b.size();
        }
    }

    public static boolean b(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <E> C12510d2<E> c(Collection<E> collection) {
        C12510d2<E> c12510d2 = new C12510d2<>();
        for (E e10 : collection) {
            c12510d2.v(e10, c12510d2.g(e10) + 1);
        }
        return c12510d2;
    }

    public static <E> Collection<E> d(Collection<E> collection, w2.I<? super E> i10) {
        return collection instanceof a ? ((a) collection).a(i10) : new a((Collection) w2.H.E(collection), (w2.I) w2.H.E(i10));
    }

    public static boolean e(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        C12510d2 c10 = c(list);
        C12510d2 c11 = c(list2);
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (c10.l(i10) != c11.g(c10.j(i10))) {
                return false;
            }
        }
        return true;
    }

    public static StringBuilder f(int i10) {
        B.b(i10, XMLExporter.ATTRIBUTE_SIZE);
        return new StringBuilder((int) Math.min(i10 * 8, TagBits.HasDirectWildcard));
    }

    @InterfaceC15800a
    public static <E extends Comparable<? super E>> Collection<List<E>> g(Iterable<E> iterable) {
        return h(iterable, Ordering.A());
    }

    @InterfaceC15800a
    public static <E> Collection<List<E>> h(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new b(iterable, comparator);
    }

    @InterfaceC15800a
    public static <E> Collection<List<E>> i(Collection<E> collection) {
        return new d(AbstractC12521g1.r(collection));
    }

    public static boolean j(Collection<?> collection, @CheckForNull Object obj) {
        w2.H.E(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static boolean k(Collection<?> collection, @CheckForNull Object obj) {
        w2.H.E(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static String l(Collection<?> collection) {
        StringBuilder f10 = f(collection.size());
        f10.append('[');
        boolean z10 = true;
        for (Object obj : collection) {
            if (!z10) {
                f10.append(", ");
            }
            if (obj == collection) {
                f10.append("(this Collection)");
            } else {
                f10.append(obj);
            }
            z10 = false;
        }
        f10.append(JavaElement.JEM_TYPE_PARAMETER);
        return f10.toString();
    }

    public static <F, T> Collection<T> m(Collection<F> collection, InterfaceC15902t<? super F, T> interfaceC15902t) {
        return new f(collection, interfaceC15902t);
    }
}
