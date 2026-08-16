package com.google.common.collect;

import java.util.Collection;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@X
@v2.c
@Deprecated
public abstract class AbstractBlockingDequeC12560q0<E> extends AbstractC12571t0<E> implements BlockingDeque<E> {
    @Override
    public abstract BlockingDeque<E> k0();

    @Override
    public int drainTo(Collection<? super E> collection) {
        return k0().drainTo(collection);
    }

    @Override
    public boolean offer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().offer(e10, j10, timeUnit);
    }

    @Override
    public boolean offerFirst(E e10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().offerFirst(e10, j10, timeUnit);
    }

    @Override
    public boolean offerLast(E e10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().offerLast(e10, j10, timeUnit);
    }

    @Override
    @CheckForNull
    public E poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().poll(j10, timeUnit);
    }

    @Override
    @CheckForNull
    public E pollFirst(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().pollFirst(j10, timeUnit);
    }

    @Override
    @CheckForNull
    public E pollLast(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().pollLast(j10, timeUnit);
    }

    @Override
    public void put(E e10) throws InterruptedException {
        k0().put(e10);
    }

    @Override
    public void putFirst(E e10) throws InterruptedException {
        k0().putFirst(e10);
    }

    @Override
    public void putLast(E e10) throws InterruptedException {
        k0().putLast(e10);
    }

    @Override
    public int remainingCapacity() {
        return k0().remainingCapacity();
    }

    @Override
    public E take() throws InterruptedException {
        return k0().take();
    }

    @Override
    public E takeFirst() throws InterruptedException {
        return k0().takeFirst();
    }

    @Override
    public E takeLast() throws InterruptedException {
        return k0().takeLast();
    }

    @Override
    public int drainTo(Collection<? super E> collection, int i10) {
        return k0().drainTo(collection, i10);
    }
}
