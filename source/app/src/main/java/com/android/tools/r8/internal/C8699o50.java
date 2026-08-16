package com.android.tools.r8.internal;

import org.apache.commons.math3.geometry.VectorFormat;

public class C8699o50<T, S> {

    public Object f51166a;

    public Object f51167b;

    public C8699o50(T t10, S s10) {
        this.f51166a = t10;
        this.f51167b = s10;
    }

    public T a() {
        return (T) this.f51166a;
    }

    public S b() {
        return (S) this.f51167b;
    }

    public final boolean equals(Object obj) {
        throw new C5417Jv0("Pair does not want to support equality!");
    }

    public final int hashCode() {
        throw new C5417Jv0("Pair does not want to support hashing!");
    }

    public final String toString() {
        return "Pair{" + this.f51166a + ", " + this.f51167b + VectorFormat.DEFAULT_SUFFIX;
    }

    public static <T, S> C8699o50<T, S> a(T t10, S s10) {
        return new C8699o50<>(t10, s10);
    }
}
