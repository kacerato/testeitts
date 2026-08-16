package com.android.tools.r8;

import com.android.tools.r8.internal.C5417Jv0;
import java.util.Collection;

public final class C11051r0 implements ProgramResourceProvider {

    public final ProgramResourceProvider f56181a;

    public C11051r0(ProgramResourceProvider programResourceProvider) {
        this.f56181a = programResourceProvider;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f56181a.finished(diagnosticsHandler);
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return this.f56181a.getDataResourceProvider();
    }

    @Override
    public final Collection getProgramResources() {
        throw new C5417Jv0();
    }
}
