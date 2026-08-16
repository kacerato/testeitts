package com.google.common.cache;

import java.util.AbstractMap;
import javax.annotation.CheckForNull;
import w2.H;

@v2.b
@g
public final class v<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {

    public static final long f65575c = 0;

    public final q f65576b;

    public v(@CheckForNull K k10, @CheckForNull V v10, q qVar) {
        super(k10, v10);
        this.f65576b = (q) H.E(qVar);
    }

    public static <K, V> v<K, V> a(@CheckForNull K k10, @CheckForNull V v10, q qVar) {
        return new v<>(k10, v10, qVar);
    }

    public q b() {
        return this.f65576b;
    }

    public boolean c() {
        return this.f65576b.b();
    }
}
