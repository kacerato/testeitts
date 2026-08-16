package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@I2.f("Use ImmutableTable, HashBasedTable, or another implementation")
@X
@v2.b
public interface S2<R, C, V> {

    public interface a<R, C, V> {
        @InterfaceC12518f2
        C a();

        @InterfaceC12518f2
        R b();

        boolean equals(@CheckForNull Object obj);

        @InterfaceC12518f2
        V getValue();

        int hashCode();
    }

    Map<C, Map<R, V>> A();

    Map<R, V> B(@InterfaceC12518f2 C c10);

    @I2.a
    @CheckForNull
    V L(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10);

    boolean Q(@CheckForNull @I2.c("R") Object obj, @CheckForNull @I2.c("C") Object obj2);

    void Y(S2<? extends R, ? extends C, ? extends V> s22);

    Set<a<R, C, V>> c0();

    void clear();

    boolean containsValue(@CheckForNull @I2.c("V") Object obj);

    Set<C> d0();

    @CheckForNull
    V e(@CheckForNull @I2.c("R") Object obj, @CheckForNull @I2.c("C") Object obj2);

    boolean e0(@CheckForNull @I2.c("R") Object obj);

    boolean equals(@CheckForNull Object obj);

    boolean g(@CheckForNull @I2.c("C") Object obj);

    int hashCode();

    Map<C, V> i0(@InterfaceC12518f2 R r10);

    boolean isEmpty();

    @I2.a
    @CheckForNull
    V remove(@CheckForNull @I2.c("R") Object obj, @CheckForNull @I2.c("C") Object obj2);

    int size();

    Map<R, Map<C, V>> u();

    Collection<V> values();

    Set<R> x();
}
