package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import java.util.OptionalInt;

public final class C5914Sj0 {

    public final C10957k.b f44290a;

    public final OptionalInt f44291b;

    public C5914Sj0(C10957k.b bVar, OptionalInt optionalInt) {
        this.f44290a = bVar;
        this.f44291b = optionalInt;
    }

    public static C5914Sj0 a(C10957k.b bVar) {
        com.android.tools.r8.naming.M0 m02 = bVar.f55971d;
        return new C5914Sj0(bVar, (m02 == null || m02.a() != 1) ? OptionalInt.empty() : OptionalInt.of(bVar.f55971d.f55702a));
    }
}
