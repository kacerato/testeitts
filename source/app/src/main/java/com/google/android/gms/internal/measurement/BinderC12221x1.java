package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;

public final class BinderC12221x1 extends E0 {

    public final InterfaceC12275d4 f62479e;

    public BinderC12221x1(InterfaceC12275d4 interfaceC12275d4) {
        this.f62479e = interfaceC12275d4;
    }

    @Override
    public final int a() {
        return System.identityHashCode(this.f62479e);
    }

    @Override
    public final void v(String str, String str2, Bundle bundle, long j10) {
        this.f62479e.a(str, str2, bundle, j10);
    }
}
