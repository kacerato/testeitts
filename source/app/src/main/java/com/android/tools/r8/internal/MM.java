package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Function;

public abstract class MM {

    public static final boolean f42279b = true;

    public final PM f42280a;

    public MM(PM pm2) {
        this.f42280a = pm2;
    }

    public UM a() {
        return null;
    }

    public JO b() {
        return null;
    }

    public final PM c() {
        return this.f42280a;
    }

    public final boolean d() {
        return a() != null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MM)) {
            return false;
        }
        MM mm2 = (MM) obj;
        if (d() == mm2.d()) {
            PM pm2 = this.f42280a;
            PM pm3 = mm2.f42280a;
            pm2.getClass();
            if (pm2 == pm3) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(d()), this.f42280a);
    }

    public abstract String toString();

    public final Object a(Function function, Function function2) {
        if (d()) {
            return function.apply(a());
        }
        if (!f42279b && b() == null) {
            throw new AssertionError();
        }
        return function2.apply(b());
    }
}
