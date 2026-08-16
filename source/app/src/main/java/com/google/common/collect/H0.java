package com.google.common.collect;

import com.google.common.collect.D2;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.c
public abstract class H0<E> extends O0<E> implements NavigableSet<E> {

    @InterfaceC15800a
    public class a extends D2.g<E> {
        public a(H0 h02) {
            super(h02);
        }
    }

    @Override
    public SortedSet<E> H0(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return subSet(e10, true, e11, false);
    }

    @Override
    public abstract NavigableSet<E> k0();

    @CheckForNull
    public E J0(@InterfaceC12518f2 E e10) {
        return (E) E1.J(tailSet(e10, true).iterator(), null);
    }

    @InterfaceC12518f2
    public E M0() {
        return iterator().next();
    }

    @CheckForNull
    public E N0(@InterfaceC12518f2 E e10) {
        return (E) E1.J(headSet(e10, true).descendingIterator(), null);
    }

    public SortedSet<E> O0(@InterfaceC12518f2 E e10) {
        return headSet(e10, false);
    }

    @CheckForNull
    public E P0(@InterfaceC12518f2 E e10) {
        return (E) E1.J(tailSet(e10, false).iterator(), null);
    }

    @InterfaceC12518f2
    public E Q0() {
        return descendingIterator().next();
    }

    @CheckForNull
    public E R0(@InterfaceC12518f2 E e10) {
        return (E) E1.J(headSet(e10, false).descendingIterator(), null);
    }

    @CheckForNull
    public E U0() {
        return (E) E1.U(iterator());
    }

    @CheckForNull
    public E V0() {
        return (E) E1.U(descendingIterator());
    }

    @InterfaceC15800a
    public NavigableSet<E> W0(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
        return tailSet(e10, z10).headSet(e11, z11);
    }

    public SortedSet<E> X0(@InterfaceC12518f2 E e10) {
        return tailSet(e10, true);
    }

    @CheckForNull
    public E ceiling(@InterfaceC12518f2 E e10) {
        return k0().ceiling(e10);
    }

    public Iterator<E> descendingIterator() {
        return k0().descendingIterator();
    }

    public NavigableSet<E> descendingSet() {
        return k0().descendingSet();
    }

    @CheckForNull
    public E floor(@InterfaceC12518f2 E e10) {
        return k0().floor(e10);
    }

    public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
        return k0().headSet(e10, z10);
    }

    @CheckForNull
    public E higher(@InterfaceC12518f2 E e10) {
        return k0().higher(e10);
    }

    @CheckForNull
    public E lower(@InterfaceC12518f2 E e10) {
        return k0().lower(e10);
    }

    @CheckForNull
    public E pollFirst() {
        return k0().pollFirst();
    }

    @CheckForNull
    public E pollLast() {
        return k0().pollLast();
    }

    public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
        return k0().subSet(e10, z10, e11, z11);
    }

    public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
        return k0().tailSet(e10, z10);
    }
}
