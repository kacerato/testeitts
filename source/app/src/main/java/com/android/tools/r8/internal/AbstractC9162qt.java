package com.android.tools.r8.internal;

import java.nio.file.Path;
import java.nio.file.Paths;

public abstract class AbstractC9162qt {
    public static AbstractC9162qt a() {
        String property = System.getProperty("com.android.tools.r8.dumpinputtofile");
        if (property != null) {
            return b(Paths.get(property, new String[0]));
        }
        String property2 = System.getProperty("com.android.tools.r8.dumpinputtodirectory");
        if (property2 != null) {
            return a(Paths.get(property2, new String[0]));
        }
        return new C8494mt();
    }

    public static AbstractC9162qt b(Path path) {
        return new C8661nt(path);
    }

    public abstract boolean a(C9328rt c9328rt);

    public abstract Path b();

    public abstract boolean c();

    public abstract boolean d();

    public static AbstractC9162qt a(Path path) {
        return new C8828ot(path);
    }
}
