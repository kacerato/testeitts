package com.android.tools.r8.internal;

public final class C9835uv {

    public final C4990Cl f52983a;

    public final int f52984b;

    public C9835uv(C4990Cl c4990Cl, int i10) {
        this.f52983a = c4990Cl;
        this.f52984b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C9835uv)) {
            return false;
        }
        C9835uv c9835uv = (C9835uv) obj;
        return this.f52983a == c9835uv.f52983a && this.f52984b == c9835uv.f52984b;
    }

    public final int hashCode() {
        return (this.f52983a.hashCode() * 65535) + this.f52984b;
    }
}
