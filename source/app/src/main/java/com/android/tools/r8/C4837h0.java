package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import java.util.Collection;

public final class C4837h0 implements ProgramResourceProvider {

    public final ProgramResourceProvider f38482a;

    public C4837h0(ProgramResourceProvider programResourceProvider) {
        this.f38482a = programResourceProvider;
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return this.f38482a.getDataResourceProvider();
    }

    @Override
    public final Collection getProgramResources() {
        Collection<ProgramResource> programResources = this.f38482a.getProgramResources();
        for (ProgramResource programResource : programResources) {
            if (programResource.getKind() == ProgramResource.Kind.DEX) {
                throw new ResourceException(programResource.getOrigin(), "R8 does not support compiling DEX inputs");
            }
        }
        return programResources;
    }
}
