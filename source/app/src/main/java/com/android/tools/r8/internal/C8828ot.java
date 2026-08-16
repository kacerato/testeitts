package com.android.tools.r8.internal;

import java.nio.file.Path;

public final class C8828ot extends AbstractC8995pt {

    public final Path f51375a;

    public C8828ot(Path path) {
        this.f51375a = path;
    }

    @Override
    public final Path b() {
        return this.f51375a.resolve("dump" + System.nanoTime() + ".zip");
    }

    @Override
    public final boolean c() {
        return false;
    }
}
