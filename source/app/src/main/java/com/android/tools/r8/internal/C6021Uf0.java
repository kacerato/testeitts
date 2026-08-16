package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import java.util.function.Supplier;

public final class C6021Uf0 implements InterfaceC5976Tl0 {

    public final StringConsumer f44820a;

    public final DiagnosticsHandler f44821b;

    public C6021Uf0(StringConsumer stringConsumer, DiagnosticsHandler diagnosticsHandler) {
        this.f44820a = stringConsumer;
        this.f44821b = diagnosticsHandler;
    }

    @Override
    public final void a(Supplier supplier) {
        this.f44820a.accept(((String) supplier.get()) + "\n", this.f44821b);
    }

    @Override
    public final void close() {
        this.f44820a.finished(this.f44821b);
    }
}
