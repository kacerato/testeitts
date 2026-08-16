package com.android.tools.r8;

import java.util.Collection;

public final class C4335f0 implements ProgramResourceProvider {

    public final ProgramResourceProvider f36116a;

    public C4335f0(ProgramResourceProvider programResourceProvider) {
        this.f36116a = programResourceProvider;
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return null;
    }

    @Override
    public final Collection getProgramResources() {
        return this.f36116a.getProgramResources();
    }
}
