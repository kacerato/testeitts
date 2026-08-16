package pf;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.C14025w;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nAbstractCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1807#2,3:51\n1786#2,3:54\n*S KotlinDebug\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n*L\n19#1:51,3\n22#1:54,3\n*E\n"})
@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14963b<E> implements Collection<E>, Nf.a {
    public static final CharSequence c(AbstractC14963b abstractC14963b, Object obj) {
        return obj == abstractC14963b ? "(this Collection)" : String.valueOf(obj);
    }

    @Override
    public boolean add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract int b();

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.M.g(it.next(), obj)) {
                return true;
            }
        }
        return false;
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
        return size() == 0;
    }

    @Override
    @NotNull
    public abstract Iterator<E> iterator();

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
        return b();
    }

    @Override
    @NotNull
    public Object[] toArray() {
        return C14025w.a(this);
    }

    @NotNull
    public String toString() {
        return S.r3(this, ", ", "[", "]", 0, null, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence c10;
                c10 = AbstractC14963b.c(AbstractC14963b.this, obj);
                return c10;
            }
        }, 24, null);
    }

    @Override
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
