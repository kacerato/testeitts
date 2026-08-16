package com.google.android.gms.internal.auth;

import javax.annotation.CheckForNull;

public final class N0 extends M0 {

    public final Object f61642b;

    public N0(Object obj) {
        this.f61642b = obj;
    }

    @Override
    public final Object a() {
        return this.f61642b;
    }

    @Override
    public final boolean b() {
        return true;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof N0) {
            return this.f61642b.equals(((N0) obj).f61642b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f61642b.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f61642b.toString() + ")";
    }
}
