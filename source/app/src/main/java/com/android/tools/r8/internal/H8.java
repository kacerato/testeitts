package com.android.tools.r8.internal;

import java.io.Serializable;

public abstract class H8 implements InterfaceC9911vM, Serializable {

    public transient InterfaceC9911vM f40687b;

    public final Class f40688c;

    public final String f40689d;

    public final String f40690e;

    public final boolean f40691f;

    public H8(Class cls, String str, String str2, boolean z10) {
        this.f40688c = cls;
        this.f40689d = str;
        this.f40690e = str2;
        this.f40691f = z10;
    }

    public abstract InterfaceC9911vM a();

    public final InterfaceC5026Dc b() {
        Class cls = this.f40688c;
        if (!this.f40691f) {
            return AbstractC9618te0.a(cls);
        }
        AbstractC9618te0.f52649a.getClass();
        return new C8365m50(cls);
    }
}
