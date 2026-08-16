package com.android.tools.r8;

import com.android.tools.r8.internal.C5417Jv0;

public final class M implements ClassFileConsumer {
    @Override
    public final void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        throw new C5417Jv0("Unexpected attempt to write a non-global artifact");
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
