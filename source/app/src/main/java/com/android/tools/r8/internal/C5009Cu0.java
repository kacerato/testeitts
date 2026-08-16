package com.android.tools.r8.internal;

import java.lang.reflect.Type;
import java.util.Objects;

public final class C5009Cu0 {

    public final Class f39378a;

    public final Type f39379b;

    public final int f39380c;

    public C5009Cu0(Type type) {
        Objects.requireNonNull(type);
        Type a10 = AbstractC6848d.a(type);
        this.f39379b = a10;
        this.f39378a = AbstractC6848d.b(a10);
        this.f39380c = a10.hashCode();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5009Cu0) && AbstractC6848d.a(this.f39379b, ((C5009Cu0) obj).f39379b);
    }

    public final int hashCode() {
        return this.f39380c;
    }

    public final String toString() {
        return AbstractC6848d.c(this.f39379b);
    }
}
