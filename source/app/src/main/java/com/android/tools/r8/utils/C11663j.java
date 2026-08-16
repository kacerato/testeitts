package com.android.tools.r8.utils;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;

public final class C11663j implements StringConsumer {

    public StringBuilder f58610a = null;

    public final r f58611b;

    public C11663j(r rVar) {
        this.f58611b = rVar;
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        if (this.f58610a == null) {
            this.f58610a = new StringBuilder();
        }
        this.f58610a.append(str);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        StringBuilder sb2 = this.f58610a;
        if (sb2 != null) {
            this.f58611b.f58633a.a(sb2.toString());
        }
    }
}
