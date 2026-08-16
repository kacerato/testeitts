package com.google.common.collect;

import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class M1 {

    public class a<E> extends g<E> {

        public static final long f65865c = 0;

        public a(List list) {
            super(list);
        }

        @Override
        public ListIterator<E> listIterator(int i10) {
            return this.f65867b.listIterator(i10);
        }
    }

    public class b<E> extends c<E> {

        public static final long f65866c = 0;

        public b(List list) {
            super(list);
        }

        @Override
        public ListIterator<E> listIterator(int i10) {
            return this.f65867b.listIterator(i10);
        }
    }

    public static class c<E> extends AbstractList<E> {

        public final List<E> f65867b;

        public c(List<E> list) {
            this.f65867b = (List) w2.H.E(list);
        }

        @Override
        public void add(int i10, @InterfaceC12518f2 E e10) {
            this.f65867b.add(i10, e10);
        }

        @Override
        public boolean addAll(int i10, Collection<? extends E> collection) {
            return this.f65867b.addAll(i10, collection);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f65867b.contains(obj);
        }

        @Override
        @InterfaceC12518f2
        public E get(int i10) {
            return this.f65867b.get(i10);
        }

        @Override
        @InterfaceC12518f2
        public E remove(int i10) {
            return this.f65867b.remove(i10);
        }

        @Override
        @InterfaceC12518f2
        public E set(int i10, @InterfaceC12518f2 E e10) {
            return this.f65867b.set(i10, e10);
        }

        @Override
        public int size() {
            return this.f65867b.size();
        }
    }

    public static final class d extends AbstractList<Character> {

        public final CharSequence f65868b;

        public d(CharSequence charSequence) {
            this.f65868b = charSequence;
        }

        @Override
        public Character get(int i10) {
            w2.H.C(i10, size());
            return Character.valueOf(this.f65868b.charAt(i10));
        }

        @Override
        public int size() {
            return this.f65868b.length();
        }
    }

    public static class e<E> extends AbstractList<E> implements Serializable, RandomAccess {

        public static final long f65869d = 0;

        @InterfaceC12518f2
        public final E f65870b;

        public final E[] f65871c;

        public e(@InterfaceC12518f2 E e10, E[] eArr) {
            this.f65870b = e10;
            this.f65871c = (E[]) ((Object[]) w2.H.E(eArr));
        }

        @Override
        @InterfaceC12518f2
        public E get(int i10) {
            w2.H.C(i10, size());
            return i10 == 0 ? this.f65870b : this.f65871c[i10 - 1];
        }

        @Override
        public int size() {
            return E2.f.t(this.f65871c.length, 1);
        }
    }

    public static class f<T> extends AbstractList<List<T>> {

        public final List<T> f65872b;

        public final int f65873c;

        public f(List<T> list, int i10) {
            this.f65872b = list;
            this.f65873c = i10;
        }

        @Override
        public boolean isEmpty() {
            return this.f65872b.isEmpty();
        }

        @Override
        public List<T> get(int i10) {
            w2.H.C(i10, size());
            int i11 = this.f65873c;
            int i12 = i10 * i11;
            return this.f65872b.subList(i12, Math.min(i11 + i12, this.f65872b.size()));
        }

        @Override
        public int size() {
            return E2.f.g(this.f65872b.size(), this.f65873c, RoundingMode.CEILING);
        }
    }

    public static class g<E> extends c<E> implements RandomAccess {
        public g(List<E> list) {
            super(list);
        }
    }

    public static class h<T> extends f<T> implements RandomAccess {
        public h(List<T> list, int i10) {
            super(list, i10);
        }
    }

    public static class i<T> extends j<T> implements RandomAccess {
        public i(List<T> list) {
            super(list);
        }
    }

    public static class j<T> extends AbstractList<T> {

        public final List<T> f65874b;

        public class a implements ListIterator<T> {

            public boolean f65875b;

            public final ListIterator f65876c;

            public a(ListIterator listIterator) {
                this.f65876c = listIterator;
            }

            @Override
            public void add(@InterfaceC12518f2 T t10) {
                this.f65876c.add(t10);
                this.f65876c.previous();
                this.f65875b = false;
            }

            @Override
            public boolean hasNext() {
                return this.f65876c.hasPrevious();
            }

            @Override
            public boolean hasPrevious() {
                return this.f65876c.hasNext();
            }

            @Override
            @InterfaceC12518f2
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f65875b = true;
                return (T) this.f65876c.previous();
            }

            @Override
            public int nextIndex() {
                return j.this.k(this.f65876c.nextIndex());
            }

            @Override
            @InterfaceC12518f2
            public T previous() {
                if (!hasPrevious()) {
                    throw new NoSuchElementException();
                }
                this.f65875b = true;
                return (T) this.f65876c.next();
            }

            @Override
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override
            public void remove() {
                B.e(this.f65875b);
                this.f65876c.remove();
                this.f65875b = false;
            }

            @Override
            public void set(@InterfaceC12518f2 T t10) {
                w2.H.g0(this.f65875b);
                this.f65876c.set(t10);
            }
        }

        public j(List<T> list) {
            this.f65874b = (List) w2.H.E(list);
        }

        @Override
        public void add(int i10, @InterfaceC12518f2 T t10) {
            this.f65874b.add(k(i10), t10);
        }

        public List<T> b() {
            return this.f65874b;
        }

        @Override
        public void clear() {
            this.f65874b.clear();
        }

        @Override
        @InterfaceC12518f2
        public T get(int i10) {
            return this.f65874b.get(j(i10));
        }

        @Override
        public Iterator<T> iterator() {
            return listIterator();
        }

        public final int j(int i10) {
            int size = size();
            w2.H.C(i10, size);
            return (size - 1) - i10;
        }

        public final int k(int i10) {
            int size = size();
            w2.H.d0(i10, size);
            return size - i10;
        }

        @Override
        public ListIterator<T> listIterator(int i10) {
            return new a(this.f65874b.listIterator(k(i10)));
        }

        @Override
        @InterfaceC12518f2
        public T remove(int i10) {
            return this.f65874b.remove(j(i10));
        }

        @Override
        public void removeRange(int i10, int i11) {
            subList(i10, i11).clear();
        }

        @Override
        @InterfaceC12518f2
        public T set(int i10, @InterfaceC12518f2 T t10) {
            return this.f65874b.set(j(i10), t10);
        }

        @Override
        public int size() {
            return this.f65874b.size();
        }

        @Override
        public List<T> subList(int i10, int i11) {
            w2.H.f0(i10, i11, size());
            return M1.B(this.f65874b.subList(k(i11), k(i10)));
        }
    }

    public static final class k extends AbstractC12521g1<Character> {

        public final String f65878d;

        public k(String str) {
            this.f65878d = str;
        }

        @Override
        public AbstractC12521g1<Character> subList(int i10, int i11) {
            w2.H.f0(i10, i11, size());
            return M1.g(this.f65878d.substring(i10, i11));
        }

        @Override
        public Character get(int i10) {
            w2.H.C(i10, size());
            return Character.valueOf(this.f65878d.charAt(i10));
        }

        @Override
        public boolean h() {
            return false;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Character) {
                return this.f65878d.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Character) {
                return this.f65878d.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override
        public int size() {
            return this.f65878d.length();
        }
    }

    public static class l<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

        public static final long f65879d = 0;

        public final List<F> f65880b;

        public final InterfaceC15902t<? super F, ? extends T> f65881c;

        public class a extends W2<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            public T a(F f10) {
                return l.this.f65881c.apply(f10);
            }
        }

        public l(List<F> list, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
            this.f65880b = (List) w2.H.E(list);
            this.f65881c = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public void clear() {
            this.f65880b.clear();
        }

        @Override
        @InterfaceC12518f2
        public T get(int i10) {
            return this.f65881c.apply(this.f65880b.get(i10));
        }

        @Override
        public boolean isEmpty() {
            return this.f65880b.isEmpty();
        }

        @Override
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override
        public ListIterator<T> listIterator(int i10) {
            return new a(this.f65880b.listIterator(i10));
        }

        @Override
        public T remove(int i10) {
            return this.f65881c.apply(this.f65880b.remove(i10));
        }

        @Override
        public int size() {
            return this.f65880b.size();
        }
    }

    public static class m<F, T> extends AbstractSequentialList<T> implements Serializable {

        public static final long f65883d = 0;

        public final List<F> f65884b;

        public final InterfaceC15902t<? super F, ? extends T> f65885c;

        public class a extends W2<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            @InterfaceC12518f2
            public T a(@InterfaceC12518f2 F f10) {
                return m.this.f65885c.apply(f10);
            }
        }

        public m(List<F> list, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
            this.f65884b = (List) w2.H.E(list);
            this.f65885c = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public void clear() {
            this.f65884b.clear();
        }

        @Override
        public ListIterator<T> listIterator(int i10) {
            return new a(this.f65884b.listIterator(i10));
        }

        @Override
        public int size() {
            return this.f65884b.size();
        }
    }

    public static class n<E> extends AbstractList<E> implements Serializable, RandomAccess {

        public static final long f65887e = 0;

        @InterfaceC12518f2
        public final E f65888b;

        @InterfaceC12518f2
        public final E f65889c;

        public final E[] f65890d;

        public n(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, E[] eArr) {
            this.f65888b = e10;
            this.f65889c = e11;
            this.f65890d = (E[]) ((Object[]) w2.H.E(eArr));
        }

        @Override
        @InterfaceC12518f2
        public E get(int i10) {
            if (i10 == 0) {
                return this.f65888b;
            }
            if (i10 == 1) {
                return this.f65889c;
            }
            w2.H.C(i10, size());
            return this.f65890d[i10 - 2];
        }

        @Override
        public int size() {
            return E2.f.t(this.f65890d.length, 2);
        }
    }

    public static <T> List<List<T>> A(List<T> list, int i10) {
        w2.H.E(list);
        w2.H.d(i10 > 0);
        return list instanceof RandomAccess ? new h(list, i10) : new f(list, i10);
    }

    public static <T> List<T> B(List<T> list) {
        return list instanceof AbstractC12521g1 ? ((AbstractC12521g1) list).L() : list instanceof j ? ((j) list).b() : list instanceof RandomAccess ? new i(list) : new j(list);
    }

    public static <E> List<E> C(List<E> list, int i10, int i11) {
        return (list instanceof RandomAccess ? new a(list) : new b(list)).subList(i10, i11);
    }

    public static <F, T> List<T> D(List<F> list, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
        return list instanceof RandomAccess ? new l(list, interfaceC15902t) : new m(list, interfaceC15902t);
    }

    public static <E> boolean a(List<E> list, int i10, Iterable<? extends E> iterable) {
        ListIterator<E> listIterator = list.listIterator(i10);
        Iterator<? extends E> it = iterable.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            listIterator.add(it.next());
            z10 = true;
        }
        return z10;
    }

    public static <E> List<E> b(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, E[] eArr) {
        return new n(e10, e11, eArr);
    }

    public static <E> List<E> c(@InterfaceC12518f2 E e10, E[] eArr) {
        return new e(e10, eArr);
    }

    public static <B> List<List<B>> d(List<? extends List<? extends B>> list) {
        return C12594z.c(list);
    }

    @SafeVarargs
    public static <B> List<List<B>> e(List<? extends B>... listArr) {
        return d(Arrays.asList(listArr));
    }

    public static <T> List<T> f(Iterable<T> iterable) {
        return (List) iterable;
    }

    public static AbstractC12521g1<Character> g(String str) {
        return new k((String) w2.H.E(str));
    }

    @InterfaceC15800a
    public static List<Character> h(CharSequence charSequence) {
        return new d((CharSequence) w2.H.E(charSequence));
    }

    @v2.d
    public static int i(int i10) {
        B.b(i10, "arraySize");
        return com.google.common.primitives.l.x(i10 + 5 + (i10 / 10));
    }

    public static boolean j(List<?> list, @CheckForNull Object obj) {
        if (obj == w2.H.E(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return E1.t(list.iterator(), list2.iterator());
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!w2.B.a(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static int k(List<?> list) {
        Iterator<?> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~((i10 * 31) + (next == null ? 0 : next.hashCode())));
        }
        return i10;
    }

    public static int l(List<?> list, @CheckForNull Object obj) {
        if (list instanceof RandomAccess) {
            return m(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (w2.B.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    public static int m(List<?> list, @CheckForNull Object obj) {
        int size = list.size();
        int i10 = 0;
        if (obj == null) {
            while (i10 < size) {
                if (list.get(i10) == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        while (i10 < size) {
            if (obj.equals(list.get(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int n(List<?> list, @CheckForNull Object obj) {
        if (list instanceof RandomAccess) {
            return o(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (w2.B.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public static int o(List<?> list, @CheckForNull Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static <E> ListIterator<E> p(List<E> list, int i10) {
        return new c(list).listIterator(i10);
    }

    @v2.b(serializable = true)
    public static <E> ArrayList<E> q() {
        return new ArrayList<>();
    }

    @v2.b(serializable = true)
    public static <E> ArrayList<E> r(Iterable<? extends E> iterable) {
        w2.H.E(iterable);
        return iterable instanceof Collection ? new ArrayList<>((Collection) iterable) : s(iterable.iterator());
    }

    @v2.b(serializable = true)
    public static <E> ArrayList<E> s(Iterator<? extends E> it) {
        ArrayList<E> q10 = q();
        E1.a(q10, it);
        return q10;
    }

    @SafeVarargs
    @v2.b(serializable = true)
    public static <E> ArrayList<E> t(E... eArr) {
        w2.H.E(eArr);
        ArrayList<E> arrayList = new ArrayList<>(i(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @v2.b(serializable = true)
    public static <E> ArrayList<E> u(int i10) {
        B.b(i10, "initialArraySize");
        return new ArrayList<>(i10);
    }

    @v2.b(serializable = true)
    public static <E> ArrayList<E> v(int i10) {
        return new ArrayList<>(i(i10));
    }

    @v2.c
    public static <E> CopyOnWriteArrayList<E> w() {
        return new CopyOnWriteArrayList<>();
    }

    @v2.c
    public static <E> CopyOnWriteArrayList<E> x(Iterable<? extends E> iterable) {
        return new CopyOnWriteArrayList<>(iterable instanceof Collection ? (Collection) iterable : r(iterable));
    }

    @v2.b(serializable = true)
    public static <E> LinkedList<E> y() {
        return new LinkedList<>();
    }

    @v2.b(serializable = true)
    public static <E> LinkedList<E> z(Iterable<? extends E> iterable) {
        LinkedList<E> y10 = y();
        D1.a(y10, iterable);
        return y10;
    }
}
