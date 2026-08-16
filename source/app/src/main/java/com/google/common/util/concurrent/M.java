package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

@I2.a
@A
@v2.b
public abstract class M<V> extends L<V> implements Z<V> {

    public static abstract class a<V> extends M<V> {

        public final Z<V> f67302b;

        public a(Z<V> z10) {
            this.f67302b = (Z) w2.H.E(z10);
        }

        @Override
        public final Z<V> k0() {
            return this.f67302b;
        }
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        k0().addListener(runnable, executor);
    }

    @Override
    public abstract Z<? extends V> k0();
}
