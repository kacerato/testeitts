package com.google.common.collect;

import java.util.Deque;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.c
public abstract class AbstractC12571t0<E> extends J0<E> implements Deque<E> {
    @Override
    public abstract Deque<E> k0();

    @Override
    public void addFirst(@InterfaceC12518f2 E e10) {
        k0().addFirst(e10);
    }

    @Override
    public void addLast(@InterfaceC12518f2 E e10) {
        k0().addLast(e10);
    }

    @Override
    public Iterator<E> descendingIterator() {
        return k0().descendingIterator();
    }

    @Override
    @InterfaceC12518f2
    public E getFirst() {
        return k0().getFirst();
    }

    @Override
    @InterfaceC12518f2
    public E getLast() {
        return k0().getLast();
    }

    @Override
    @I2.a
    public boolean offerFirst(@InterfaceC12518f2 E e10) {
        return k0().offerFirst(e10);
    }

    @Override
    @I2.a
    public boolean offerLast(@InterfaceC12518f2 E e10) {
        return k0().offerLast(e10);
    }

    @Override
    @CheckForNull
    public E peekFirst() {
        return k0().peekFirst();
    }

    @Override
    @CheckForNull
    public E peekLast() {
        return k0().peekLast();
    }

    @Override
    @I2.a
    @CheckForNull
    public E pollFirst() {
        return k0().pollFirst();
    }

    @Override
    @I2.a
    @CheckForNull
    public E pollLast() {
        return k0().pollLast();
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E pop() {
        return k0().pop();
    }

    @Override
    public void push(@InterfaceC12518f2 E e10) {
        k0().push(e10);
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E removeFirst() {
        return k0().removeFirst();
    }

    @Override
    @I2.a
    public boolean removeFirstOccurrence(@CheckForNull Object obj) {
        return k0().removeFirstOccurrence(obj);
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E removeLast() {
        return k0().removeLast();
    }

    @Override
    @I2.a
    public boolean removeLastOccurrence(@CheckForNull Object obj) {
        return k0().removeLastOccurrence(obj);
    }
}
