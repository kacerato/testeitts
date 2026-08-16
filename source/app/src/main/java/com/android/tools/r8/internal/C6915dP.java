package com.android.tools.r8.internal;

import java.util.Objects;

public final class C6915dP {

    public static final C6915dP f47396b = new C6915dP(null);

    public static final C6915dP f47397c = a(C9917vP.f53090d);

    public static final boolean f47398d = true;

    public final C9917vP f47399a;

    public C6915dP(C9917vP c9917vP) {
        this.f47399a = c9917vP;
    }

    public static C6915dP a(C9917vP c9917vP) {
        return c9917vP.b() ? f47397c : new C6915dP(c9917vP);
    }

    public final boolean b() {
        return c() && this.f47399a.c();
    }

    public final boolean c() {
        return this.f47399a != null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6915dP) {
            return Objects.equals(this.f47399a, ((C6915dP) obj).f47399a);
        }
        return false;
    }

    public final C9917vP a() {
        if (f47398d || c()) {
            return this.f47399a;
        }
        throw new AssertionError();
    }
}
