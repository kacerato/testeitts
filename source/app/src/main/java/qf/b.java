package qf;

import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14967d;
import pf.AbstractC14975h;
import pf.C14985q;
import pf.G;

@t0({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
public final class b<E> extends AbstractC14975h<E> implements List<E>, RandomAccess, Serializable, Nf.e {

    @NotNull
    public static final C1969b f107844e = new C1969b(null);

    @NotNull
    public static final b f107845f;

    @NotNull
    public E[] f107846b;

    public int f107847c;

    public boolean f107848d;

    public static final class a<E> extends AbstractC14975h<E> implements List<E>, RandomAccess, Serializable, Nf.e {

        @NotNull
        public E[] f107849b;

        public final int f107850c;

        public int f107851d;

        @Nullable
        public final a<E> f107852e;

        @NotNull
        public final b<E> f107853f;

        @t0({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$BuilderSubList$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
        public static final class C1968a<E> implements ListIterator<E>, Nf.f {

            @NotNull
            public final a<E> f107854b;

            public int f107855c;

            public int f107856d;

            public int f107857e;

            public C1968a(@NotNull a<E> list, int i10) {
                M.p(list, "list");
                this.f107854b = list;
                this.f107855c = i10;
                this.f107856d = -1;
                this.f107857e = ((AbstractList) list).modCount;
            }

            private final void a() {
                if (((AbstractList) this.f107854b.f107853f).modCount != this.f107857e) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public void add(E e10) {
                a();
                a<E> aVar = this.f107854b;
                int i10 = this.f107855c;
                this.f107855c = i10 + 1;
                aVar.add(i10, e10);
                this.f107856d = -1;
                this.f107857e = ((AbstractList) this.f107854b).modCount;
            }

            @Override
            public boolean hasNext() {
                return this.f107855c < this.f107854b.f107851d;
            }

            @Override
            public boolean hasPrevious() {
                return this.f107855c > 0;
            }

            @Override
            public E next() {
                a();
                if (this.f107855c >= this.f107854b.f107851d) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f107855c;
                this.f107855c = i10 + 1;
                this.f107856d = i10;
                return (E) this.f107854b.f107849b[this.f107854b.f107850c + this.f107856d];
            }

            @Override
            public int nextIndex() {
                return this.f107855c;
            }

            @Override
            public E previous() {
                a();
                int i10 = this.f107855c;
                if (i10 <= 0) {
                    throw new NoSuchElementException();
                }
                int i11 = i10 - 1;
                this.f107855c = i11;
                this.f107856d = i11;
                return (E) this.f107854b.f107849b[this.f107854b.f107850c + this.f107856d];
            }

            @Override
            public int previousIndex() {
                return this.f107855c - 1;
            }

            @Override
            public void remove() {
                a();
                int i10 = this.f107856d;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.f107854b.j(i10);
                this.f107855c = this.f107856d;
                this.f107856d = -1;
                this.f107857e = ((AbstractList) this.f107854b).modCount;
            }

            @Override
            public void set(E e10) {
                a();
                int i10 = this.f107856d;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.f107854b.set(i10, e10);
            }
        }

        public a(@NotNull E[] backing, int i10, int i11, @Nullable a<E> aVar, @NotNull b<E> root) {
            M.p(backing, "backing");
            M.p(root, "root");
            this.f107849b = backing;
            this.f107850c = i10;
            this.f107851d = i11;
            this.f107852e = aVar;
            this.f107853f = root;
            this.modCount = root.modCount;
        }

        private final Object D() {
            if (x()) {
                return new h(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        private final void y(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final void z() {
            this.modCount++;
        }

        public final E A(int i10) {
            z();
            a<E> aVar = this.f107852e;
            this.f107851d--;
            return aVar != null ? aVar.A(i10) : (E) this.f107853f.E(i10);
        }

        public final void B(int i10, int i11) {
            if (i11 > 0) {
                z();
            }
            a<E> aVar = this.f107852e;
            if (aVar != null) {
                aVar.B(i10, i11);
            } else {
                this.f107853f.F(i10, i11);
            }
            this.f107851d -= i11;
        }

        public final int C(int i10, int i11, Collection<? extends E> collection, boolean z10) {
            a<E> aVar = this.f107852e;
            int C10 = aVar != null ? aVar.C(i10, i11, collection, z10) : this.f107853f.G(i10, i11, collection, z10);
            if (C10 > 0) {
                z();
            }
            this.f107851d -= C10;
            return C10;
        }

        @Override
        public int a() {
            s();
            return this.f107851d;
        }

        @Override
        public boolean add(E e10) {
            u();
            s();
            r(this.f107850c + this.f107851d, e10);
            return true;
        }

        @Override
        public boolean addAll(@NotNull Collection<? extends E> elements) {
            M.p(elements, "elements");
            u();
            s();
            int size = elements.size();
            p(this.f107850c + this.f107851d, elements, size);
            return size > 0;
        }

        @Override
        public void clear() {
            u();
            s();
            B(this.f107850c, this.f107851d);
        }

        @Override
        public boolean equals(@Nullable Object obj) {
            s();
            return obj == this || ((obj instanceof List) && v((List) obj));
        }

        @Override
        public E get(int i10) {
            s();
            AbstractC14967d.f103841b.b(i10, this.f107851d);
            return this.f107849b[this.f107850c + i10];
        }

        @Override
        public int hashCode() {
            s();
            return qf.c.b(this.f107849b, this.f107850c, this.f107851d);
        }

        @Override
        public int indexOf(Object obj) {
            s();
            for (int i10 = 0; i10 < this.f107851d; i10++) {
                if (M.g(this.f107849b[this.f107850c + i10], obj)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            s();
            return this.f107851d == 0;
        }

        @Override
        @NotNull
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override
        @InterfaceC14394D
        public E j(int i10) {
            u();
            s();
            AbstractC14967d.f103841b.b(i10, this.f107851d);
            return A(this.f107850c + i10);
        }

        @Override
        public int lastIndexOf(Object obj) {
            s();
            for (int i10 = this.f107851d - 1; i10 >= 0; i10--) {
                if (M.g(this.f107849b[this.f107850c + i10], obj)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        @NotNull
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        public final void p(int i10, Collection<? extends E> collection, int i11) {
            z();
            a<E> aVar = this.f107852e;
            if (aVar != null) {
                aVar.p(i10, collection, i11);
            } else {
                this.f107853f.v(i10, collection, i11);
            }
            this.f107849b = (E[]) this.f107853f.f107846b;
            this.f107851d += i11;
        }

        public final void r(int i10, E e10) {
            z();
            a<E> aVar = this.f107852e;
            if (aVar != null) {
                aVar.r(i10, e10);
            } else {
                this.f107853f.w(i10, e10);
            }
            this.f107849b = (E[]) this.f107853f.f107846b;
            this.f107851d++;
        }

        @Override
        public boolean remove(Object obj) {
            u();
            s();
            int indexOf = indexOf(obj);
            if (indexOf >= 0) {
                j(indexOf);
            }
            return indexOf >= 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean removeAll(@NotNull Collection<?> elements) {
            M.p(elements, "elements");
            u();
            s();
            return C(this.f107850c, this.f107851d, elements, false) > 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean retainAll(@NotNull Collection<?> elements) {
            M.p(elements, "elements");
            u();
            s();
            return C(this.f107850c, this.f107851d, elements, true) > 0;
        }

        public final void s() {
            if (this.f107853f.modCount != this.modCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public E set(int i10, E e10) {
            u();
            s();
            AbstractC14967d.f103841b.b(i10, this.f107851d);
            E[] eArr = this.f107849b;
            int i11 = this.f107850c;
            E e11 = eArr[i11 + i10];
            eArr[i11 + i10] = e10;
            return e11;
        }

        @Override
        @NotNull
        public List<E> subList(int i10, int i11) {
            AbstractC14967d.f103841b.d(i10, i11, this.f107851d);
            return new a(this.f107849b, this.f107850c + i10, i11 - i10, this, this.f107853f);
        }

        @Override
        @NotNull
        public <T> T[] toArray(@NotNull T[] array) {
            M.p(array, "array");
            s();
            int length = array.length;
            int i10 = this.f107851d;
            if (length < i10) {
                E[] eArr = this.f107849b;
                int i11 = this.f107850c;
                T[] tArr = (T[]) Arrays.copyOfRange(eArr, i11, i10 + i11, array.getClass());
                M.o(tArr, "copyOfRange(...)");
                return tArr;
            }
            E[] eArr2 = this.f107849b;
            int i12 = this.f107850c;
            C14985q.B0(eArr2, array, 0, i12, i10 + i12);
            return (T[]) G.o(this.f107851d, array);
        }

        @Override
        @NotNull
        public String toString() {
            s();
            return qf.c.c(this.f107849b, this.f107850c, this.f107851d, this);
        }

        public final void u() {
            if (x()) {
                throw new UnsupportedOperationException();
            }
        }

        public final boolean v(List<?> list) {
            return qf.c.a(this.f107849b, this.f107850c, this.f107851d, list);
        }

        public final boolean x() {
            return this.f107853f.f107848d;
        }

        @Override
        @NotNull
        public ListIterator<E> listIterator(int i10) {
            s();
            AbstractC14967d.f103841b.c(i10, this.f107851d);
            return new C1968a(this, i10);
        }

        @Override
        public void add(int i10, E e10) {
            u();
            s();
            AbstractC14967d.f103841b.c(i10, this.f107851d);
            r(this.f107850c + i10, e10);
        }

        @Override
        public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
            M.p(elements, "elements");
            u();
            s();
            AbstractC14967d.f103841b.c(i10, this.f107851d);
            int size = elements.size();
            p(this.f107850c + i10, elements, size);
            return size > 0;
        }

        @Override
        @NotNull
        public Object[] toArray() {
            s();
            E[] eArr = this.f107849b;
            int i10 = this.f107850c;
            return C14985q.l1(eArr, i10, this.f107851d + i10);
        }
    }

    public static final class C1969b {
        public C1969b(C14026x c14026x) {
            this();
        }

        public C1969b() {
        }
    }

    @t0({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
    public static final class c<E> implements ListIterator<E>, Nf.f {

        @NotNull
        public final b<E> f107858b;

        public int f107859c;

        public int f107860d;

        public int f107861e;

        public c(@NotNull b<E> list, int i10) {
            M.p(list, "list");
            this.f107858b = list;
            this.f107859c = i10;
            this.f107860d = -1;
            this.f107861e = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.f107858b).modCount != this.f107861e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void add(E e10) {
            a();
            b<E> bVar = this.f107858b;
            int i10 = this.f107859c;
            this.f107859c = i10 + 1;
            bVar.add(i10, e10);
            this.f107860d = -1;
            this.f107861e = ((AbstractList) this.f107858b).modCount;
        }

        @Override
        public boolean hasNext() {
            return this.f107859c < this.f107858b.f107847c;
        }

        @Override
        public boolean hasPrevious() {
            return this.f107859c > 0;
        }

        @Override
        public E next() {
            a();
            if (this.f107859c >= this.f107858b.f107847c) {
                throw new NoSuchElementException();
            }
            int i10 = this.f107859c;
            this.f107859c = i10 + 1;
            this.f107860d = i10;
            return (E) this.f107858b.f107846b[this.f107860d];
        }

        @Override
        public int nextIndex() {
            return this.f107859c;
        }

        @Override
        public E previous() {
            a();
            int i10 = this.f107859c;
            if (i10 <= 0) {
                throw new NoSuchElementException();
            }
            int i11 = i10 - 1;
            this.f107859c = i11;
            this.f107860d = i11;
            return (E) this.f107858b.f107846b[this.f107860d];
        }

        @Override
        public int previousIndex() {
            return this.f107859c - 1;
        }

        @Override
        public void remove() {
            a();
            int i10 = this.f107860d;
            if (i10 == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.f107858b.j(i10);
            this.f107859c = this.f107860d;
            this.f107860d = -1;
            this.f107861e = ((AbstractList) this.f107858b).modCount;
        }

        @Override
        public void set(E e10) {
            a();
            int i10 = this.f107860d;
            if (i10 == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.f107858b.set(i10, e10);
        }
    }

    static {
        b bVar = new b(0);
        bVar.f107848d = true;
        f107845f = bVar;
    }

    public b() {
        this(0, 1, null);
    }

    private final void D() {
        this.modCount++;
    }

    public final E E(int i10) {
        D();
        E[] eArr = this.f107846b;
        E e10 = eArr[i10];
        C14985q.B0(eArr, eArr, i10, i10 + 1, this.f107847c);
        qf.c.f(this.f107846b, this.f107847c - 1);
        this.f107847c--;
        return e10;
    }

    public final void F(int i10, int i11) {
        if (i11 > 0) {
            D();
        }
        E[] eArr = this.f107846b;
        C14985q.B0(eArr, eArr, i10, i10 + i11, this.f107847c);
        E[] eArr2 = this.f107846b;
        int i12 = this.f107847c;
        qf.c.g(eArr2, i12 - i11, i12);
        this.f107847c -= i11;
    }

    public final int G(int i10, int i11, Collection<? extends E> collection, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i10 + i12;
            if (collection.contains(this.f107846b[i14]) == z10) {
                E[] eArr = this.f107846b;
                i12++;
                eArr[i13 + i10] = eArr[i14];
                i13++;
            } else {
                i12++;
            }
        }
        int i15 = i11 - i13;
        E[] eArr2 = this.f107846b;
        C14985q.B0(eArr2, eArr2, i10 + i13, i11 + i10, this.f107847c);
        E[] eArr3 = this.f107846b;
        int i16 = this.f107847c;
        qf.c.g(eArr3, i16 - i15, i16);
        if (i15 > 0) {
            D();
        }
        this.f107847c -= i15;
        return i15;
    }

    private final Object H() {
        if (this.f107848d) {
            return new h(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    public final void v(int i10, Collection<? extends E> collection, int i11) {
        D();
        C(i10, i11);
        Iterator<? extends E> it = collection.iterator();
        for (int i12 = 0; i12 < i11; i12++) {
            this.f107846b[i10 + i12] = it.next();
        }
    }

    public final void w(int i10, E e10) {
        D();
        C(i10, 1);
        this.f107846b[i10] = e10;
    }

    private final void y() {
        if (this.f107848d) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean z(List<?> list) {
        return qf.c.a(this.f107846b, 0, this.f107847c, list);
    }

    public final void A(int i10) {
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.f107846b;
        if (i10 > eArr.length) {
            this.f107846b = (E[]) qf.c.e(this.f107846b, AbstractC14967d.f103841b.e(eArr.length, i10));
        }
    }

    public final void B(int i10) {
        A(this.f107847c + i10);
    }

    public final void C(int i10, int i11) {
        B(i11);
        E[] eArr = this.f107846b;
        C14985q.B0(eArr, eArr, i10 + i11, i10, this.f107847c);
        this.f107847c += i11;
    }

    @Override
    public int a() {
        return this.f107847c;
    }

    @Override
    public boolean add(E e10) {
        y();
        w(this.f107847c, e10);
        return true;
    }

    @Override
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        M.p(elements, "elements");
        y();
        int size = elements.size();
        v(this.f107847c, elements, size);
        return size > 0;
    }

    @Override
    public void clear() {
        y();
        F(0, this.f107847c);
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof List) && z((List) obj));
    }

    @Override
    public E get(int i10) {
        AbstractC14967d.f103841b.b(i10, this.f107847c);
        return this.f107846b[i10];
    }

    @Override
    public int hashCode() {
        return qf.c.b(this.f107846b, 0, this.f107847c);
    }

    @Override
    public int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f107847c; i10++) {
            if (M.g(this.f107846b[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.f107847c == 0;
    }

    @Override
    @NotNull
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override
    @InterfaceC14394D
    public E j(int i10) {
        y();
        AbstractC14967d.f103841b.b(i10, this.f107847c);
        return E(i10);
    }

    @Override
    public int lastIndexOf(Object obj) {
        for (int i10 = this.f107847c - 1; i10 >= 0; i10--) {
            if (M.g(this.f107846b[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override
    public boolean remove(Object obj) {
        y();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            j(indexOf);
        }
        return indexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean removeAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        y();
        return G(0, this.f107847c, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean retainAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        y();
        return G(0, this.f107847c, elements, true) > 0;
    }

    @Override
    public E set(int i10, E e10) {
        y();
        AbstractC14967d.f103841b.b(i10, this.f107847c);
        E[] eArr = this.f107846b;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        return e11;
    }

    @Override
    @NotNull
    public List<E> subList(int i10, int i11) {
        AbstractC14967d.f103841b.d(i10, i11, this.f107847c);
        return new a(this.f107846b, i10, i11 - i10, null, this);
    }

    @Override
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        M.p(array, "array");
        int length = array.length;
        int i10 = this.f107847c;
        if (length < i10) {
            T[] tArr = (T[]) Arrays.copyOfRange(this.f107846b, 0, i10, array.getClass());
            M.o(tArr, "copyOfRange(...)");
            return tArr;
        }
        C14985q.B0(this.f107846b, array, 0, 0, i10);
        return (T[]) G.o(this.f107847c, array);
    }

    @Override
    @NotNull
    public String toString() {
        return qf.c.c(this.f107846b, 0, this.f107847c, this);
    }

    @NotNull
    public final List<E> x() {
        y();
        this.f107848d = true;
        return this.f107847c > 0 ? this : f107845f;
    }

    public b(int i10) {
        this.f107846b = (E[]) qf.c.d(i10);
    }

    @Override
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        AbstractC14967d.f103841b.c(i10, this.f107847c);
        return new c(this, i10);
    }

    @Override
    public void add(int i10, E e10) {
        y();
        AbstractC14967d.f103841b.c(i10, this.f107847c);
        w(i10, e10);
    }

    public b(int i10, int i11, C14026x c14026x) {
        this((i11 & 1) != 0 ? 10 : i10);
    }

    @Override
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        M.p(elements, "elements");
        y();
        AbstractC14967d.f103841b.c(i10, this.f107847c);
        int size = elements.size();
        v(i10, elements, size);
        return size > 0;
    }

    @Override
    @NotNull
    public Object[] toArray() {
        return C14985q.l1(this.f107846b, 0, this.f107847c);
    }
}
