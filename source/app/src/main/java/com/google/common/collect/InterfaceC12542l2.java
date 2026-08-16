package com.google.common.collect;

import java.lang.Comparable;
import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@I2.f("Use ImmutableRangeMap or TreeRangeMap")
@X
@InterfaceC15800a
public interface InterfaceC12542l2<K extends Comparable, V> {
    void a(C12534j2<K> c12534j2);

    C12534j2<K> c();

    void clear();

    InterfaceC12542l2<K, V> d(C12534j2<K> c12534j2);

    Map<C12534j2<K>, V> e();

    boolean equals(@CheckForNull Object obj);

    @CheckForNull
    Map.Entry<C12534j2<K>, V> f(K k10);

    Map<C12534j2<K>, V> g();

    void h(InterfaceC12542l2<K, V> interfaceC12542l2);

    int hashCode();

    void i(C12534j2<K> c12534j2, V v10);

    @CheckForNull
    V j(K k10);

    void k(C12534j2<K> c12534j2, V v10);

    String toString();
}
