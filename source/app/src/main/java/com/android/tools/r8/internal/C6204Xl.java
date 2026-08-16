package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Collection;
import java.util.function.Consumer;

public final class C6204Xl extends C6473am {

    public final C6261Yl f45814b;

    public C6204Xl(C6261Yl c6261Yl) {
        this.f45814b = c6261Yl;
    }

    @Override
    public final boolean a() {
        return this.f45814b.f46085b != null;
    }

    @Override
    public final void b() {
        this.f45814b.f46084a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((InterfaceC6318Zl) obj).a();
            }
        });
    }

    @Override
    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, I00 i00, C4724u1 c4724u1) {
        InterfaceC6147Wl interfaceC6147Wl = this.f45814b.f46085b;
        if (interfaceC6147Wl == null) {
            return null;
        }
        return interfaceC6147Wl.a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, i00, c4724u1);
    }
}
