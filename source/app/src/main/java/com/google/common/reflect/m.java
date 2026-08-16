package com.google.common.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.CheckForNull;
import w2.H;

@d
public abstract class m<T> extends l<T> {

    public final TypeVariable<?> f67125b;

    public m() {
        Type a10 = a();
        H.u(a10 instanceof TypeVariable, "%s should be a type variable.", a10);
        this.f67125b = (TypeVariable) a10;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof m) {
            return this.f67125b.equals(((m) obj).f67125b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67125b.hashCode();
    }

    public String toString() {
        return this.f67125b.toString();
    }
}
