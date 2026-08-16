package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.I0;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@g
public abstract class h<K, V> extends I0 implements c<K, V> {

    public static abstract class a<K, V> extends h<K, V> {

        public final c<K, V> f65434b;

        public a(c<K, V> cVar) {
            this.f65434b = (c) H.E(cVar);
        }

        @Override
        public final c<K, V> k0() {
            return this.f65434b;
        }
    }

    @Override
    public AbstractC12529i1<K, V> R(Iterable<? extends Object> iterable) {
        return k0().R(iterable);
    }

    @Override
    public void b0(Object obj) {
        k0().b0(obj);
    }

    @Override
    public void cleanUp() {
        k0().cleanUp();
    }

    @Override
    public void j0() {
        k0().j0();
    }

    @Override
    public ConcurrentMap<K, V> k() {
        return k0().k();
    }

    @Override
    public V m(K k10, Callable<? extends V> callable) throws ExecutionException {
        return k0().m(k10, callable);
    }

    @Override
    public abstract c<K, V> k0();

    @Override
    public void put(K k10, V v10) {
        k0().put(k10, v10);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        k0().putAll(map);
    }

    @Override
    @CheckForNull
    public V r(Object obj) {
        return k0().r(obj);
    }

    @Override
    public void s(Iterable<? extends Object> iterable) {
        k0().s(iterable);
    }

    @Override
    public long size() {
        return k0().size();
    }

    @Override
    public f stats() {
        return k0().stats();
    }
}
