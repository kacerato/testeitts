package com.google.common.collect;

import com.google.common.collect.S2;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class Q0<R, C, V> extends I0 implements S2<R, C, V> {
    @Override
    public Map<C, Map<R, V>> A() {
        return k0().A();
    }

    @Override
    public Map<R, V> B(@InterfaceC12518f2 C c10) {
        return k0().B(c10);
    }

    @Override
    @I2.a
    @CheckForNull
    public V L(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10) {
        return k0().L(r10, c10, v10);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().Q(obj, obj2);
    }

    @Override
    public void Y(S2<? extends R, ? extends C, ? extends V> s22) {
        k0().Y(s22);
    }

    @Override
    public Set<S2.a<R, C, V>> c0() {
        return k0().c0();
    }

    @Override
    public void clear() {
        k0().clear();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return k0().containsValue(obj);
    }

    @Override
    public Set<C> d0() {
        return k0().d0();
    }

    @Override
    @CheckForNull
    public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().e(obj, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return k0().e0(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return k0().g(obj);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public Map<C, V> i0(@InterfaceC12518f2 R r10) {
        return k0().i0(r10);
    }

    @Override
    public boolean isEmpty() {
        return k0().isEmpty();
    }

    @Override
    public abstract S2<R, C, V> k0();

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().remove(obj, obj2);
    }

    @Override
    public int size() {
        return k0().size();
    }

    @Override
    public Map<R, Map<C, V>> u() {
        return k0().u();
    }

    @Override
    public Collection<V> values() {
        return k0().values();
    }

    @Override
    public Set<R> x() {
        return k0().x();
    }
}
