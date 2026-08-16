package com.android.tools.r8.dex;

import com.android.tools.r8.internal.C5417Jv0;

public final class b0 extends e0 {
    public b0(f0 f0Var, String str) {
        super(f0Var, str);
    }

    @Override
    public final boolean a() {
        return false;
    }

    @Override
    public final char b() {
        return '.';
    }

    @Override
    public final boolean a(char c10) {
        throw new C5417Jv0();
    }

    @Override
    public final boolean b(int i10, int i11) {
        char charAt;
        char charAt2;
        if (i10 <= 0 || !((charAt2 = this.f35835a.charAt(i10 - 1)) == '.' || charAt2 == '-')) {
            return a(i11) || !((charAt = this.f35835a.charAt(i11)) == '.' || charAt == '-');
        }
        return false;
    }

    @Override
    public final boolean a(int i10, int i11) {
        throw new C5417Jv0();
    }
}
