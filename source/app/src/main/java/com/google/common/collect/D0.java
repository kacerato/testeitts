package com.google.common.collect;

import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class D0<K, V> extends I0 implements Map.Entry<K, V> {
    @Override
    public boolean equals(@CheckForNull Object obj) {
        return k0().equals(obj);
    }

    @Override
    @InterfaceC12518f2
    public K getKey() {
        return k0().getKey();
    }

    @Override
    @InterfaceC12518f2
    public V getValue() {
        return k0().getValue();
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public abstract Map.Entry<K, V> k0();

    public boolean o0(@CheckForNull Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return w2.B.a(getKey(), entry.getKey()) && w2.B.a(getValue(), entry.getValue());
    }

    public int p0() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @InterfaceC15800a
    public String q0() {
        String valueOf = String.valueOf(getKey());
        String valueOf2 = String.valueOf(getValue());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append("=");
        sb2.append(valueOf2);
        return sb2.toString();
    }

    @Override
    @InterfaceC12518f2
    public V setValue(@InterfaceC12518f2 V v10) {
        return k0().setValue(v10);
    }
}
