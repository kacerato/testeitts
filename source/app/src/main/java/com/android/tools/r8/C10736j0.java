package com.android.tools.r8;

import com.android.tools.r8.StringConsumer;

public final class C10736j0 extends StringConsumer.ForwardingConsumer {
    public C10736j0(StringConsumer stringConsumer) {
        super(stringConsumer);
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        super.accept(str, diagnosticsHandler);
        System.out.print(str);
    }
}
