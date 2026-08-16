package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C6261Yl {

    public static final boolean f46083c = true;

    public final ArrayList f46084a = new ArrayList();

    public InterfaceC6147Wl f46085b = null;

    public final C6261Yl a(InterfaceC6318Zl interfaceC6318Zl) {
        if (!f46083c && interfaceC6318Zl == null) {
            throw new AssertionError();
        }
        this.f46084a.add(interfaceC6318Zl);
        return this;
    }

    public final C6261Yl a(InterfaceC6147Wl interfaceC6147Wl) {
        boolean z10 = f46083c;
        if (!z10 && this.f46085b != null) {
            throw new AssertionError();
        }
        if (!z10 && interfaceC6147Wl == null) {
            throw new AssertionError();
        }
        this.f46085b = interfaceC6147Wl;
        return this;
    }
}
