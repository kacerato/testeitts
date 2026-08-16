package pf;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nAbstractList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n363#2,7:182\n391#2,7:189\n*S KotlinDebug\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n*L\n27#1:182,7\n29#1:189,7\n*E\n"})
@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14967d<E> extends AbstractC14963b<E> implements List<E>, Nf.a {

    @NotNull
    public static final a f103841b = new a(null);

    public static final int f103842c = 2147483639;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final void a(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("startIndex: " + i10 + ", endIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i10 + " > endIndex: " + i11);
        }

        public final void b(int i10, int i11) {
            if (i10 < 0 || i10 >= i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void c(int i10, int i11) {
            if (i10 < 0 || i10 > i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void d(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
        }

        public final int e(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            return i12 - 2147483639 > 0 ? i11 > 2147483639 ? Integer.MAX_VALUE : 2147483639 : i12;
        }

        public final boolean f(@NotNull Collection<?> c10, @NotNull Collection<?> other) {
            kotlin.jvm.internal.M.p(c10, "c");
            kotlin.jvm.internal.M.p(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            Iterator<?> it = other.iterator();
            Iterator<?> it2 = c10.iterator();
            while (it2.hasNext()) {
                if (!kotlin.jvm.internal.M.g(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(@NotNull Collection<?> c10) {
            kotlin.jvm.internal.M.p(c10, "c");
            Iterator<?> it = c10.iterator();
            int i10 = 1;
            while (it.hasNext()) {
                Object next = it.next();
                i10 = (i10 * 31) + (next != null ? next.hashCode() : 0);
            }
            return i10;
        }

        public a() {
        }
    }

    public class b implements Iterator<E>, Nf.a {

        public int f103843b;

        public b() {
        }

        public final int a() {
            return this.f103843b;
        }

        public final void b(int i10) {
            this.f103843b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f103843b < AbstractC14967d.this.size();
        }

        @Override
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            AbstractC14967d<E> abstractC14967d = AbstractC14967d.this;
            int i10 = this.f103843b;
            this.f103843b = i10 + 1;
            return abstractC14967d.get(i10);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public class c extends AbstractC14967d<E>.b implements ListIterator<E>, Nf.a {
        public c(int i10) {
            super();
            AbstractC14967d.f103841b.c(i10, AbstractC14967d.this.size());
            b(i10);
        }

        @Override
        public void add(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override
        public int nextIndex() {
            return a();
        }

        @Override
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            AbstractC14967d<E> abstractC14967d = AbstractC14967d.this;
            b(a() - 1);
            return abstractC14967d.get(a());
        }

        @Override
        public int previousIndex() {
            return a() - 1;
        }

        @Override
        public void set(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class C1952d<E> extends AbstractC14967d<E> implements RandomAccess {

        @NotNull
        public final AbstractC14967d<E> f103846d;

        public final int f103847e;

        public int f103848f;

        /* JADX WARN: Multi-variable type inference failed */
        public C1952d(@NotNull AbstractC14967d<? extends E> list, int i10, int i11) {
            kotlin.jvm.internal.M.p(list, "list");
            this.f103846d = list;
            this.f103847e = i10;
            AbstractC14967d.f103841b.d(i10, i11, list.size());
            this.f103848f = i11 - i10;
        }

        @Override
        public int b() {
            return this.f103848f;
        }

        @Override
        public E get(int i10) {
            AbstractC14967d.f103841b.b(i10, this.f103848f);
            return this.f103846d.get(this.f103847e + i10);
        }

        @Override
        @NotNull
        public List<E> subList(int i10, int i11) {
            AbstractC14967d.f103841b.d(i10, i11, this.f103848f);
            AbstractC14967d<E> abstractC14967d = this.f103846d;
            int i12 = this.f103847e;
            return new C1952d(abstractC14967d, i10 + i12, i12 + i11);
        }
    }

    @Override
    public void add(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public abstract int b();

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return f103841b.f(this, (Collection) obj);
        }
        return false;
    }

    public abstract E get(int i10);

    @Override
    public int hashCode() {
        return f103841b.g(this);
    }

    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (kotlin.jvm.internal.M.g(it.next(), obj)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    @NotNull
    public Iterator<E> iterator() {
        return new b();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.M.g(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override
    @NotNull
    public ListIterator<E> listIterator() {
        return new c(0);
    }

    @Override
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public E set(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    @NotNull
    public List<E> subList(int i10, int i11) {
        return new C1952d(this, i10, i11);
    }

    @Override
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        return new c(i10);
    }
}
