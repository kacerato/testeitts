package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@I2.a
@A
@v2.c
public abstract class H<E> extends com.google.common.collect.J0<E> implements BlockingQueue<E> {
    @Override
    public abstract BlockingQueue<E> k0();

    @Override
    public int drainTo(Collection<? super E> collection, int i10) {
        return k0().drainTo(collection, i10);
    }

    @Override
    public boolean offer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().offer(e10, j10, timeUnit);
    }

    @Override
    @CheckForNull
    public E poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().poll(j10, timeUnit);
    }

    @Override
    public void put(E e10) throws InterruptedException {
        k0().put(e10);
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
    public int drainTo(Collection<? super E> collection) {
        return k0().drainTo(collection);
    }
}
