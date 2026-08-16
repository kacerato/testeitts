package com.android.tools.r8.internal;

public final class C10282xd implements InterfaceC7940jb0 {

    public static final boolean f53785c = true;

    public final String f53786b;

    public C10282xd(String str) {
        boolean z10 = f53785c;
        if (!z10 && str.charAt(0) != 'L') {
            throw new AssertionError();
        }
        if (!z10 && str.charAt(str.length() - 1) != ';') {
            throw new AssertionError();
        }
        this.f53786b = str;
    }

    @Override
    public final String a() {
        return C4932Bl.b(this.f53786b);
    }

    @Override
    public final boolean test(Object obj) {
        return ((com.android.tools.r8.graph.L2) obj).toString().equals(this.f53786b);
    }
}
