package com.android.tools.r8.internal;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

public final class C6515b implements ParameterizedType, Serializable {

    public final Type f46678b;

    public final Type f46679c;

    public final Type[] f46680d;

    public C6515b(Type type, Type type2, Type... typeArr) {
        Objects.requireNonNull(type2);
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z10 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z10) {
                throw new IllegalArgumentException();
            }
        }
        this.f46678b = type == null ? null : AbstractC6848d.a(type);
        this.f46679c = AbstractC6848d.a(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f46680d = typeArr2;
        int length = typeArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            Objects.requireNonNull(this.f46680d[i10]);
            Type type3 = this.f46680d[i10];
            if ((type3 instanceof Class) && ((Class) type3).isPrimitive()) {
                throw new IllegalArgumentException();
            }
            Type[] typeArr3 = this.f46680d;
            typeArr3[i10] = AbstractC6848d.a(typeArr3[i10]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && AbstractC6848d.a(this, (ParameterizedType) obj);
    }

    @Override
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f46680d.clone();
    }

    @Override
    public final Type getOwnerType() {
        return this.f46678b;
    }

    @Override
    public final Type getRawType() {
        return this.f46679c;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.f46680d) ^ this.f46679c.hashCode();
        Type type = this.f46678b;
        return hashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        int length = this.f46680d.length;
        if (length == 0) {
            return AbstractC6848d.c(this.f46679c);
        }
        StringBuilder sb2 = new StringBuilder((length + 1) * 30);
        sb2.append(AbstractC6848d.c(this.f46679c));
        sb2.append("<");
        sb2.append(AbstractC6848d.c(this.f46680d[0]));
        for (int i10 = 1; i10 < length; i10++) {
            sb2.append(", ");
            sb2.append(AbstractC6848d.c(this.f46680d[i10]));
        }
        sb2.append(">");
        return sb2.toString();
    }
}
