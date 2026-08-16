package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import java.nio.file.Path;

public final class C5344Io {

    public final Path f41213a;

    public final C10277xb0 f41214b;

    public boolean f41215c;

    public final CX f41216d;

    public C5344Io(Path path, C10277xb0 c10277xb0) {
        GJ.c(path, "path");
        this.f41213a = path;
        this.f41214b = c10277xb0;
        this.f41216d = new CX();
    }

    public final boolean a() {
        if (this.f41215c) {
            CX cx = this.f41216d;
            if (cx.f39261a && GJ.a((Object) cx.f39262b, (Object) ConstantDescs.CLASS_INIT_NAME)) {
                return true;
            }
        }
        return this.f41215c && !this.f41216d.f39261a;
    }
}
