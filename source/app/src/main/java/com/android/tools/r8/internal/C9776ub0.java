package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class C9776ub0 implements ProgramResourceProvider {

    public final ProgramResource f52887a;

    public C9776ub0(ProgramResource programResource) {
        this.f52887a = programResource;
    }

    @Override
    public final Collection getProgramResources() {
        List singletonList = Collections.singletonList(this.f52887a);
        GJ.b(singletonList, "singletonList(...)");
        return singletonList;
    }
}
