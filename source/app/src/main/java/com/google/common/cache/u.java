package com.google.common.cache;

import java.util.concurrent.Executor;
import w2.H;

@v2.c
@g
public final class u {
    public static <K, V> r<K, V> c(final r<K, V> rVar, final Executor executor) {
        H.E(rVar);
        H.E(executor);
        return new r() {
            @Override
            public final void a(v vVar) {
                u.e(Executor.this, rVar, vVar);
            }
        };
    }

    public static void e(Executor executor, final r rVar, final v vVar) {
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                r.this.a(vVar);
            }
        });
    }
}
