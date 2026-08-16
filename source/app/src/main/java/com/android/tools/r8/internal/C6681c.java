package com.android.tools.r8.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

public final class C6681c implements WildcardType, Serializable {

    public final Type f46930b;

    public final Type f46931c;

    public C6681c(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr.length != 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            Type type = typeArr[0];
            if ((type instanceof Class) && ((Class) type).isPrimitive()) {
                throw new IllegalArgumentException();
            }
            this.f46931c = null;
            this.f46930b = AbstractC6848d.a(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        Type type2 = typeArr2[0];
        if ((type2 instanceof Class) && ((Class) type2).isPrimitive()) {
            throw new IllegalArgumentException();
        }
        if (typeArr[0] != Object.class) {
            throw new IllegalArgumentException();
        }
        this.f46931c = AbstractC6848d.a(typeArr2[0]);
        this.f46930b = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && AbstractC6848d.a(this, (WildcardType) obj);
    }

    @Override
    public final Type[] getLowerBounds() {
        Type type = this.f46931c;
        return type != null ? new Type[]{type} : AbstractC6848d.f47245a;
    }

    @Override
    public final Type[] getUpperBounds() {
        return new Type[]{this.f46930b};
    }

    public final int hashCode() {
        Type type = this.f46931c;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f46930b.hashCode() + 31);
    }

    public final String toString() {
        if (this.f46931c != null) {
            return "? super " + AbstractC6848d.c(this.f46931c);
        }
        if (this.f46930b == Object.class) {
            return "?";
        }
        return "? extends " + AbstractC6848d.c(this.f46930b);
    }
}
