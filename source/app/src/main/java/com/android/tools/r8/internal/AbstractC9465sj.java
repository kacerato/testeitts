package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;

public abstract class AbstractC9465sj {
    public static com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22) {
        return a22;
    }

    public static com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    public static int a(InterfaceC5580Mq0 interfaceC5580Mq0, InterfaceC5580Mq0 interfaceC5580Mq02, InterfaceC5465Kq0 interfaceC5465Kq0) {
        InterfaceC5152Ff0 interfaceC5152Ff0 = new InterfaceC5152Ff0() {
            @Override
            public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                return AbstractC9465sj.a((com.android.tools.r8.graph.M2) abstractC4592n1);
            }
        };
        InterfaceC5152Ff0 interfaceC5152Ff02 = new InterfaceC5152Ff0() {
            @Override
            public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                return AbstractC9465sj.a((com.android.tools.r8.graph.A2) abstractC4592n1);
            }
        };
        if (interfaceC5580Mq0 == interfaceC5580Mq02) {
            return 0;
        }
        return interfaceC5465Kq0.a(interfaceC5580Mq0, interfaceC5580Mq02, new C9787uf(interfaceC5152Ff0, interfaceC5152Ff02));
    }
}
