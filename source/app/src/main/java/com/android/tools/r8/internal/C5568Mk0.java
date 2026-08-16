package com.android.tools.r8.internal;

public class C5568Mk0 {

    public static final boolean f42376b = true;

    public final StringBuilder f42377a;

    public C5568Mk0(StringBuilder sb2) {
        this.f42377a = sb2;
    }

    public C5568Mk0 a(boolean z10) {
        return this;
    }

    public C5568Mk0 b(String str) {
        this.f42377a.append(str);
        return this;
    }

    public C5568Mk0 c() {
        return b(ve.j.f121589a);
    }

    public void d() {
        b("*");
    }

    public C5568Mk0 e() {
        return b("***");
    }

    public final C5568Mk0 a(String str) {
        boolean z10 = f42376b;
        if (!z10 && str.contains("*")) {
            throw new AssertionError();
        }
        if (!z10 && str.contains("(...)")) {
            throw new AssertionError();
        }
        if (z10 || !str.contains(ve.j.f121589a)) {
            return b(str);
        }
        throw new AssertionError();
    }

    public C5568Mk0 b() {
        return b("**");
    }

    public C5568Mk0 a() {
        return b("(...)");
    }
}
