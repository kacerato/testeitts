package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Consumer;

public final class C8644nn0 extends StringConsumer.ForwardingConsumer {

    public final ArrayList f51073b;

    public C8644nn0(com.android.tools.r8.I i10) {
        super(i10);
        this.f51073b = new ArrayList();
    }

    public final void a(DiagnosticsHandler diagnosticsHandler, String str) {
        super.accept(str, diagnosticsHandler);
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        this.f51073b.add(str);
    }

    @Override
    public final void finished(final DiagnosticsHandler diagnosticsHandler) {
        Collections.sort(this.f51073b);
        this.f51073b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8644nn0.this.a(diagnosticsHandler, (String) obj);
            }
        });
        super.finished(diagnosticsHandler);
    }
}
