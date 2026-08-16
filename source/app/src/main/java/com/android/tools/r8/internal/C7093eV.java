package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C10957k;

public class C7093eV extends AbstractC6927dV {

    public final C10912b f47702a;

    public C7093eV(C10912b c10912b) {
        this.f47702a = c10912b;
    }

    @Override
    public final C10957k a(String str) {
        return this.f47702a.b(str);
    }

    @Override
    public final String b(String str) {
        return (String) this.f47702a.f55829e.get(str);
    }

    public static AbstractC6927dV a(C10912b c10912b) {
        return new C7093eV(c10912b);
    }
}
