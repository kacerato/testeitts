package com.google.common.collect;

import java.io.Serializable;

@X
@v2.b(serializable = true)
public class C12509d1<K, V> extends AbstractC12519g<K, V> implements Serializable {

    public static final long f66530d = 0;

    @InterfaceC12518f2
    public final K f66531b;

    @InterfaceC12518f2
    public final V f66532c;

    public C12509d1(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        this.f66531b = k10;
        this.f66532c = v10;
    }

    @Override
    @InterfaceC12518f2
    public final K getKey() {
        return this.f66531b;
    }

    @Override
    @InterfaceC12518f2
    public final V getValue() {
        return this.f66532c;
    }

    @Override
    @InterfaceC12518f2
    public final V setValue(@InterfaceC12518f2 V v10) {
        throw new UnsupportedOperationException();
    }
}
