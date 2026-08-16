package com.android.tools.r8.internal;

import java.util.Set;

public final class GO extends HO {

    public static final boolean f40475g = true;

    @Override
    public final HO b() {
        return this;
    }

    public final IO c() {
        Set a10 = a();
        LX lx = this.f40749c;
        LX lx2 = this.f40750d;
        LX lx3 = this.f40751e;
        if (EnumC6355a2.a(a10)) {
            lx.getClass();
            if (lx instanceof IX) {
                lx2.getClass();
                if (lx2 instanceof IX) {
                    lx3.getClass();
                    if (lx3 instanceof IX) {
                        return IO.f41072e;
                    }
                }
            }
        }
        IO io2 = new IO(a10, lx, lx2, lx3);
        if (f40475g || !io2.a()) {
            return io2;
        }
        throw new AssertionError();
    }
}
