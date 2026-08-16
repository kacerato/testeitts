package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.InterfaceC5429Kb;

public class H0 implements Q, InterfaceC5429Kb {

    public static final boolean f55638c = true;

    public final StringConsumer f55639a;

    public DiagnosticsHandler f55640b;

    public H0(StringConsumer stringConsumer) {
        if (!f55638c && stringConsumer == null) {
            throw new AssertionError();
        }
        this.f55639a = stringConsumer;
    }

    @Override
    public final void a(DiagnosticsHandler diagnosticsHandler, C10912b c10912b) {
        this.f55640b = diagnosticsHandler;
        a(C10656zq0.a("\n", c10912b.f55830f));
        c10912b.a(this);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f55639a.finished(diagnosticsHandler);
    }

    @Override
    public final InterfaceC5429Kb a(String str) {
        if (!f55638c && this.f55640b == null) {
            throw new AssertionError();
        }
        this.f55639a.accept(str, this.f55640b);
        return this;
    }

    public StringConsumer a() {
        return this.f55639a;
    }
}
