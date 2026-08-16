package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import java.util.concurrent.ExecutionException;
import w2.H;

@v2.c
@g
public abstract class i<K, V> extends h<K, V> implements j<K, V> {

    public static abstract class a<K, V> extends i<K, V> {

        public final j<K, V> f65435b;

        public a(j<K, V> jVar) {
            this.f65435b = (j) H.E(jVar);
        }

        @Override
        public final j<K, V> k0() {
            return this.f65435b;
        }
    }

    @Override
    public AbstractC12529i1<K, V> V(Iterable<? extends K> iterable) throws ExecutionException {
        return k0().V(iterable);
    }

    @Override
    public V apply(K k10) {
        return k0().apply(k10);
    }

    @Override
    public void f0(K k10) {
        k0().f0(k10);
    }

    @Override
    public V get(K k10) throws ExecutionException {
        return k0().get(k10);
    }

    @Override
    public V h(K k10) {
        return k0().h(k10);
    }

    @Override
    public abstract j<K, V> k0();
}
