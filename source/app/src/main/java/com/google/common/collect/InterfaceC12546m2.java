package com.google.common.collect;

import java.lang.Comparable;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@I2.f("Use ImmutableRangeSet or TreeRangeSet")
@X
@InterfaceC15800a
public interface InterfaceC12546m2<C extends Comparable> {
    void a(C12534j2<C> c12534j2);

    void b(Iterable<C12534j2<C>> iterable);

    C12534j2<C> c();

    void clear();

    boolean contains(C c10);

    InterfaceC12546m2<C> d();

    boolean e(C12534j2<C> c12534j2);

    boolean equals(@CheckForNull Object obj);

    void f(Iterable<C12534j2<C>> iterable);

    boolean g(InterfaceC12546m2<C> interfaceC12546m2);

    @CheckForNull
    C12534j2<C> h(C c10);

    int hashCode();

    boolean i(C12534j2<C> c12534j2);

    boolean isEmpty();

    boolean j(Iterable<C12534j2<C>> iterable);

    InterfaceC12546m2<C> k(C12534j2<C> c12534j2);

    Set<C12534j2<C>> l();

    Set<C12534j2<C>> m();

    void n(InterfaceC12546m2<C> interfaceC12546m2);

    void o(C12534j2<C> c12534j2);

    void p(InterfaceC12546m2<C> interfaceC12546m2);

    String toString();
}
