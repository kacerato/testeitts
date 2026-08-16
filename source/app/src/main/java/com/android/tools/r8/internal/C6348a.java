package com.android.tools.r8.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Objects;

public final class C6348a implements GenericArrayType, Serializable {

    public final Type f46392b;

    public C6348a(Type type) {
        Objects.requireNonNull(type);
        this.f46392b = AbstractC6848d.a(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && AbstractC6848d.a(this, (GenericArrayType) obj);
    }

    @Override
    public final Type getGenericComponentType() {
        return this.f46392b;
    }

    public final int hashCode() {
        return this.f46392b.hashCode();
    }

    public final String toString() {
        return AbstractC6848d.c(this.f46392b) + okhttp3.v.f99450n;
    }
}
