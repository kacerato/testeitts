package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public final class C11518y3 implements InterfaceC11485w3 {

    public final Path f57993a;

    public C11518y3(Path path) {
        this.f57993a = path;
    }

    @Override
    public final Path a() {
        Path parent = this.f57993a.getParent();
        return parent == null ? Paths.get("", new String[0]) : parent;
    }

    @Override
    public final String get() {
        return new String(Files.readAllBytes(this.f57993a), StandardCharsets.UTF_8);
    }

    @Override
    public final String getName() {
        return this.f57993a.toString();
    }

    @Override
    public final Origin getOrigin() {
        return new PathOrigin(this.f57993a);
    }
}
