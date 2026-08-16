package pf;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class X implements Set, Serializable, Nf.a {

    @NotNull
    public static final X f103836b = new X();

    public static final long f103837c = 3406603774387020532L;

    private final Object d() {
        return f103836b;
    }

    public boolean a(Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean b(@NotNull Void element) {
        kotlin.jvm.internal.M.p(element, "element");
        return false;
    }

    public int c() {
        return 0;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Void) {
            return b((Void) obj);
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
        return (obj instanceof Set) && ((Set) obj).isEmpty();
    }

    @Override
    public int hashCode() {
        return 0;
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
    public boolean remove(Object obj) {
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
    public final int size() {
        return c();
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
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
