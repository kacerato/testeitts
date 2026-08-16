package com.android.tools.r8.internal;

public final class HP extends JP {

    public final GP f40753a;

    public HP(GP gp) {
        GJ.c(gp, "annotation");
        this.f40753a = gp;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HP) && GJ.a(this.f40753a, ((HP) obj).f40753a);
    }

    public final int hashCode() {
        return this.f40753a.hashCode();
    }

    @Override
    public final String toString() {
        return "AnnotationValue(" + ((Object) this.f40753a) + ')';
    }
}
