package com.android.tools.r8;

import com.android.tools.r8.naming.C10912b;
import java.io.PrintStream;
import java.nio.file.Path;
import java.util.function.Consumer;

public final class C11691y implements B {

    public final Path f58673a;

    public final String f58674b;

    public C11691y(String str, Path path) {
        this.f58673a = path;
        this.f58674b = str;
    }

    @Override
    public final com.android.tools.r8.graph.A0 a(C10912b c10912b) {
        return com.android.tools.r8.graph.B0.a(c10912b, this.f58673a, this.f58674b);
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final void close() {
    }

    @Override
    public final Consumer a() {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((PrintStream) obj).close();
            }
        };
    }
}
