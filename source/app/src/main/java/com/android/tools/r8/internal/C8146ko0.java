package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C8146ko0 extends C10340xw0 {

    public static final boolean f49761r = true;

    public final int f49762p;

    public final InterfaceC5415Ju0 f49763q;

    public C8146ko0(InterfaceC5415Ju0 interfaceC5415Ju0, AbstractC8999pu0 abstractC8999pu0, int i10) {
        super(-1, abstractC8999pu0, null);
        this.f49762p = i10;
        this.f49763q = interfaceC5415Ju0;
        if (!f49761r && i10 < 0) {
            throw new AssertionError();
        }
    }

    public static C8146ko0 a(InterfaceC5415Ju0 interfaceC5415Ju0, int i10, C4798y c4798y) {
        return new C8146ko0(interfaceC5415Ju0, AbstractC8999pu0.a(interfaceC5415Ju0.a(), C8854p10.h(), (C4798y<?>) c4798y), i10);
    }

    @Override
    public final boolean T() {
        return false;
    }

    @Override
    public final String toString() {
        return "s" + this.f49762p;
    }

    @Override
    public final void a(boolean z10) {
        if (!f49761r && z10) {
            throw new AssertionError();
        }
    }
}
