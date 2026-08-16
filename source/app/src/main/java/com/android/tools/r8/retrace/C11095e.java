package com.android.tools.r8.retrace;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Path;

public final class C11095e implements ProguardMapProducer {

    public final Path f56319a;

    public C11095e(Path path) {
        this.f56319a = path;
    }

    @Override
    public final InputStream get() {
        return new BufferedInputStream(new FileInputStream(this.f56319a.toFile()));
    }

    @Override
    public final Path getPath() {
        return this.f56319a;
    }

    @Override
    public final boolean isFileBacked() {
        return true;
    }
}
