package com.android.tools.r8;

import com.android.tools.r8.internal.C10656zq0;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public final class C10903n0 {

    public static final boolean f55553c = true;

    public final Path f55554a;

    public final Path f55555b;

    public C10903n0(Path path, Path path2) {
        this.f55554a = path;
        this.f55555b = path2;
    }

    public static C10903n0 a(String str) {
        List<String> a10 = C10656zq0.a(str, File.pathSeparatorChar);
        if (a10.size() == 0 || a10.size() > 2) {
            throw new IllegalArgumentException("Feature input/output takes one or two paths.");
        }
        String str2 = a10.get(0);
        Path path = null;
        Path path2 = !str2.isEmpty() ? Paths.get(str2, new String[0]) : null;
        if (a10.size() == 2) {
            if (!f55553c && a10.get(1).length() <= 0) {
                throw new AssertionError();
            }
            path = Paths.get(a10.get(1), new String[0]);
        }
        return new C10903n0(path2, path);
    }
}
