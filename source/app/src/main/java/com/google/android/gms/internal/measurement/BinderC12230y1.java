package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;

public final class BinderC12230y1 extends E0 {

    public final InterfaceC12283e4 f62485e;

    public BinderC12230y1(InterfaceC12283e4 interfaceC12283e4) {
        this.f62485e = interfaceC12283e4;
    }

    @Override
    public final int a() {
        return System.identityHashCode(this.f62485e);
    }

    @Override
    public final void v(String str, String str2, Bundle bundle, long j10) {
        this.f62485e.a(str, str2, bundle, j10);
    }
}
