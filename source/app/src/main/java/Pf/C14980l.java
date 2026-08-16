package pf;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.C14012i;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/ArrayAsCollection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n1786#2,3:530\n*S KotlinDebug\n*F\n+ 1 Collections.kt\nkotlin/collections/ArrayAsCollection\n*L\n65#1:530,3\n*E\n"})
public final class C14980l<T> implements Collection<T>, Nf.a {

    @NotNull
    public final T[] f103865b;

    public final boolean f103866c;

    public C14980l(@NotNull T[] values, boolean z10) {
        kotlin.jvm.internal.M.p(values, "values");
        this.f103865b = values;
        this.f103866c = z10;
    }

    public int a() {
        return this.f103865b.length;
    }

    @Override
    public boolean add(T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public final T[] b() {
        return this.f103865b;
    }

    public final boolean c() {
        return this.f103866c;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        return C14960A.B8(this.f103865b, obj);
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<?> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.f103865b.length == 0;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return C14012i.a(this.f103865b);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return a();
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }

    @Override
    @NotNull
    public final Object[] toArray() {
        return G.i(this.f103865b, this.f103866c);
    }
}
