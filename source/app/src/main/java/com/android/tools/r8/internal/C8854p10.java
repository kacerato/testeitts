package com.android.tools.r8.internal;

public class C8854p10 {

    public static final C8854p10 f51409a = new C8854p10();

    public static final C8854p10 f51410b = new C8854p10();

    public static final C8854p10 f51411c = new C8854p10();

    public static final C8854p10 f51412d = new C8854p10();

    public static C8854p10 b() {
        return f51410b;
    }

    public static C8854p10 c() {
        return f51409a;
    }

    public static C8854p10 h() {
        return f51411c;
    }

    public final C8854p10 a(C8854p10 c8854p10) {
        C8854p10 c8854p102 = f51412d;
        return this == c8854p102 ? c8854p10 : (c8854p10 == c8854p102 || this == c8854p10) ? this : f51411c;
    }

    public boolean d() {
        return this == f51410b;
    }

    public boolean e() {
        return this == f51409a;
    }

    public boolean f() {
        return this == f51411c;
    }

    public final boolean g() {
        return f() || e();
    }

    public final String toString() {
        if (this == f51411c) {
            return "@Nullable";
        }
        if (this == f51409a) {
            return "@Null";
        }
        if (this == f51410b) {
            return "@NotNull";
        }
        if (this == f51412d) {
            return "@Bottom";
        }
        throw new C5417Jv0("Unknown Nullability.");
    }

    public static C8854p10 a() {
        return f51412d;
    }
}
