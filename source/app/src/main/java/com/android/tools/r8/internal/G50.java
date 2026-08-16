package com.android.tools.r8.internal;

import w2.C15883c;

public final class G50 extends F50 {

    public final String f40385c;

    public final String f40386d;

    public G50(C50 c50, String str, String str2) {
        super(c50);
        this.f40385c = str;
        this.f40386d = str2;
    }

    @Override
    public final String a() {
        String str = this.f40386d;
        int length = str.length();
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(0, length);
        sb2.append(AbstractC9414sO.c(C9663tt0.a(substring, C9663tt0.e(substring), substring.length()).b()));
        sb2.append(C15883c.f126249O);
        sb2.append(this.f40385c);
        sb2.append('(');
        boolean z10 = true;
        for (C9663tt0 c9663tt0 : C9663tt0.b(str.substring(0, length))) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(AbstractC9414sO.c(c9663tt0.b()));
        }
        sb2.append(')');
        return sb2.toString();
    }

    @Override
    public final String b() {
        return "method";
    }
}
