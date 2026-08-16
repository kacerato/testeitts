package com.android.tools.r8.internal;

import java.util.function.Supplier;

public final class C5286Ho implements Supplier {

    public final C8623ng0 f40874b;

    public final C5344Io f40875c;

    public C5286Ho(C8623ng0 c8623ng0, C5344Io c5344Io) {
        this.f40874b = c8623ng0;
        this.f40875c = c5344Io;
    }

    @Override
    public final String get() {
        return "Marking " + ((Object) this.f40874b) + " reachable: referenced from " + ((Object) this.f40875c.f41213a);
    }
}
