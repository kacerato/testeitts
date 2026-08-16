package com.android.tools.r8.internal;

import java.util.Arrays;

public final class G10 {

    public static final boolean f40373c = true;

    public F10 f40374a;

    public final F10[] f40375b;

    public G10(com.android.tools.r8.graph.A2 a22) {
        F10 f10 = F10.f40065b;
        this.f40374a = f10;
        F10[] f10Arr = new F10[a22.w0()];
        this.f40375b = f10Arr;
        Arrays.fill(f10Arr, f10);
    }

    public static G10 a(com.android.tools.r8.graph.A2 a22) {
        return new G10(a22);
    }

    public final boolean a() {
        F10 f10 = this.f40374a;
        F10 f102 = F10.f40067d;
        return f10 == f102 && X3.a(this.f40375b, f102);
    }
}
