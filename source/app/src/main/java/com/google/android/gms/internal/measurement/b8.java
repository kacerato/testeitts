package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

public final class b8 extends AbstractC12103k {

    public final Callable f62239d;

    public b8(String str, Callable callable) {
        super("internal.appMetadata");
        this.f62239d = callable;
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        try {
            return C12098j3.a(this.f62239d.call());
        } catch (Exception unused) {
            return InterfaceC12157q.f62394o4;
        }
    }
}
