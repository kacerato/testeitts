package com.android.tools.r8.internal;

import java.io.UTFDataFormatException;

public final class C7532h50 implements InterfaceC7940jb0 {

    public static final boolean f48439d = true;

    public final byte[] f48440b;

    public final int f48441c;

    public C7532h50(String str) {
        boolean z10 = f48439d;
        if (!z10 && str.charAt(0) != 'L') {
            throw new AssertionError();
        }
        if (!z10 && str.charAt(str.length() - 1) != '/') {
            throw new AssertionError();
        }
        this.f48440b = com.android.tools.r8.graph.L2.a(str);
        this.f48441c = str.length();
    }

    @Override
    public final String a() {
        try {
            return AbstractC8274lb0.a(com.android.tools.r8.graph.L2.a(this.f48441c, this.f48440b) + "**");
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final boolean test(Object obj) {
        return ((com.android.tools.r8.graph.L2) obj).b(this.f48440b);
    }
}
