package com.android.tools.r8.internal;

import java.util.Objects;

public final class C6413aO extends R2 {

    public static final boolean f46506g = true;

    public final H50 f46507c;

    public final InterfaceC8413mO f46508d;

    public final C6578bN f46509e;

    public final C8914pO f46510f;

    public C6413aO(H50 h50, InterfaceC8413mO interfaceC8413mO, C8914pO c8914pO) {
        super(h50);
        this.f46509e = new C6578bN();
        this.f46507c = h50;
        this.f46508d = interfaceC8413mO;
        this.f46510f = c8914pO;
    }

    @Override
    public final Q2 a(String str, String str2) {
        if (!f46506g && str != null) {
            throw new AssertionError();
        }
        if (!"Landroidx/annotation/keep/KeepTarget;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepTarget;".equals(str2)) {
            super.a(str, str2);
            throw null;
        }
        H50 h50 = this.f46507c;
        h50.getClass();
        B50 b50 = new B50(h50, str2);
        final C6578bN c6578bN = this.f46509e;
        Objects.requireNonNull(c6578bN);
        return new C7580hO(b50, new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj) {
                C6578bN.this.a((C10251xP) obj);
            }
        }, this.f46510f);
    }

    @Override
    public final void a() {
        this.f46508d.accept(this.f46509e.a());
    }
}
