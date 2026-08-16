package com.google.common.collect;

import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public interface InterfaceC12582w<K, V> extends Map<K, V> {
    InterfaceC12582w<V, K> A8();

    @I2.a
    @CheckForNull
    V U6(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10);

    @Override
    @I2.a
    @CheckForNull
    V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10);

    @Override
    void putAll(Map<? extends K, ? extends V> map);

    @Override
    Set<V> values();
}
