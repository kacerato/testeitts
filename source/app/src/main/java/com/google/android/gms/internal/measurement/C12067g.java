package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

public final class C12067g implements InterfaceC12157q {

    public final boolean f62282b;

    public C12067g(Boolean bool) {
        this.f62282b = bool == null ? false : bool.booleanValue();
    }

    @Override
    public final String P1() {
        return Boolean.toString(this.f62282b);
    }

    @Override
    public final Double Q1() {
        return Double.valueOf(true != this.f62282b ? 0.0d : 1.0d);
    }

    @Override
    public final Boolean R1() {
        return Boolean.valueOf(this.f62282b);
    }

    @Override
    public final Iterator a() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C12067g) && this.f62282b == ((C12067g) obj).f62282b;
    }

    @Override
    public final InterfaceC12157q g() {
        return new C12067g(Boolean.valueOf(this.f62282b));
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        if ("toString".equals(str)) {
            return new C12192u(Boolean.toString(this.f62282b));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.f62282b), str));
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f62282b).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f62282b);
    }
}
