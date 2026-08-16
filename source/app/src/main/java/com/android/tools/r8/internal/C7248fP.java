package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Predicate;

public final class C7248fP {

    public static final C7248fP f47961c;

    public static final C7248fP f47962d;

    public static final boolean f47963e = true;

    public final boolean f47964a;

    public final AbstractC7552hC f47965b;

    static {
        C6915dP c6915dP = C6915dP.f47396b;
        int i10 = AbstractC7552hC.f48487c;
        f47961c = new C7248fP(new C5920Sm0(c6915dP), false);
        f47962d = new C7248fP(new C5920Sm0(C6915dP.a(C9917vP.a(""))), true);
    }

    public C7248fP(AbstractC7552hC abstractC7552hC, boolean z10) {
        boolean z11 = f47963e;
        if (!z11 && abstractC7552hC.isEmpty()) {
            throw new AssertionError();
        }
        if (!z11 && z10 && !abstractC7552hC.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C6915dP) obj).b();
            }
        })) {
            throw new AssertionError();
        }
        this.f47964a = z10;
        this.f47965b = abstractC7552hC;
    }

    public static C7248fP a(String str) {
        if (str.isEmpty()) {
            return f47962d;
        }
        int length = str.length();
        C7081eP c7081eP = new C7081eP();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) == '.') {
                if (i10 != i11) {
                    c7081eP.a(C6915dP.a(C9917vP.a(str.substring(i10, i11))));
                    i10 = i11 + 1;
                } else {
                    throw new FN("Invalid package string: " + str + "'");
                }
            }
        }
        if (i10 != length) {
            c7081eP.a(C6915dP.a(C9917vP.a(str.substring(i10, length))));
            return c7081eP.a();
        }
        throw new FN("Invalid package string: '" + str + "'");
    }

    public final boolean b() {
        return this.f47965b.size() == 1 && !((C6915dP) this.f47965b.get(0)).c();
    }

    public final boolean c() {
        if (this.f47965b.size() != 1) {
            return false;
        }
        C6915dP c6915dP = (C6915dP) this.f47965b.get(0);
        if (!c6915dP.c()) {
            return false;
        }
        C9917vP a10 = c6915dP.a();
        return a10.c() && a10.f53091a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7248fP)) {
            return false;
        }
        C7248fP c7248fP = (C7248fP) obj;
        return this.f47964a == c7248fP.f47964a && this.f47965b.equals(c7248fP.f47965b);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f47964a), this.f47965b);
    }

    public final String a() {
        if (this.f47964a) {
            if (c()) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < this.f47965b.size(); i10++) {
                C6915dP c6915dP = (C6915dP) this.f47965b.get(i10);
                if (i10 > 0) {
                    sb2.append('.');
                }
                sb2.append(c6915dP.a().f53091a);
            }
            return sb2.toString();
        }
        throw new FN("Invalid attempt to get exact from inexact package pattern");
    }
}
