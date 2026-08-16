package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

public final class B implements Comparator {

    public final AbstractC12103k f61889b;

    public final C12079h2 f61890c;

    public B(AbstractC12103k abstractC12103k, C12079h2 c12079h2) {
        this.f61889b = abstractC12103k;
        this.f61890c = c12079h2;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        InterfaceC12157q interfaceC12157q = (InterfaceC12157q) obj;
        InterfaceC12157q interfaceC12157q2 = (InterfaceC12157q) obj2;
        if (interfaceC12157q instanceof C12201v) {
            return !(interfaceC12157q2 instanceof C12201v) ? 1 : 0;
        }
        if (interfaceC12157q2 instanceof C12201v) {
            return -1;
        }
        AbstractC12103k abstractC12103k = this.f61889b;
        return abstractC12103k == null ? interfaceC12157q.P1().compareTo(interfaceC12157q2.P1()) : (int) I2.i(abstractC12103k.i(this.f61890c, Arrays.asList(interfaceC12157q, interfaceC12157q2)).Q1().doubleValue());
    }
}
