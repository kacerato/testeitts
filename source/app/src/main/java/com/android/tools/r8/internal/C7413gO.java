package com.android.tools.r8.internal;

import java.util.Objects;

public final class C7413gO extends R2 {

    public static final boolean f48252g = true;

    public final H50 f48253c;

    public final InterfaceC8413mO f48254d;

    public final C7582hP f48255e;

    public final C8914pO f48256f;

    public C7413gO(H50 h50, InterfaceC8413mO interfaceC8413mO, C8914pO c8914pO) {
        super(h50);
        this.f48255e = new C7582hP();
        this.f48253c = h50;
        this.f48254d = interfaceC8413mO;
        this.f48256f = c8914pO;
    }

    @Override
    public final Q2 a(String str, String str2) {
        if (!f48252g && str != null) {
            throw new AssertionError();
        }
        if (!"Landroidx/annotation/keep/KeepCondition;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepCondition;".equals(str2)) {
            super.a(str, str2);
            throw null;
        }
        H50 h50 = this.f48253c;
        h50.getClass();
        B50 b50 = new B50(h50, str2);
        final C7582hP c7582hP = this.f48255e;
        Objects.requireNonNull(c7582hP);
        return new ZN(b50, new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj) {
                C7582hP.this.a((ZM) obj);
            }
        }, this.f48256f);
    }

    @Override
    public final void a() {
        Object c7749iP;
        InterfaceC8413mO interfaceC8413mO = this.f48254d;
        C7582hP c7582hP = this.f48255e;
        if (c7582hP.f48548a.isEmpty()) {
            c7749iP = C7415gP.f48257a;
        } else {
            c7749iP = new C7749iP(c7582hP.f48548a);
        }
        interfaceC8413mO.accept(c7749iP);
    }
}
