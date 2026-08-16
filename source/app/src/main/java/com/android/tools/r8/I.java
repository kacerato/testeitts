package com.android.tools.r8;

import com.android.tools.r8.StringConsumer;
import java.util.List;

public final class I extends StringConsumer.ForwardingConsumer {

    public final List f35348b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(StringConsumer stringConsumer, List list) {
        super(stringConsumer);
        this.f35348b = list;
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        this.f35348b.add(str);
        super.accept(str, diagnosticsHandler);
    }
}
