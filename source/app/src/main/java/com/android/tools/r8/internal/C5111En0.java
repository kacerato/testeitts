package com.android.tools.r8.internal;

import java.util.regex.Pattern;

public final class C5111En0 {

    public final AbstractC5892Sb f40019a;

    public final boolean f40020b;

    public final InterfaceC5053Dn0 f40021c;

    public final int f40022d;

    public C5111En0(InterfaceC5053Dn0 interfaceC5053Dn0, boolean z10, AbstractC5892Sb abstractC5892Sb, int i10) {
        this.f40021c = interfaceC5053Dn0;
        this.f40020b = z10;
        this.f40019a = abstractC5892Sb;
        this.f40022d = i10;
    }

    public static C5111En0 a(String str) {
        AbstractC8535n60.f50508a.getClass();
        Pattern compile = Pattern.compile(str);
        XK xk2 = new XK(compile);
        compile.matcher("").getClass();
        U60.a(!r2.matches(), "The pattern may not match the empty string: %s", xk2);
        return new C5111En0(new C4937Bn0(xk2));
    }

    public C5111En0(InterfaceC5053Dn0 interfaceC5053Dn0) {
        this(interfaceC5053Dn0, false, C6008Ub.f44798c, Integer.MAX_VALUE);
    }
}
