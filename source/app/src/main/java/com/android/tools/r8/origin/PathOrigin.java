package com.android.tools.r8.origin;

import java.nio.file.Path;

public class PathOrigin extends Origin {

    static final boolean f56148g = true;

    private final Path f56149f;

    public PathOrigin(Path path) {
        super(Origin.root());
        if (!f56148g && path == null) {
            throw new AssertionError();
        }
        this.f56149f = path;
    }

    public Path getPath() {
        return this.f56149f;
    }

    @Override
    public String part() {
        return this.f56149f.toString();
    }
}
