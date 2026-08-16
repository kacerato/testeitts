package com.android.tools.r8.internal;

import com.android.tools.r8.internal.InterfaceC5580Mq0;

public interface InterfaceC5580Mq0<T extends InterfaceC5580Mq0<T>> extends C40<T> {
    T E();

    @Override
    default int compareTo(T t10) {
        return AbstractC9465sj.a(E(), t10, new VM0());
    }

    InterfaceC5638Nq0<T> m();

    default int a(T t10, InterfaceC5152Ff0<com.android.tools.r8.graph.M2> interfaceC5152Ff0, InterfaceC5152Ff0<com.android.tools.r8.graph.A2> interfaceC5152Ff02) {
        T E10 = E();
        VM0 vm0 = new VM0();
        if (E10 == t10) {
            return 0;
        }
        return vm0.a(E10, t10, new C9787uf(interfaceC5152Ff0, interfaceC5152Ff02));
    }

    default int a(T t10, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(E(), t10, E().m());
    }

    default void a(InterfaceC8546nA interfaceC8546nA) {
        AbstractC4928Bj.a(E(), interfaceC8546nA, new WM0());
    }

    default void a(C8379mA c8379mA, InterfaceC5152Ff0 interfaceC5152Ff0) {
        new WM0().a(E(), new C9547tA(c8379mA, interfaceC5152Ff0));
    }

    default void a(AbstractC9213rA abstractC9213rA) {
        T E10 = E();
        InterfaceC5638Nq0<T> m10 = E().m();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        m10.a(new C9380sA(E10, c9547tA));
    }
}
