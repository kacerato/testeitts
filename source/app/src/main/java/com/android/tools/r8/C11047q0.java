package com.android.tools.r8;

import java.util.Collection;
import java.util.Collections;

public final class C11047q0 implements ProgramResourceProvider {

    public final ProgramResourceProvider f56174a;

    public C11047q0(ProgramResourceProvider programResourceProvider) {
        this.f56174a = programResourceProvider;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f56174a.finished(diagnosticsHandler);
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return this.f56174a.getDataResourceProvider();
    }

    @Override
    public final Collection getProgramResources() {
        return Collections.EMPTY_LIST;
    }
}
