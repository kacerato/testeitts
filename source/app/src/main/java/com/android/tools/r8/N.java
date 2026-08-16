package com.android.tools.r8;

import com.android.tools.r8.internal.C5417Jv0;
import java.util.Set;

public final class N implements DexIndexedConsumer {
    @Override
    public final void accept(int i10, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        throw new C5417Jv0("Unexpected attempt to write a non-global artifact");
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
