package com.google.common.collect;

import java.util.Map;
import javax.annotation.CheckForNull;

@I2.f("Use Maps.difference")
@X
@v2.b
public interface N1<K, V> {

    @I2.f("Use Maps.difference")
    public interface a<V> {
        @InterfaceC12518f2
        V a();

        @InterfaceC12518f2
        V b();

        boolean equals(@CheckForNull Object obj);

        int hashCode();
    }

    Map<K, a<V>> a();

    Map<K, V> b();

    Map<K, V> c();

    Map<K, V> d();

    boolean e();

    boolean equals(@CheckForNull Object obj);

    int hashCode();
}
