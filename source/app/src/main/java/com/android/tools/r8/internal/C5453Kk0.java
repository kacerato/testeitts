package com.android.tools.r8.internal;

import java.util.function.Supplier;

public final class C5453Kk0 extends C5568Mk0 {

    public final Supplier f41750c;

    public final StringBuilder f41751d;

    public C5453Kk0(StringBuilder sb2, Supplier supplier) {
        super(sb2);
        this.f41751d = new StringBuilder();
        this.f41750c = supplier;
    }

    @Override
    public final C5568Mk0 a() {
        return c("(...)");
    }

    @Override
    public final C5568Mk0 b(String str) {
        this.f41751d.append(str);
        this.f42377a.append(str);
        return this;
    }

    public final C5453Kk0 c(String str) {
        StringBuilder sb2 = this.f41751d;
        sb2.append('<');
        sb2.append(this.f41750c.get());
        sb2.append('>');
        this.f42377a.append(str);
        return this;
    }

    @Override
    public final void d() {
        c("*");
    }

    @Override
    public final C5568Mk0 e() {
        return c("***");
    }

    @Override
    public final C5568Mk0 a(boolean z10) {
        return z10 ? this : new C5511Lk0(this);
    }

    @Override
    public final C5568Mk0 b() {
        return c("**");
    }

    @Override
    public final C5568Mk0 c() {
        return c(ve.j.f121589a);
    }
}
