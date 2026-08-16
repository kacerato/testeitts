package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;

public class YK extends StringConsumer.ForwardingConsumer {

    public final String f45972b;

    public final StringConsumer f45973c;

    public final StringBuilder f45974d;

    public YK(StringConsumer stringConsumer) {
        super(stringConsumer);
        this.f45974d = new StringBuilder();
        this.f45973c = stringConsumer;
        this.f45972b = "\n";
    }

    public StringConsumer a() {
        return this.f45973c;
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        if (this.f45974d.length() > 0) {
            this.f45974d.append(this.f45972b);
        }
        this.f45974d.append(str);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        super.accept(this.f45974d.toString(), diagnosticsHandler);
        super.finished(diagnosticsHandler);
    }
}
