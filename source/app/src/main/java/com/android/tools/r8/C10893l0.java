package com.android.tools.r8;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.function.Function;

public final class C10893l0 {

    public final ArrayList f55533a = new ArrayList();

    public final HashMap f55534b = new HashMap();

    public final void a(String str, String str2) {
        C10741k0 c10741k0;
        C10903n0 a10 = C10903n0.a(str);
        C10903n0 a11 = C10903n0.a(str2);
        Path path = a11.f55554a;
        if (path != null) {
            c10741k0 = (C10741k0) this.f55534b.computeIfAbsent(path, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10893l0.a((Path) obj);
                }
            });
            c10741k0.f54990d = a11.f55554a;
            Path path2 = a10.f55554a;
            if (path2 != null) {
                c10741k0.f54987a.add(path2);
            }
        } else {
            c10741k0 = new C10741k0();
            this.f55533a.add(c10741k0);
        }
        if (Objects.isNull(a10.f55555b) == Objects.isNull(a11.f55555b)) {
            c10741k0.f54988b = a10.f55555b;
            c10741k0.f54989c = a11.f55555b;
            return;
        }
        throw new IllegalArgumentException("Both input and output for feature resources must be provided");
    }

    public static C10741k0 a(Path path) {
        return new C10741k0();
    }
}
