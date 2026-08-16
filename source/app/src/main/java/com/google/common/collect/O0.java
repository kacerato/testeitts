package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class O0<E> extends K0<E> implements SortedSet<E> {
    @Override
    public abstract SortedSet<E> k0();

    @InterfaceC15800a
    public SortedSet<E> H0(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return tailSet(e10).headSet(e11);
    }

    @CheckForNull
    public Comparator<? super E> comparator() {
        return k0().comparator();
    }

    @InterfaceC12518f2
    public E first() {
        return k0().first();
    }

    public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
        return k0().headSet(e10);
    }

    @InterfaceC12518f2
    public E last() {
        return k0().last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @InterfaceC15800a
    public boolean q0(@CheckForNull Object obj) {
        try {
            return M0.D0(comparator(), tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return k0().subSet(e10, e11);
    }

    public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
        return k0().tailSet(e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @InterfaceC15800a
    public boolean w0(@CheckForNull Object obj) {
        try {
            Iterator<E> it = tailSet(obj).iterator();
            if (it.hasNext()) {
                if (M0.D0(comparator(), it.next(), obj) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }
}
