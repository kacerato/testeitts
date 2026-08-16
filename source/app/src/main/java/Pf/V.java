package pf;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class V implements List, Serializable, RandomAccess, Nf.a {

    @NotNull
    public static final V f103832b = new V();

    public static final long f103833c = -7390468764508069838L;

    public void a(int i10, Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void add(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean b(Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean c(@NotNull Void element) {
        kotlin.jvm.internal.M.p(element, "element");
        return false;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Void) {
            return c((Void) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(@NotNull Collection elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return elements.isEmpty();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    @Override
    public int hashCode() {
        return 1;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof Void) {
            return l((Void) obj);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    @NotNull
    public Iterator iterator() {
        return U.f103831b;
    }

    @Override
    @NotNull
    public Void get(int i10) {
        throw new IndexOutOfBoundsException("Empty list doesn't contain element at index " + i10 + '.');
    }

    public int k() {
        return 0;
    }

    public int l(@NotNull Void element) {
        kotlin.jvm.internal.M.p(element, "element");
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Void) {
            return m((Void) obj);
        }
        return -1;
    }

    @Override
    @NotNull
    public ListIterator listIterator() {
        return U.f103831b;
    }

    public int m(@NotNull Void element) {
        kotlin.jvm.internal.M.p(element, "element");
        return -1;
    }

    public final Object n() {
        return f103832b;
    }

    public Void o(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Void p(int i10, Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return k();
    }

    @Override
    @NotNull
    public List subList(int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11);
    }

    @Override
    public Object[] toArray() {
        return C14025w.a(this);
    }

    @NotNull
    public String toString() {
        return okhttp3.v.f99450n;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    @NotNull
    public ListIterator listIterator(int i10) {
        if (i10 == 0) {
            return U.f103831b;
        }
        throw new IndexOutOfBoundsException("Index: " + i10);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
