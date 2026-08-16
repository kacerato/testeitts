package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import java.nio.file.Path;
import java.util.Collection;
import java.util.Collections;

public final class C11629f implements ProgramResourceProvider {

    public final ProgramResource f58466a;

    public C11629f(Path path) {
        this.f58466a = ProgramResource.fromFile(ProgramResource.Kind.DEX, path);
    }

    @Override
    public final Collection getProgramResources() {
        return Collections.singletonList(this.f58466a);
    }
}
