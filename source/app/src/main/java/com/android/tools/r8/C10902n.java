package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

public final class C10902n implements DexIndexedConsumer, ProgramResourceProvider {

    public final ArrayList f55552a = new ArrayList();

    @Override
    public final synchronized void accept(int i10, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        this.f55552a.add(ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.DEX, byteDataView.copyByteData(), set));
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }

    @Override
    public final Collection getProgramResources() {
        return this.f55552a;
    }
}
