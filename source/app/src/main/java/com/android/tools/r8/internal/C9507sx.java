package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import java.nio.file.Path;

public final class C9507sx extends Origin {

    public final Path f52488f;

    public C9507sx(Path path) {
        super(Origin.root());
        this.f52488f = path;
    }

    @Override
    public final String part() {
        return "flag file argument: '@" + ((Object) this.f52488f) + "'";
    }
}
