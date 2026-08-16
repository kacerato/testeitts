package com.android.tools.r8;

import com.android.tools.r8.DexIndexedConsumer;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class Z extends DexIndexedConsumer.ForwardingConsumer {

    public final ConcurrentHashMap f35577c;

    public final String f35578d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z(DexIndexedConsumer dexIndexedConsumer, ConcurrentHashMap concurrentHashMap, String str) {
        super(dexIndexedConsumer);
        this.f35577c = concurrentHashMap;
        this.f35578d = str;
    }

    @Override
    public final void accept(int i10, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        this.f35577c.put(this.f35578d + "_classes" + i10 + ".dex", byteDataView.copyByteData());
        super.accept(i10, byteDataView, (Set<String>) set, diagnosticsHandler);
    }
}
