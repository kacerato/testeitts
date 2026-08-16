package com.android.tools.r8.graph;

import java.util.Iterator;

public final class G2 implements Iterator {

    public H2 f36335b;

    public final Iterator f36336c;

    public final InterfaceC4403d1 f36337d;

    public G2(Iterable iterable, InterfaceC4403d1 interfaceC4403d1) {
        H2 h22;
        this.f36337d = interfaceC4403d1;
        this.f36336c = iterable.iterator();
        while (true) {
            if (!this.f36336c.hasNext()) {
                h22 = null;
                break;
            }
            E0 a10 = this.f36337d.a((M2) this.f36336c.next());
            if (a10 != null && a10.e0()) {
                h22 = a10.d0();
                break;
            }
        }
        this.f36335b = h22;
    }

    @Override
    public final boolean hasNext() {
        return this.f36335b != null;
    }

    @Override
    public final Object next() {
        H2 h22;
        H2 h23 = this.f36335b;
        while (true) {
            if (!this.f36336c.hasNext()) {
                h22 = null;
                break;
            }
            E0 a10 = this.f36337d.a((M2) this.f36336c.next());
            if (a10 != null && a10.e0()) {
                h22 = a10.d0();
                break;
            }
        }
        this.f36335b = h22;
        return h23;
    }
}
