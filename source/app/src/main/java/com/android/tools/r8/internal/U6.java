package com.android.tools.r8.internal;

import java.util.function.BooleanSupplier;

public class U6 {

    public boolean f44671a;

    public boolean f44672b = false;

    public U6() {
    }

    public final void a(BooleanSupplier booleanSupplier) {
        if (c()) {
            c(booleanSupplier.getAsBoolean());
        }
    }

    public final void b(boolean z10) {
        c(z10 || this.f44671a);
    }

    public boolean c() {
        return !a();
    }

    public boolean d() {
        return a();
    }

    public void e() {
        c(true);
    }

    public void f() {
        c(false);
    }

    public final Boolean b() {
        boolean a10 = a();
        e();
        return Boolean.valueOf(a10);
    }

    public void c(boolean z10) {
        this.f44672b = true;
        this.f44671a = z10;
    }

    public U6(boolean z10) {
        c(z10);
    }

    public boolean a() {
        return this.f44671a;
    }

    public void a(boolean z10) {
        c(z10 && this.f44671a);
    }
}
