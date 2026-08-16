package com.android.tools.r8.internal;

import java.io.UTFDataFormatException;

public final class C5087Ed implements InterfaceC7940jb0 {

    public static final boolean f39954d = true;

    public final byte[] f39955b;

    public final int f39956c;

    public C5087Ed(String str) {
        boolean z10 = f39954d;
        if (!z10 && str.charAt(0) != 'L') {
            throw new AssertionError();
        }
        if (!z10 && str.charAt(str.length() - 1) == '/') {
            throw new AssertionError();
        }
        this.f39955b = com.android.tools.r8.graph.L2.a(str);
        this.f39956c = str.length();
    }

    @Override
    public final String a() {
        try {
            return AbstractC8274lb0.a(com.android.tools.r8.graph.L2.a(this.f39956c, this.f39955b) + "*");
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final boolean test(Object obj) {
        com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) obj;
        return l22.b(this.f39955b) && l22.toString().lastIndexOf(47) < this.f39956c - 1;
    }
}
