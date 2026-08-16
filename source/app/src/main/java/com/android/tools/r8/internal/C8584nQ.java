package com.android.tools.r8.internal;

public final class C8584nQ {

    public final C6129Wd f50954a;

    public C8584nQ(C6129Wd c6129Wd) {
        this.f50954a = c6129Wd;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C8584nQ) && GJ.a(this.f50954a, ((C8584nQ) obj).f50954a);
    }

    public final int hashCode() {
        C6129Wd c6129Wd = this.f50954a;
        c6129Wd.getClass();
        return AbstractC10410yL.a(c6129Wd).hashCode();
    }

    public final String toString() {
        C6129Wd c6129Wd = this.f50954a;
        GJ.c(c6129Wd, "<this>");
        Class a10 = c6129Wd.a();
        GJ.a((Object) a10, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return a10.getName();
    }
}
