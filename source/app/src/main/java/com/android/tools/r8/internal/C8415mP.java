package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;

public final class C8415mP {

    public static final boolean f50282c = true;

    public final C7248fP f50283a;

    public final FP f50284b;

    public C8415mP(C7248fP c7248fP, FP fp) {
        boolean z10 = f50282c;
        if (!z10 && c7248fP == null) {
            throw new AssertionError();
        }
        if (!z10 && fp == null) {
            throw new AssertionError();
        }
        this.f50283a = c7248fP;
        this.f50284b = fp;
    }

    public static C8415mP a() {
        return new C8415mP(C7248fP.f47961c, FP.f40190b);
    }

    public static C8415mP b(String str) {
        if (!str.startsWith("L") && str.endsWith(";")) {
            throw new FN("Invalid class descriptor: " + str);
        }
        return a(str.substring(1, str.length() - 1).replace('/', '.'));
    }

    public final boolean c() {
        return this.f50283a.b() && this.f50284b.f40191a.b();
    }

    public final boolean d() {
        return this.f50283a.f47964a && this.f50284b.f40191a.c();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C8415mP.class == obj.getClass()) {
            C8415mP c8415mP = (C8415mP) obj;
            if (this.f50283a.equals(c8415mP.f50283a) && this.f50284b.equals(c8415mP.f50284b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f50283a.hashCode()), Integer.valueOf(this.f50284b.f40191a.hashCode()));
    }

    public final String toString() {
        C7248fP c7248fP = this.f50283a;
        return ((Object) c7248fP) + (c7248fP.c() ? "" : ".") + ((Object) this.f50284b);
    }

    public static C8415mP a(KeepSpecProtos.ClassNamePattern classNamePattern) {
        C7248fP c7248fP = C7248fP.f47961c;
        FP fp = FP.f40190b;
        boolean z10 = AbstractC8248lP.f49973a;
        if (!z10 && !c7248fP.b()) {
            throw new AssertionError();
        }
        if (classNamePattern.hasPackage()) {
            c7248fP = new C7081eP().a(classNamePattern.getPackage()).a();
        }
        if (!z10 && !C9917vP.f53090d.b()) {
            throw new AssertionError();
        }
        if (classNamePattern.hasUnqualifiedName()) {
            KeepSpecProtos.UnqualifiedNamePattern unqualifiedName = classNamePattern.getUnqualifiedName();
            C9917vP c9917vP = C9917vP.f53090d;
            if (!EP.f39847a && !c9917vP.b()) {
                throw new AssertionError();
            }
            if (unqualifiedName.hasName()) {
                c9917vP = C9917vP.a(unqualifiedName.getName());
            }
            if (!c9917vP.b()) {
                fp = new FP(c9917vP);
            }
        }
        return new C8415mP(c7248fP, fp);
    }

    public final String b() {
        if (d()) {
            return "L" + this.f50283a.a().replace('.', '/') + (this.f50283a.c() ? "" : "/") + this.f50284b.f40191a.f53091a + ";";
        }
        throw new FN("Attempt to obtain exact qualified type for inexact pattern");
    }

    public static C8415mP a(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == 0) {
            throw new FN("Unexpected '.' at index 0 in '" + str + "'");
        }
        if (lastIndexOf > 0) {
            C7248fP c7248fP = C7248fP.f47961c;
            FP fp = FP.f40190b;
            return new C8415mP(C7248fP.a(str.substring(0, lastIndexOf)), new FP(C9917vP.a(str.substring(lastIndexOf + 1))));
        }
        C7248fP c7248fP2 = C7248fP.f47961c;
        FP fp2 = FP.f40190b;
        return new C8415mP(C7248fP.f47962d, new FP(C9917vP.a(str)));
    }

    public final void a(Consumer consumer) {
        if (c()) {
            return;
        }
        KeepSpecProtos.ClassNamePattern.Builder newBuilder = KeepSpecProtos.ClassNamePattern.newBuilder();
        C7248fP c7248fP = this.f50283a;
        c7248fP.getClass();
        KeepSpecProtos.PackagePattern.Builder newBuilder2 = KeepSpecProtos.PackagePattern.newBuilder();
        if (!c7248fP.b()) {
            for (C6915dP c6915dP : c7248fP.f47965b) {
                c6915dP.getClass();
                KeepSpecProtos.PackageComponentPattern.Builder newBuilder3 = KeepSpecProtos.PackageComponentPattern.newBuilder();
                if (c6915dP.c()) {
                    newBuilder3.setSingleComponent(c6915dP.f47399a.a());
                }
                newBuilder2.addComponents(newBuilder3);
            }
        }
        KeepSpecProtos.ClassNamePattern.Builder builder = newBuilder.setPackage(newBuilder2);
        FP fp = this.f50284b;
        fp.getClass();
        builder.setUnqualifiedName(KeepSpecProtos.UnqualifiedNamePattern.newBuilder().setName(fp.f40191a.a()));
        consumer.accept(newBuilder);
    }
}
