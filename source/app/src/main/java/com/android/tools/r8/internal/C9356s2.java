package com.android.tools.r8.internal;

public final class C9356s2 extends Exception {

    public final transient H f52254b;

    public C9356s2(H h10, String str) {
        super(str);
        this.f52254b = h10;
    }

    public C9356s2(H h10, String str, Exception exc) {
        super(str, exc);
        this.f52254b = h10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C9356s2(H h10, String str, Object obj, InterfaceC10173ww0 interfaceC10173ww0) {
        super(r3 + obj + ", but found " + ((Object) interfaceC10173ww0));
        String concat;
        if (str == null) {
            concat = "Expected ";
        } else {
            concat = str.concat(": expected ");
        }
        this.f52254b = h10;
    }
}
