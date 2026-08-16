package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public final class U implements ClassFileConsumer, ProgramResourceProvider {

    public final ArrayList f35536a = new ArrayList();

    @Override
    public final synchronized void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        this.f35536a.add(ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.CF, byteDataView.copyByteData(), Collections.singleton(str)));
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }

    @Override
    public final Collection getProgramResources() {
        return this.f35536a;
    }
}
