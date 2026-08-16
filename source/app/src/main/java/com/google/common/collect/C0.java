package com.google.common.collect;

import com.google.common.collect.Q1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class C0<K, V> extends I0 implements Map<K, V> {

    @InterfaceC15800a
    public abstract class a extends Q1.s<K, V> {
        public a() {
        }

        @Override
        public Map<K, V> a() {
            return C0.this;
        }
    }

    @InterfaceC15800a
    public class b extends Q1.B<K, V> {
        public b(C0 c02) {
            super(c02);
        }
    }

    @InterfaceC15800a
    public class c extends Q1.Q<K, V> {
        public c(C0 c02) {
            super(c02);
        }
    }

    @Override
    public void clear() {
        k0().clear();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return k0().containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return k0().containsValue(obj);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return k0().entrySet();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return k0().get(obj);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return k0().isEmpty();
    }

    @Override
    public Set<K> o() {
        return k0().o();
    }

    @Override
    public abstract Map<K, V> k0();

    public void o0() {
        E1.h(entrySet().iterator());
    }

    @InterfaceC15800a
    public boolean p0(@CheckForNull Object obj) {
        return Q1.q(this, obj);
    }

    @Override
    @I2.a
    @CheckForNull
    public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return k0().put(k10, v10);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        k0().putAll(map);
    }

    public boolean q0(@CheckForNull Object obj) {
        return Q1.r(this, obj);
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        return k0().remove(obj);
    }

    @Override
    public int size() {
        return k0().size();
    }

    public boolean u0(@CheckForNull Object obj) {
        return Q1.w(this, obj);
    }

    public int v0() {
        return D2.k(entrySet());
    }

    @Override
    public Collection<V> values() {
        return k0().values();
    }

    public boolean w0() {
        return !entrySet().iterator().hasNext();
    }

    public void x0(Map<? extends K, ? extends V> map) {
        Q1.j0(this, map);
    }

    @CheckForNull
    @InterfaceC15800a
    public V y0(@CheckForNull Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (w2.B.a(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    public String z0() {
        return Q1.w0(this);
    }
}
