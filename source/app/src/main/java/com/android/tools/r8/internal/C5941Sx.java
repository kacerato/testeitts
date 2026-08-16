package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5941Sx extends AbstractC6114Vx {

    public final C9406sK f44342b;

    public C5941Sx(C9406sK c9406sK) {
        this.f44342b = c9406sK;
    }

    @Override
    public final Iterator iterator() {
        C9406sK c9406sK = this.f44342b;
        return new GK(JK.a(JK.a(c9406sK.f52337b.iterator(), c9406sK.f52338c), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return ((Iterable) obj).iterator();
            }
        }));
    }
}
