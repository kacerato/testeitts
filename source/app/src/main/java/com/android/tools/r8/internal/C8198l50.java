package com.android.tools.r8.internal;

import java.io.UTFDataFormatException;

public final class C8198l50 implements InterfaceC7940jb0 {

    public static final boolean f49884d = true;

    public final byte[] f49885b;

    public final int f49886c;

    public C8198l50(String str) {
        boolean z10 = f49884d;
        if (!z10 && str.charAt(0) != 'L') {
            throw new AssertionError();
        }
        if (!z10 && str.charAt(str.length() - 1) != '/') {
            throw new AssertionError();
        }
        this.f49885b = com.android.tools.r8.graph.L2.a(str);
        this.f49886c = str.length();
    }

    @Override
    public final String a() {
        try {
            return AbstractC8274lb0.a(com.android.tools.r8.graph.L2.a(this.f49886c, this.f49885b) + "*");
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final boolean test(Object obj) {
        com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) obj;
        return l22.b(this.f49885b) && l22.toString().lastIndexOf(47) == this.f49886c - 1;
    }
}
